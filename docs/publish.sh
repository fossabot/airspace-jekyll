#!/bin/bash

SELF=`basename $0`
SOURCE_BRANCH="master"
DEST_BRANCH="gh-pages"
TMP_DIR="_site"

git checkout $SOURCE_BRANCH
jekyll build
echo "git pushing to gh-pages"
git push origin --delete gh-pages
git subtree push --prefix $TMP_DIR origin gh-pages