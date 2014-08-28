module.exports = (grunt) ->
    require('load-grunt-tasks')(grunt);

    grunt.initConfig
        dirs:
            tests: 'tests'

        mochaTest:
            options:
                reporter: 'spec'

            test:
                src     : '<%= dirs.tests %>/**/*.coffee'
                require : 'should'

    grunt.registerTask 'default', ['test']
    grunt.registerTask 'test', ['mochaTest']
