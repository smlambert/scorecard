

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
    PREFIX=$3
    DIR=$(pwd) 
    echo "Repo is  $REPO"  
    rm -rf $REPONAME
    git init $REPONAME
    cd  $REPONAME
    echo "Getting Tags for $REPONAME"
    git config extensions.partialClone true
    git remote add origin https://github.com/adoptium/$REPONAME
    git fetch --filter=blob:none --tags --depth=1 origin   2>&1 | cat > /dev/null  
    git log --tags --simplify-by-decoration --pretty="format:%ci %d" > ../${PREFIX}$TAG_INFO
    TAG_DATES=../${PREFIX}$TAG_INFO-ga-tag-dates 
    rm -rf $TAG_DATES 
    grep "\-ga" ../${PREFIX}$TAG_INFO | \
     cut -d "(" -f 2 | cut -d "," -f 2 | cut -d ":" -f 2 | sed "s/)//" | grep -v "ga_adopt" |  xargs -n1 $DIR/../get-tag-date.sh >> $TAG_DATES
    cd .. 
    git config extensions.partialClone false
    #rm -rf $REPONAME 
}

if [ $VERSION == 8 ]
then
    REPONAME=aarch32-jdk8u
    getrepo $REPONAME https://github.com/adoptium/$REPONAME  "aarch32-jdk8u-"
fi
REPONAME=jdk${VERSION}u  
getrepo $REPONAME https://github.com/adoptium/$REPONAME 

 
echo 
echo "Release data is in $RELEASE_INFO"
echo "tag data is in $TAG_INFO"
if [ $VERSION == 8 ]
then
     echo "JDK 8 special extra is ../aarch32-jdk8u-$TAG_INFO"
fi 
