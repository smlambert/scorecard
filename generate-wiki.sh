#!/usr/bin/env bash
#
# generate-wiki.sh
#
# Reads release-stats.md and an existing wiki page, then writes a merged
# Adoptium-Release-Scorecards.md that:
#   - Groups individual JDK tag blocks into quarterly sections (Jan/Mar/Apr/Jul/Sep/Oct)
#   - Computes Golf Score columns for each quarter from the Target/Actual data
#   - Preserves existing human-written retrospective paragraphs from the wiki
#   - Adds a placeholder retrospective for any newly seen quarter
#   - Marks the current (most-recent) quarter as "WIP" until it appears complete
#
# Usage:
#   ./generate-wiki.sh release-stats.md existing-wiki.md output-wiki.md
#
# Requirements: bash 4+ (associative arrays), awk, grep, sed (GNU coreutils).
#   The GitHub Actions ubuntu-latest runner satisfies all requirements.
#   macOS ships bash 3.2; run under 'bash' from homebrew or inside the workflow.
#
# NOTE on Golf Score numbers vs. historical wiki values:
#   The Adoptium releases API (get-data.sh) fetches only the 10 most recent
#   releases per JDK version (page_size=10).  Quarters that have scrolled off
#   the API window will show fewer products than the original manual count.
#   Golf Score values for recent quarters (within the last ~10 releases per
#   version) will be accurate.  Historical rows beyond that window are
#   preserved verbatim from the existing wiki page.

set -euo pipefail

STATS_FILE="${1:-release-stats.md}"
EXISTING_WIKI="${2:-}"
OUTPUT_FILE="${3:-Adoptium-Release-Scorecards.md}"

# ---------------------------------------------------------------------------
# Helper: map a month number to the release quarter label used in the wiki
# Adoptium releases in Jan, Mar/Apr (feature), Jul, Sep (feature), Oct
# We bucket by the GA tag date month:
#   1        -> Jan
#   3        -> Mar
#   4        -> Apr
#   7        -> Jul
#   9        -> Sep
#   10       -> Oct
# Any other month falls into the nearest quarter name for display purposes.
# ---------------------------------------------------------------------------
month_to_quarter() {
    local month=$1
    case $month in
        01|1)  echo "Jan" ;;
        02|2)  echo "Jan" ;;   # rare; group with Jan
        03|3)  echo "Mar" ;;
        04|4)  echo "Apr" ;;
        05|5)  echo "Apr" ;;   # late Apr releases
        06|6)  echo "Jul" ;;   # early Jul releases
        07|7)  echo "Jul" ;;
        08|8)  echo "Sep" ;;   # early Sep feature releases
        09|9)  echo "Sep" ;;
        10|10) echo "Oct" ;;
        11|11) echo "Oct" ;;   # late Oct releases
        12|12) echo "Jan" ;;   # late-year -> next Jan group
        *)     echo "Unknown" ;;
    esac
}

# ---------------------------------------------------------------------------
# Parse release-stats.md into an associative structure.
# For each <details> block we capture:
#   - The GA tag name (from the summary line)
#   - The full raw block content (tag header table + platform table)
#   - The release date of the adopt tag (first date in the platform table,
#     used to determine which quarter this tag belongs to)
#   - Per-platform target and actual days (for Golf Score computation)
# ---------------------------------------------------------------------------

# Arrays indexed by sequential block number
declare -a BLOCK_GA_TAG=()       # e.g. jdk8u492-ga
declare -a BLOCK_QUARTER=()      # e.g. "Apr 2026"
declare -a BLOCK_CONTENT=()      # raw Markdown tables for this block
declare -a BLOCK_OVER=()         # total days over par for this block
declare -a BLOCK_UNDER=()        # total days under par for this block
declare -a BLOCK_PRODUCTS=()     # total platform count for this block

block_idx=0
in_block=0
current_content=""
current_ga_tag=""
current_over=0
current_under=0
current_products=0
current_quarter=""

while IFS= read -r line; do
    # Skip get-data.sh progress noise (belt-and-suspenders in case stderr
    # redirect was not in effect for an older run of release-stats.md)
    if [[ "$line" =~ ^(Processing:|In\ JDK,|Fetching|Repo\ is|Initialized|Getting\ Tags|Release\ data|tag\ data|JDK\ 8\ special) ]]; then
        continue
    fi

    # Detect start of a details block
    if [[ "$line" =~ ^\<details\>\<summary\>Release\ tag:\ (.+)\</summary\> ]]; then
        current_ga_tag="${BASH_REMATCH[1]}"
        in_block=1
        current_content=""
        current_over=0
        current_under=0
        current_products=0
        current_quarter=""
        continue
    fi

    # Detect end of a details block
    if [[ $in_block -eq 1 && "$line" == "</details>" ]]; then
        BLOCK_GA_TAG[$block_idx]="$current_ga_tag"
        BLOCK_QUARTER[$block_idx]="$current_quarter"
        BLOCK_CONTENT[$block_idx]="$current_content"
        BLOCK_OVER[$block_idx]=$current_over
        BLOCK_UNDER[$block_idx]=$current_under
        BLOCK_PRODUCTS[$block_idx]=$current_products
        (( block_idx++ ))
        in_block=0
        continue
    fi

    if [[ $in_block -eq 1 ]]; then
        # Accumulate content
        current_content+="$line"$'\n'

        # Parse platform data rows to compute Golf Score components.
        # A platform row looks like:
        #   |        x64|        linux |  05-04-2026 |              2/11 |         No |  ...
        # The Target/Actual field is column 4 (1-based).
        if [[ "$line" =~ ^\|[[:space:]]+[a-z0-9_]+\|[[:space:]]+ && "$line" =~ [0-9]+/[0-9]+ ]]; then
            # Extract the target/actual field — format is "TARGET/ACTUAL"
            ta=$(echo "$line" | awk -F'|' '{gsub(/ /,"",$4); print $4}')
            if [[ "$ta" =~ ^([0-9]+)/([0-9]+)$ ]]; then
                target="${BASH_REMATCH[1]}"
                actual="${BASH_REMATCH[2]}"
                delta=$(( actual - target ))
                if (( delta > 0 )); then
                    (( current_over += delta ))
                elif (( delta < 0 )); then
                    (( current_under += -delta ))
                fi
                (( current_products++ ))

                # Derive the quarter from the release date (column 3: MM-DD-YYYY)
                if [[ -z "$current_quarter" ]]; then
                    rel_date=$(echo "$line" | awk -F'|' '{gsub(/ /,"",$3); print $3}')
                    if [[ "$rel_date" =~ ^([0-9]{2})-[0-9]{2}-([0-9]{4})$ ]]; then
                        mm="${BASH_REMATCH[1]}"
                        yyyy="${BASH_REMATCH[2]}"
                        qname=$(month_to_quarter "$mm")
                        current_quarter="$qname $yyyy"
                    fi
                fi
            fi
        fi
    fi
done < "$STATS_FILE"

# ---------------------------------------------------------------------------
# Group blocks by quarter, preserving the order they appear in release-stats.md
# (most recent first, since the API returns newest first).
# We build an ordered list of unique quarters and a mapping quarter->block indices.
# ---------------------------------------------------------------------------
declare -a QUARTERS_ORDERED=()
declare -A QUARTER_BLOCKS=()   # quarter -> space-separated block indices

for (( i=0; i<block_idx; i++ )); do
    q="${BLOCK_QUARTER[$i]}"
    [[ -z "$q" ]] && continue
    if [[ -z "${QUARTER_BLOCKS[$q]+set}" ]]; then
        QUARTERS_ORDERED+=("$q")
        QUARTER_BLOCKS[$q]="$i"
    else
        QUARTER_BLOCKS[$q]+=" $i"
    fi
done

# ---------------------------------------------------------------------------
# Compute per-quarter Golf Score totals
# ---------------------------------------------------------------------------
declare -A Q_OVER=()
declare -A Q_UNDER=()
declare -A Q_PRODUCTS=()

for q in "${QUARTERS_ORDERED[@]}"; do
    Q_OVER[$q]=0
    Q_UNDER[$q]=0
    Q_PRODUCTS[$q]=0
    for i in ${QUARTER_BLOCKS[$q]}; do
        (( Q_OVER[$q]  += BLOCK_OVER[$i] ))
        (( Q_UNDER[$q] += BLOCK_UNDER[$i] ))
        (( Q_PRODUCTS[$q] += BLOCK_PRODUCTS[$i] ))
    done
done

# ---------------------------------------------------------------------------
# Load existing wiki so we can preserve human-written retrospective paragraphs.
# We extract the text between <details><summary>QUARTER</summary> and the
# first <!-- SCORECARD-DATA-START --> sentinel (or the first table/--- line
# if no sentinel exists yet — this handles the current manual wiki).
# ---------------------------------------------------------------------------
declare -A EXISTING_NARRATIVE=()   # quarter label -> narrative text
declare -A EXISTING_GOLF_NOTES=()  # preserve any annotation on a golf score row

if [[ -n "$EXISTING_WIKI" && -f "$EXISTING_WIKI" ]]; then
    current_narr_quarter=""
    narrative_lines=""
    in_narr=0

    while IFS= read -r line; do
        # Detect quarterly section header (handles both "WIP Month Year" and "Month Year")
        if [[ "$line" =~ ^\<details\>\<summary\>(WIP\ )?([A-Za-z]+\ [0-9]{4})\</summary\> ]]; then
            current_narr_quarter="${BASH_REMATCH[2]}"
            narrative_lines=""
            in_narr=1
            continue
        fi

        if [[ $in_narr -eq 1 ]]; then
            # Stop collecting narrative when we hit the data sentinel,
            # a table row, a horizontal rule that precedes data, or end of block
            if [[ "$line" == "<!-- SCORECARD-DATA-START -->" \
               || "$line" =~ ^\|[[:space:]]*(Tag|Platform|---|---)[[:space:]]*\| \
               || "$line" == "</details>" ]]; then
                # Save what we collected (trimming leading/trailing blank lines)
                trimmed=$(echo "$narrative_lines" | sed '/./,$!d' | sed -e :a -e '/^\n*$/{$d;N;ba}')
                EXISTING_NARRATIVE[$current_narr_quarter]="$trimmed"
                in_narr=0
                current_narr_quarter=""
                narrative_lines=""
                continue
            fi
            narrative_lines+="$line"$'\n'
        fi

        # Preserve any special annotation text on golf score rows (e.g. "best score")
        if [[ "$line" =~ ^\|[[:space:]]*([A-Za-z]+[[:space:]]+[0-9]{4})[[:space:]]*\| ]]; then
            row_q="${BASH_REMATCH[1]}"
            # Capture anything in parentheses as an annotation
            annotation=$(echo "$line" | grep -oP '\([^)]+\)' | head -1 || true)
            if [[ -n "$annotation" ]]; then
                EXISTING_GOLF_NOTES[$row_q]="$annotation"
            fi
        fi
    done < "$EXISTING_WIKI"
fi

# ---------------------------------------------------------------------------
# Determine which quarter is "WIP" — the most recent one in the data.
# ---------------------------------------------------------------------------
WIP_QUARTER="${QUARTERS_ORDERED[0]:-}"

# ---------------------------------------------------------------------------
# Write the output wiki page
# ---------------------------------------------------------------------------
{
# ---- Static page header (preserved verbatim from existing wiki or hardcoded) ----
cat << 'HEADER'
### Scorecards for Past Releases

Scorecards are calculated in an automated way using Github and Adoptium API calls (as opposed to the manual tracking which used the manual launch of the pipeline as the starting time rather than when the tag was available in our GitHub mirror and manual tracking also discounted weekends).

Primary platforms target is to release within  **2 days**, Secondary platforms target is to release within **7 days**.

---

<details>
<summary> Retrospective 'Golf Score' - Compare & Track Progress Across All Releases</summary>

---

What does 'par' mean?  One definition is the amount taken as an average or norm, an accepted standard.  The targets we set for ourselves, 2 days and 7 days then are our average or norm that we are trying to beat.  _Total Days over Par_ is the sum of days past the target it took to complete the entire release, the smaller the number, the better.  _Total Days under Par_ is the sum of the days we were early to release platforms and versions ahead of the target for the release, the bigger, the better.  Combining the two, we can then create a succinct metric, 'Days Over minus Days Under' which, and just like a golf score where **the lower the number, the better we did**.

| Release | Total Products released | Total Days Over Par | Total Days Under Par | Golf Score (Days Over minus Days Under) | Avg Golf Score Per Product |
| --- | ---- | --- | --- | --- | --- |
HEADER

# ---- Golf Score table rows — computed quarters first, then historical rows ----
# Build a set of quarters we have data for
declare -A COMPUTED_QUARTERS=()
for q in "${QUARTERS_ORDERED[@]}"; do
    COMPUTED_QUARTERS[$q]=1
done

# Emit a row for every quarter we have computed data for
for q in "${QUARTERS_ORDERED[@]}"; do
    over=${Q_OVER[$q]}
    under=${Q_UNDER[$q]}
    products=${Q_PRODUCTS[$q]}
    golf=$(( over - under ))
    if (( products > 0 )); then
        # Use awk for float division
        avg=$(awk "BEGIN {printf \"%.3f\", $golf/$products}")
    else
        avg="--"
    fi
    annotation="${EXISTING_GOLF_NOTES[$q]:-}"
    golf_display="$golf"
    [[ -n "$annotation" ]] && golf_display="$golf $annotation"

    if [[ "$q" == "$WIP_QUARTER" ]]; then
        echo "| WIP $q | $products | $over | $under | $golf_display | $avg |"
    else
        echo "| $q | $products | $over | $under | $golf_display | $avg |"
    fi
done

# Emit historical rows from the existing wiki that are NOT in our computed set
if [[ -n "$EXISTING_WIKI" && -f "$EXISTING_WIKI" ]]; then
    in_golf_table=0
    while IFS= read -r line; do
        if [[ "$line" =~ "| Release | Total Products" ]]; then
            in_golf_table=1
            continue
        fi
        if [[ $in_golf_table -eq 1 ]]; then
            # End of table
            [[ ! "$line" =~ ^\| ]] && { in_golf_table=0; continue; }
            # Skip header separator row
            [[ "$line" =~ ^\|[[:space:]]*---[[:space:]]*\| ]] && continue
            # Extract quarter label from first column
            row_q=$(echo "$line" | awk -F'|' '{gsub(/^[[:space:]]+|[[:space:]]+$/,"",$2); print $2}')
            # Strip any WIP prefix for lookup
            row_q_clean="${row_q#WIP }"
            # Only emit if NOT a computed quarter
            if [[ -z "${COMPUTED_QUARTERS[$row_q_clean]+set}" ]]; then
                echo "$line"
            fi
        fi
    done < "$EXISTING_WIKI"
fi

cat << 'GOLF_FOOTER'

_Days Over minus Days Under_ measure, is a generalized measure of how a release went, consider it our 'golf score', the smaller the better.  Large positive numbers indicate that the release did not go smoothly.  Negative numbers indicate a smoother release period.  If the overall number becomes sufficiently small (an impressively negative number) consistently for several release periods, it may indicate that it is time to adjust the targets to be harder to achieve (instead of 2 days, move to 1 day, instead of 7 move to 5, and so forth).

</details>

---
GOLF_FOOTER

# ---- Quarterly detail sections ----
for q in "${QUARTERS_ORDERED[@]}"; do
    # Section header
    if [[ "$q" == "$WIP_QUARTER" ]]; then
        echo "<details><summary>WIP $q</summary>"
    else
        echo "<details><summary>$q</summary>"
    fi
    echo ""

    # Retrospective narrative — use existing text if present, otherwise placeholder
    if [[ -n "${EXISTING_NARRATIVE[$q]+set}" && -n "${EXISTING_NARRATIVE[$q]}" ]]; then
        echo "${EXISTING_NARRATIVE[$q]}"
    else
        echo "<!-- Retrospective: add a summary paragraph describing how this release period went. -->"
    fi
    echo ""

    # Data sentinel so future runs can reliably find the boundary
    echo "<!-- SCORECARD-DATA-START -->"
    echo ""

    # Emit each JDK version block for this quarter, separated by ---
    indices=(${QUARTER_BLOCKS[$q]})
    num_indices=${#indices[@]}
    for (( k=0; k<num_indices; k++ )); do
        i=${indices[$k]}
        echo "${BLOCK_CONTENT[$i]}"
        # Separator between versions, but not after the last one
        if (( k < num_indices - 1 )); then
            echo "---"
            echo ""
        fi
    done

    echo "</details>"
    echo ""
done

} > "$OUTPUT_FILE"

echo "Wiki page written to $OUTPUT_FILE" >&2
