

VERSION=$1 
if [ -z $VERSION ]; then 
    echo "Usage $0 version-number"
    exit 
fi 
RELEASE_INFO=data/releases${VERSION}.json
TAG_INFO=tag${VERSION}.txt
mkdir -p data

echo "Processing: $VERSION $RELEASE_TAG"
echo "In JDK, caching tags and release information"
curl -s -X 'GET' \
  "https://api.adoptium.net/v3/assets/feature_releases/$VERSION/ga?heap_size=normal&image_type=jdk&jvm_impl=hotspot&page=0&page_size=10&project=jdk&sort_method=DEFAULT&sort_order=DESC&vendor=eclipse" \
  -H 'accept: application/json' > $RELEASE_INFO

echo "Fetching / Updating Git Repos"
cd data

function getrepo () { 
    REPONAME=$1
    REPO=$2
    DIR=$(pwd) 
    echo "Repo is  $REPO"  
    if [ -d "$DIR/$REPONAME" ] 
    then
        echo "Directory $DIR/$REPONAME exists. Running update"
        (cd $REPONAME; git pull)
    else  
        echo "Directory $DIR/$REPONAME missing. Running clone"
        git clone "$REPO" 
    fi 
}

if [ $VERSION == 8 ]
then
    REPONAME=aarch32-jdk8u
    getrepo $REPONAME https://github.com/adoptium/$REPONAME  
fi
REPONAME=jdk${VERSION}u  
getrepo $REPONAME https://github.com/adoptium/$REPONAME 

(cd $REPONAME; git log --tags --simplify-by-decoration --pretty="format:%ci %d" > ../$TAG_INFO)
if [ $VERSION == 8 ]
then
    (cd aarch32-jdk8u; git log --tags --simplify-by-decoration --pretty="format:%ci %d" >  ../aarch32-jdk8u-$TAG_INFO)
fi 
 
echo 
echo "Release data is in $RELEASE_INFO"
echo "tag data is in $TAG_INFO"
if [ $VERSION == 8 ]
then
     echo "JDK 8 special extra is ../aarch32-jdk8u-$TAG_INFO"
fi 