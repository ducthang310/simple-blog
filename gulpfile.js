
'use strict';

var gulp = require('gulp');
var sass = require('gulp-sass');
var sourceMaps = require('gulp-sourcemaps');
var autoPreFixer = require('gulp-autoprefixer');
var concat = require('gulp-concat');
var uglify = require('gulp-uglifyjs');

var resource = {
    src: {
        js: [
            "resources/assets/js/app.js"
        ],
        sass: [
            "resources/assets/sass/**/*.scss"
        ]
    },
    dest: {
        js: "public/assets/js",
        css: "public/assets/css"
    }
};
var sassOptions = {
    errLogToConsole: false,
    outputStyle: 'expanded' // nested, expanded, compact, compressed
};
var autoPreFixerOptions = {
    browsers: ['last 3 versions'],
    cascade: false
};

gulp.task('sass', function () {
    return gulp.src(resource.src.sass)
        .pipe(sourceMaps.init())
        .pipe(sass(sassOptions).on('error', sass.logError))
        .pipe(autoPreFixer(autoPreFixerOptions))
        .pipe(sourceMaps.write('./'))
        .pipe(gulp.dest(resource.dest.css));
});

gulp.task('scripts', function() {
    gulp.src(resource.src.js)
        .pipe(concat('app.js'))
        // .pipe(uglify('all.min.js', uglifyOptions))
        .pipe(gulp.dest(resource.dest.js))
});

gulp.task('watch', function () {
    gulp.watch([resource.src.sass], ['sass']);
    gulp.watch(resource.src.js, ['scripts']);
});
