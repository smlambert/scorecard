

DATE=$(git rev-parse $1 | xargs git cat-file -p | gawk '/^tagger/ { print strftime(PROCINFO["strftime"], $(NF-1)) }')

echo "$DATE , $1"