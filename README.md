# [gulp](https://github.com/wearefractal/gulp)-ng-classify
[![License][license-image]][license-url]
[![Version][version-image]][version-url]
[![Build Status][build-image]][build-url]
[![Dependency Status][dependencies-image]][dependencies-url]
> Convert CoffeeScript classes to [AngularJS](http://angularjs.org/) modules with [ng-classify](https://github.com/CaryLandholt/ng-classify)  
> Write less JavaScript.  Write less CoffeeScript.  Write less Angular.


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
	gulp.src('**/*.coffee')
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
Type: `Object`  
[ng-classify API](https://github.com/CaryLandholt/ng-classify#api)


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