#!/bin/sh

echo "Pushing updated HUGO site to GitHub."

git config user.email "travis@travis-ci.org"
git config user.name "Travis CI"
git add docs/* 
echo "Commit build $TRAVIS_BUILD_NUMBER"
git commit --allow-empty -m "Travis build: $TRAVIS_BUILD_NUMBER [ci skip]"
git push https://RyanFleck:${GH_TOKEN}@github.com/RyanFleck/hugo-test.git HEAD:master

exit 0
