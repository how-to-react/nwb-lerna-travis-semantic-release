module.exports = {
  type: 'react-app',
  karma: {
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
