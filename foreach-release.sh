 
VERSION=$1 
if [ -z $VERSION ]; then 
    echo "Usage $0 version-number"
    exit 
fi 
 
DOTHIS=$2 
if [ -z $DOTHIS ]; then 
    echo "Usage $0 version-number  commmand-to-do"
    exit 
fi 

./get-data.sh $VERSION
INDEX=0
RELEASE_INFO=data/releases${VERSION}.json  
LEN=$(cat $RELEASE_INFO | jq length) 
if [[ $VERSION == 8 ]]; then
    SPLIT_AT="-"
else 
    SPLIT_AT="+"
fi   
while [ "$LEN" != "$INDEX" ] 
do   
    RELEASE=$(cat $RELEASE_INFO | jq ".[$INDEX].binaries")   
    RTAG=$(echo $RELEASE | jq -r ".[0].scm_ref" | cut -d "$SPLIT_AT" -f 1)   
    RTAG="$RTAG-ga"  
    ./$DOTHIS "$RELEASE" "$RTAG"
    let INDEX++    
done  



