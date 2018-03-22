var gulp = require('gulp');
sass = require('gulp-sass'),
    autoprefixer = require('gulp-autoprefixer'),
    cmq = require('crlab-gulp-combine-media-queries'),
    sourcemaps = require('gulp-sourcemaps'),
    concat = require('gulp-concat'),
    uglify = require('gulp-uglify');

// Build
gulp.task('build', ['sass-comp', 'scripts-comp']);

// Process
gulp.task('process', ['sass', 'scripts'], function () {
    gulp.watch("./theme/default/stylesheet/**/*.scss", ['sass']);
    gulp.watch("./theme/default/js/**/*.js", ['scripts']);
    gulp.watch("./javascript/common.js", ['scripts']);
});

// Compile sass
gulp.task('sass', function () {
    var AUTOPREFIXER_BROWSERS = [
        'ie >= 10',
        'ie_mob >= 10',
        'ff >= 30',
        'chrome >= 34',
        'safari >= 7',
        'opera >= 23',
        'ios >= 7',
        'android >= 4.4',
        'bb >= 10'
    ];
    return gulp.src("./theme/default/stylesheet/style.scss")
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer(AUTOPREFIXER_BROWSERS))
        .pipe(sourcemaps.write('./'))
        .pipe(gulp.dest("./theme/default/stylesheet"));
});

// Concat js
gulp.task('scripts', function () {
    return gulp.src([
        './theme/default/js/plugins.js',
        './theme/default/js/scripts.js',
        './javascript/common.js'
    ])
        .pipe(concat('main-dist.js'))
        .pipe(gulp.dest('./theme/default/js/'));
});

// Build Tasks
gulp.task('sass-comp', function () {
    var AUTOPREFIXER_BROWSERS = [
        'ie >= 10',
        'ie_mob >= 10',
        'ff >= 30',
        'chrome >= 34',
        'safari >= 7',
        'opera >= 23',
        'ios >= 7',
        'android >= 4.4',
        'bb >= 10'
    ];

    return gulp.src("./theme/default/stylesheet/style.scss")
        .pipe(sourcemaps.init())
        .pipe(sass({outputStyle: 'compressed'}).on('error', sass.logError))
        // .pipe(cmq({log: true}))
        .pipe(autoprefixer(AUTOPREFIXER_BROWSERS))
        .pipe(sourcemaps.write('./'))
        .pipe(gulp.dest("./theme/default/stylesheet"));
});

gulp.task('scripts-comp', function () {
    return gulp.src([
        './theme/default/js/plugins.js',
        './theme/default/js/scripts.js',
        './javascript/common.js'
    ])
        .pipe(concat('main-dist.js'))
        .pipe(uglify({mangle: false}))
        .pipe(gulp.dest('./theme/default/js/'));
});

// Default
gulp.task('default', ['build']);