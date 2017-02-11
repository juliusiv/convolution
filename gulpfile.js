"use strict";

var gulp    = require("gulp");
var gulpElm = require("gulp-elm");


gulp.task("elm-init", gulpElm.init);


gulp.task("elm", ["elm-init"], function(){
  return gulp.src("src/elm/*.elm")
    .pipe(gulpElm())
    .pipe(gulp.dest("."));
});
