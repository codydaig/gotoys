#!/bin/sh

LOC="/Users/codydaig/Documents/git/2015-06-toy-problems/" #MUST HAVE TRAILING SLASH!
TEST="/Users/codydaig/Documents/git/toyproblems/"
TESTSRC="src.js"

cd $TEST$1

DEST=$LOC$1
DEST+='/'
DEST+=$1
DEST+='.js'

cp $TESTSRC $DEST

cd $LOC

FILE=$1
FILE+='.js'

git add "$1/$FILE"
git commit -m "$FILE completed"
git push origin master