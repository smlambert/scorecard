 
VERSION=$1 
if [ -z $VERSION ]; then 
    echo "Usage $0 version-number"
    exit 
fi 
./get-data.sh $VERSION
INDEX=0
RELEASE_INFO=data/releases${VERSION}.json  
LEN=$(cat $RELEASE_INFO | jq length)  
while [ "$LEN" != "$INDEX" ] 
do  
    RELEASE=$(cat $RELEASE_INFO | jq ".[$INDEX].binaries")   
    RTAG=$(echo $RELEASE | jq -r ".[0].scm_ref" | cut -d "-" -f 1)
    ./compute.sh "$VERSION"  $RTAG  
    let INDEX++    
done  



