# [gulp](https://github.com/wearefractal/gulp)-ng-classify  [![Package Version][package-image]][package-url] [![Build Status][build-image]][build-url] [![Dependency Status][dependencies-image]][dependencies-url]

> Convert CoffeeScript classes to [AngularJS](http://angularjs.org/) modules with [ng-classify](https://github.com/CaryLandholt/ng-classify)

## Table of Contents

* [Install](#install)
* [Examples](#examples)
    - [CoffeeScript](#coffeescript)
    - [JavaScript](#javascript)
* [API](#api)
* [Contributing](#contributing)

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

## Contributing

In lieu of a formal styleguide, take care to maintain the existing coding style.  Add unit tests for any new or changed functionality. Lint and test your code.

**Pull Requests are welcome!**

[package-url]: https://npmjs.org/package/gulp-ng-classify
[package-image]: https://badge.fury.io/js/gulp-ng-classify.png

[build-url]: http://travis-ci.org/CaryLandholt/gulp-ng-classify
[build-image]: https://secure.travis-ci.org/CaryLandholt/gulp-ng-classify.png

[dependencies-url]: https://david-dm.org/CaryLandholt/gulp-ng-classify
[dependencies-image]: https://david-dm.org/CaryLandholt/gulp-ng-classify.png?theme=shields.io