VERSION=$1
if [ -z $VERSION ]; then 
    echo "Usage $0 version-number tag-to-show" 
    exit 
fi  

SHOW_ONLY=$2
if [ -z $SHOW_ONLY ]; then 
    echo "Usage $0 version-number tag-to-show"  
    exit 
fi  

INDEX=0
while true 
do 
    RELEASE_INFO=data/releases${VERSION}.json 
    RELEASE=$(cat $RELEASE_INFO | jq ".[$INDEX].binaries")  
    if [ "$RELEASE" == null ] 
    then 
        break
    else
        RTAG=$(echo $RELEASE | jq -r ".[0].scm_ref")  
        TAG_INFO=data/tag${VERSION}.txt 
        if [ "$RTAG" == "$SHOW_ONLY" ]; then 
            TAGLINE=$(grep "$RTAG" $TAG_INFO | cut -d '(' -f 1)  
            if [ -z "$TAGLINE" ]
            then
                TAGDATE="(no matching tag found in repo )"
                break
            else
                TAGDATE=$(date -d "$TAGLINE")
            fi 
            printf "\nRelease tag: $RTAG on $TAGDATE\n"
            PINDEX=0
            PASS=0
            FAIL=0
            FORMAT="%10s %12s %11s %17s %10s\n"
            printf "$FORMAT" "Platform" "OS"  "Released" "Target/Actual(days)" "On-time" 
            while true 
            do   
                PLATFORM=$(echo $RELEASE | jq -r ".[$PINDEX].architecture")

                if [ "$PLATFORM" == null ] 
                then 
                    break
                else
                    OS=$(echo $RELEASE | jq -r ".[$PINDEX].os")
                    RTAG=$(echo $RELEASE | jq -r ".[$PINDEX].scm_ref")
                    DATE=$(echo $RELEASE | jq -r ".[$PINDEX].updated_at")
                    PDATE=$(date --date="$DATE" "+%m-%d-%Y" )                   
                    if [[ "${OS}" == @(windows|linux|mac) && $PLATFORM == "x64" ]]   
                    then
                        
                        TARGET=2
                    else
                        TARGET=7
                    fi  
                    DELTA=$(( ($(date --date="$DATE" +%s) - $(date --date="$TAGDATE" +%s) )/(60*60*24) )) 
                    if [ $DELTA -le $TARGET ]
                    then
                        let PASS++
                        MSG="Yes"
                    else
                        MSG="No"
                        let FAIL++
                    fi 
                    printf "$FORMAT" "$PLATFORM" "$OS"  "$PDATE" "$TARGET/$DELTA" "$MSG"
                fi 
                let PINDEX++
            done
            TOTAL=$(echo "$PASS+$FAIL" | bc )
            echo $TOTAL
            PERCENT_FAIL=$(echo "scale=0; $FAIL*100/$TOTAL" | bc) 
            PERCENT_PASS=$(echo "scale=0; $PASS*100/$TOTAL" | bc) 
            printf "On-Time %s(%s%%)  Late: %s(%s%%)\n" "$PASS" "$PERCENT_PASS" "$FAIL" "$PERCENT_FAIL"
        fi
    fi
    let INDEX++
done 
