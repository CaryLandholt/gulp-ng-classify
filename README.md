# [gulp](https://github.com/wearefractal/gulp)-ng-classify
[![License][license-image]][license-url]
[![Version][version-image]][version-url]
[![Build Status][build-image]][build-url]
[![Dependency Status][dependencies-image]][dependencies-url]
> Convert CoffeeScript classes to [AngularJS](http://angularjs.org/) modules with [ng-classify](https://github.com/CaryLandholt/ng-classify)  
> Write less JavaScript.  Write less CoffeeScript.  Write less Angular.
>
> Watch the [screencast](https://www.youtube.com/watch?v=28gUTu9vnB4)


## Install
Install with [npm](https://npmjs.org/package/gulp-ng-classify)
```bash
$ npm install gulp-ng-classify
```


## Usage


### CoffeeScript
```coffee
gulp = require 'gulp'
ngClassify = require 'gulp-ng-classify'

gulp.task 'default', ->
	gulp.src '**/*.coffee'
		.pipe ngClassify()
		.pipe gulp.dest 'dist'
```


### JavaScript


```javascript
var gulp = require('gulp');
var ngClassify = require('gulp-ng-classify');

gulp.task('default', function () {
	return gulp.src('**/*.coffee')
		.pipe(ngClassify())
		.pipe(gulp.dest('dist'));
});
```


## Table of Contents
* [Install](#install)
* [Usage](#usage)
	- [CoffeeScript](#coffeescript)
	- [JavaScript](#javascript)
* [API](#api)
* [Contributing](#contributing)
* [Changelog](#changelog)
* [License](#license)


## API
See the [ng-classify docs](https://github.com/CaryLandholt/ng-classify)


### ngClassify(options)


#### options
*Optional*  
Type: `Object` (see [ng-classify API](https://github.com/CaryLandholt/ng-classify#api)) or `Function` (see examples below)  
Default:  `undefined`  

Dynamically create options via the function callback.
The function takes in the file object and returns the options.
```coffee
gulp = require 'gulp'
ngClassify = require 'gulp-ng-classify'
 
gulp.task 'default', ->
	gulp.src '**/*.coffee'
		.pipe ngClassify (file) ->
			# use 'admin' as the appName if 'administrator' is found in the file path

			return if file.path.indexOf('administrator') isnt -1
				{appName: 'admin'}

			{appName: 'app'}
		.pipe gulp.dest 'dist'
```

```javascript
var gulp = require('gulp');
var ngClassify = require('gulp-ng-classify');

gulp.task('default', function () {
	return gulp.src('**/*.coffee')
		.pipe(ngClassify(function (file) {
			// use 'admin' as the appName if 'administrator' is found in the file path

			if (file.path.indexOf('administrator') !== -1) {
				return {appName: 'admin'};
			}

			return {appName: 'app'};
		}))
		.pipe(gulp.dest('dist'));
});
```


## Contributing
See [CONTRIBUTING.md](CONTRIBUTING.md)


## Changelog
See [CHANGELOG.md](CHANGELOG.md)


## License
See [LICENSE](LICENSE)


[build-image]:            http://img.shields.io/travis/CaryLandholt/gulp-ng-classify.svg?style=flat
[build-url]:              http://travis-ci.org/CaryLandholt/gulp-ng-classify

[dependencies-image]:     http://img.shields.io/gemnasium/CaryLandholt/gulp-ng-classify.svg?style=flat
[dependencies-url]:       https://gemnasium.com/CaryLandholt/gulp-ng-classify

[license-image]:          http://img.shields.io/badge/license-MIT-blue.svg?style=flat
[license-url]:            LICENSE

[version-image]:          http://img.shields.io/npm/v/gulp-ng-classify.svg?style=flat
[version-url]:            https://npmjs.org/package/gulp-ng-classify