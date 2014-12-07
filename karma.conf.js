// Karma configuration
// Generated on Fri Nov 14 2014 20:37:48 GMT-0500 (EST)

module.exports = function (config) {
  config.set({

    // base path that will be used to resolve all patterns (eg. files, exclude)
    basePath: '/home/it0a',


    // frameworks to use
    // available frameworks: https://npmjs.org/browse/keyword/karma-adapter
    frameworks: ['jasmine'],


    // list of files / patterns to load in the browser
    files: [
      'develop/streamlinx/SmartsToo2/web-app/js/lib/*.js',
      'bower_components/jasmine-jquery/lib/jasmine-jquery.js',
      'bower_components/jasmine-fixture/dist/jasmine-fixture.js',
      'develop/streamlinx/SmartsToo2/web-app/js/smartsToo/smartsToo.js',
      'develop/streamlinx/SmartsToo2/web-app/js/smartsToo/optimodal/optimodal.js',
      'develop/streamlinx/SmartsToo2/web-app/js/smartsToo/accounting/*.js',
      'develop/streamlinx/SmartsToo2/web-app/js/smartsToo/models/*.js',
      'develop/streamlinx/SmartsToo2/web-app/js/smartsToo/*.js',
      'develop/streamlinx/SmartsToo2/web-app/js/error/*.js',
      'develop/streamlinx/SmartsToo2/web-app/js/smartsToo/spec/*Spec.js',
      'develop/streamlinx/SmartsToo2/web-app/js/smartsToo/spec/models/*Spec.js'
    ],


    // list of files to exclude
    exclude: [],


    // preprocess matching files before serving them to the browser
    // available preprocessors: https://npmjs.org/browse/keyword/karma-preprocessor
    preprocessors: {
    },


    // test results reporter to use
    // possible values: 'dots', 'progress'
    // available reporters: https://npmjs.org/browse/keyword/karma-reporter
    reporters: ['progress'],


    // web server port
    port: 9876,


    // enable / disable colors in the output (reporters and logs)
    colors: true,


    // level of logging
    // possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO,


    // enable / disable watching file and executing tests whenever any file changes
    autoWatch: true,


    // start these browsers
    // available browser launchers: https://npmjs.org/browse/keyword/karma-launcher
    browsers: ['Firefox'],


    // Continuous Integration mode
    // if true, Karma captures browsers, runs the tests and exits
    singleRun: false
  });
};
