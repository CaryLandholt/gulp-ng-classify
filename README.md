# [gulp](https://github.com/wearefractal/gulp)-ng-classify [![Build Status](https://secure.travis-ci.org/CaryLandholt/gulp-ng-classify.png)](http://travis-ci.org/CaryLandholt/gulp-ng-classify)

> Convert CoffeeScript classes to [AngularJS](http://angularjs.org/) modules with [ng-classify](https://github.com/CaryLandholt/ng-classify)

[![NPM version](https://badge.fury.io/js/gulp-ng-classify.png)](http://badge.fury.io/js/gulp-ng-classify)
[![dependency status](https://david-dm.org/CaryLandholt/gulp-ng-classify.png)](https://david-dm.org/CaryLandholt/gulp-ng-classify)

## Table of Contents

* [Install](#install)
* [Examples](#examples)
    - [CoffeeScript](#coffeescript)
    - [JavaScript](#javascript)
* [API](#api)

## Install

Install with [npm](https://npmjs.org/package/gulp-ng-classify)

```shell
npm install --save-dev gulp-ng-classify
```

## Examples

### CoffeeScript
```coffee
gulp = require 'gulp'
ngClassify = require 'gulp-ng-classify'

gulp.task 'default', ->
	gulp.src 'foo.coffee'
		.pipe ngClassify()
		.pipe gulp.dest 'dist'
```

### JavaScript

```javascript
var gulp = require('gulp');
var ngClassify = require('gulp-ng-classify');

gulp.task('default', function () {
	gulp.src('foo.coffee')
		.pipe(ngClassify())
		.pipe(gulp.dest('dist'));
});
```

## API

See the [ng-classify docs](https://github.com/CaryLandholt/ng-classify)

### ngClassify(options)

#### options

Type: `Object`  
[ng-classify API](https://github.com/CaryLandholt/ng-classify#api)