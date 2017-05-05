# NWB Lerna Travis Semantic Release

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