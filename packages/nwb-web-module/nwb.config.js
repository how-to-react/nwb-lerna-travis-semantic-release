module.exports = {
  type: 'web-module',
  npm: {
    esModules: true,
    umd: false
  },
  karma: {
    reporters: ['coverage'],
    extra: {
      coverageReporter: {
        dir : 'coverage/',
        reporters: [
          {type: 'html', subdir: 'report-html'},
          {type: 'json', subdir: './', file: 'coverage.json'}
        ]
      }
    }
  }
};
