
VERSION=$1 
if [ -z $VERSION ]; then 
    echo "Usage $0 version-number"
    exit 
fi 
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



