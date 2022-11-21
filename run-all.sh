
for VERSION in 8 11 17 19
do 
    ./get-data.sh $VERSION
    INDEX=0
    RELEASE_INFO=data/releases${VERSION}.json 
    while true 
    do 
        RELEASE=$(cat $RELEASE_INFO | jq ".[$INDEX].binaries") 
        if [ "$RELEASE" == null ] 
        then
            break
        else 
            RTAG=$(echo $RELEASE | jq -r ".[0].scm_ref")
            ./compute.sh "$VERSION"  $RTAG 
        fi 
        let INDEX++
    done 
done



