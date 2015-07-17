#!/bin/sh

LOC="/Users/codydaig/Documents/git/2015-06-toy-problems/" #MUST HAVE TRAILING SLASH!
TEST="/Users/codydaig/Documents/git/toyproblems/"
TESTTEMPLATE="_template/"
TESTSRC="src.js"
TESTSPEC="spec.js"
TESTHTML="SpecRunner.html"

# Change the current working directory to the directory of the repository
cd $LOC

# Pull the changes from upstream
git pull upstream master

# make directory
cd $TEST
#mkdir $1

cp -r $LOC$1 $TEST

cd $TEST$1

var1=$1
var1+='.js'

mv $var1 $TESTSRC
cp $TEST$TESTTEMPLATE$TESTSPEC $TESTSPEC
cp $TEST$TESTTEMPLATE$TESTHTML $TESTHTML

open -a Sublime\ Text\ 2 .
open SpecRunner.html