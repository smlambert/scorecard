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
        RTAG=$(echo $RELEASE | jq -r ".[0].scm_ref" | cut -d "-" -f 1 )   
        RTAG="$RTAG-ga" 
        if [ "$RTAG" == "$SHOW_ONLY" ]; then  
            TAG_INFO=data/tag${VERSION}.txt 
            TAGLINE=$(grep "$RTAG" $TAG_INFO | cut -d '(' -f 1)  
            if [ -z "$TAGLINE" ]
            then
                TAGDATE="(no matching tag found in repo )"
                break
            else
                TAGDATE=$(date -d "$TAGLINE")
            fi 
            printf "\n\n<details><summary>Release tag: %s on %s </summary>\n\n" "$RTAG" "$TAGDATE" 
            PINDEX=0
            PASS=0
            FAIL=0
            FORMAT="| %10s| %12s | %11s | %17s | %10s | %25s|\n"
            printf "$FORMAT" "Platform" "OS"  "Released" "Target/Actual(days)" "On-time" "RTAG"
            printf "$FORMAT" "---" "---" "---" "---" "---" "---" 
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
                    if [[ "${OS}" == @(windows|linux|mac) && $PLATFORM == @(x64|aarch64) ]]   
                    then
                        TARGET=2
                        if [[ "${OS}" == @(windows) && $PLATFORM == "aarch64" ]]
                        then
                            TARGET=7 
                        fi
                    else
                        TARGET=7
                    fi
                    if [[ $VERSION == 8 && $OS == "arm" ]]
                    then
                        TAG_INFO=data/aarch32-jdk8u-tag${VERSION}.txt 
                        TAGLINE=$(grep "$RTAG" $TAG_INFO | cut -d '(' -f 1)  
                        if [ -z "$TAGLINE" ]
                        then
                            TAGDATE="(no matching tag found in repo )" 
                        else
                            TAGDATE=$(date -d "$TAGLINE")
                        fi 
                    echo
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
                    printf "$FORMAT" "$PLATFORM" "$OS"  "$PDATE" "$TARGET/$DELTA" "$MSG" "$RTAG"
                fi 
                let PINDEX++
            done
            TOTAL=$(echo "$PASS+$FAIL" | bc ) 
            PERCENT_FAIL=$(echo "scale=0; $FAIL*100/$TOTAL" | bc) 
            PERCENT_PASS=$(echo "scale=0; $PASS*100/$TOTAL" | bc) 
            printf "\nOn-Time %s(%s%%)  Late: %s(%s%%)\n" "$PASS" "$PERCENT_PASS" "$FAIL" "$PERCENT_FAIL"
            
            printf "\n\n</details>\n\n" 
        fi
    fi
    let INDEX++
done 
