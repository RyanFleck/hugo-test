#!/bin/sh

echo "Pushing updated HUGO site to GitHub."

setup_git() {
  git config user.email "travis@travis-ci.org"
  git config user.name "Travis CI"
  
  git remote rm origin
  git remote add origin https://Travis-CI:${GH_TOKEN}@github.com/RyanFleck/hugo-test.git
  git checkout master
}

commit_website_files() {
  git add .
  echo "Commit build $TRAVIS_BUILD_NUMBER"
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
  git push 
}

setup_git
commit_website_files

exit 0
