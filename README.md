# NWB Lerna Travis Semantic Release

[![Build Status](https://travis-ci.org/how-to-react/nwb-lerna-travis-semantic-release.svg?branch=master)](https://travis-ci.org/how-to-react/nwb-lerna-travis-semantic-release)
[![Coverage Status](https://coveralls.io/repos/github/how-to-react/nwb-lerna-travis-semantic-release/badge.svg?branch=master)](https://coveralls.io/github/how-to-react/nwb-lerna-travis-semantic-release?branch=master)


- Travis needs the details:
    - NPM_CONFIG_EMAIL 
    - NPM_CONFIG_USERNAME 
    - NPM_TOKEN 
    - GH_TOKEN 
    - RELEASE_GH_TOKEN
    - RELEASE_GH_USERNAME
- Pre-publish each package `npm publish --access public `
    - `lerna exec -- npm publish --access public` ?
- Don't forget coveralls
- Use the travis as examples, quite annoying really.
