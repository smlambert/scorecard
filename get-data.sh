
DIR=$(pwd) 

VERSION=$1 
if [ -z $VERSION ]; then 
    echo "Usage $0 version-number"
    exit 
fi 

echo "Processing: $VERSION $RELEASE_TAG"
RELEASE_INFO=data/releases${VERSION}.json
TAG_INFO=data/tag${VERSION}.txt

REPONAME=jdk${VERSION}u
REPO="https://github.com/adoptium/$REPONAME"
echo "Repo is  $REPO" 

if [ -d "$DIR/$REPONAME" ] 
then
    echo "Directory $DIR/$REPONAME exists. Running update"
    (cd $REPONAME; git pull)
else  
    echo "Directory $DIR/$REPONAME missing. Running clone"
    git clone "$REPO"
fi

echo "In JDK, caching tags and release information"
curl -s -X 'GET' \
  "https://api.adoptium.net/v3/assets/feature_releases/$VERSION/ga?heap_size=normal&image_type=jdk&jvm_impl=hotspot&page=0&page_size=10&project=jdk&sort_method=DEFAULT&sort_order=DESC&vendor=eclipse" \
  -H 'accept: application/json' > $RELEASE_INFO
 
 
(cd $REPONAME; git log --tags --simplify-by-decoration --pretty="format:%ci %d" > ../$TAG_INFO)

echo 
echo "Release data is in $RELEASE_INFO"
echo "tag data is in $TAG_INFO"