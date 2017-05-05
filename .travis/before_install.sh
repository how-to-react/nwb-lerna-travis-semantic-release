#!/bin/bash
set -e

echo "Installing NPM 2.0";
npm i -g npm@^2.0.0

echo "Installing code coverage and lerna tooling";
npm install codecov.io coveralls request lerna@2.0.0-rc.4

if [ "$TRAVIS_PULL_REQUEST" != "false" ]; then
  echo "Building a pull request"
  exit 0
fi

if [[ ${TRAVIS_BRANCH} != 'master' ]]; then
  echo "Building from $TRAVIS_BRANCH branch"
  exit 0
fi

if [[ ${TRAVIS_BRANCH} == 'master' ]]; then
  echo "Building from master"

  rm -rf .git
  git init
  git clean -dfx
  git remote add origin https://github.com/how-to-react/nwb-lerna-travis-semantic-release.git
  git fetch origin
  git clone https://github.com/${TRAVIS_REPO_SLUG}.git ${TRAVIS_REPO_SLUG}
  git checkout $TRAVIS_BRANCH

  echo "Username: ${RELEASE_GH_USERNAME}";

  git config credential.helper store
  echo "https://${RELEASE_GH_USERNAME}:${RELEASE_GH_TOKEN}@github.com/how-to-react/nwb-lerna-travis-semantic-release.git" > ~/.git-credentials


  echo "Token length ${#NPM_TOKEN}";
  npm config set //registry.npmjs.org/:_authToken=${NPM_TOKEN} -q

  echo "Github: ${RELEASE_GH_USERNAME} ${RELEASE_GH_EMAIL}"

  git config --global user.email ${RELEASE_GH_EMAIL}
  git config --global user.name ${RELEASE_GH_USERNAME}
  git config --global push.default simple


  echo "Fetching tags..."
  git fetch --tags
  git branch -u origin/${TRAVIS_BRANCH}
  git fsck --full #debug
  echo "npm whoami"
  npm whoami #debug
  echo "git config --list"
  git config --list #debug

  exit 0
fi