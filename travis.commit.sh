#!/bin/sh

echo "Pushing updated HUGO site to GitHub."

setup_git() {
  git config user.email "travis@travis-ci.org"
  git config user.name "Travis CI"
}

commit_website_files() {
  git add .
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  echo "Push files to master."
  git push origin HEAD:master
}

setup_git
commit_website_files
upload_files

exit 0
