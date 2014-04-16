# [gulp](https://github.com/wearefractal/gulp)-ng-classify [![Version][version-image]][version-url] [![Build Status][build-image]][build-url] [![Dependency Status][dependencies-image]][dependencies-url] [![devDependency Status][dev-dependencies-image]][dev-dependencies-url]
> Convert CoffeeScript classes to [AngularJS](http://angularjs.org/) modules with [ng-classify](https://github.com/CaryLandholt/ng-classify)


## Table of Contents
* [Installing](#installing)
* [Examples](#examples)
	- [CoffeeScript](#coffeescript)
	- [JavaScript](#javascript)
* [API](#api)
* [Contributing](#contributing)
* [Changelog](#changelog)
* [License](#license)


## Installing
Install with [npm](https://npmjs.org/package/gulp-ng-classify)
```bash
$ npm install --save-dev gulp-ng-classify
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
See [CONTRIBUTING.md](CONTRIBUTING.md)


## Changelog
See [CHANGELOG.md](CHANGELOG.md)


## License
See [LICENSE](LICENSE)


[build-image]:            https://secure.travis-ci.org/CaryLandholt/gulp-ng-classify.svg
[build-url]:              http://travis-ci.org/CaryLandholt/gulp-ng-classify

[dependencies-image]:     https://david-dm.org/CaryLandholt/gulp-ng-classify.svg
[dependencies-url]:       https://david-dm.org/CaryLandholt/gulp-ng-classify

[dev-dependencies-image]: https://david-dm.org/CaryLandholt/gulp-ng-classify/dev-status.svg
[dev-dependencies-url]:   https://david-dm.org/CaryLandholt/gulp-ng-classify#info=devDependencies

[version-image]:          https://badge.fury.io/js/gulp-ng-classify.svg
[version-url]:            https://npmjs.org/package/gulp-ng-classify