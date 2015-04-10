es         = require 'event-stream'
ngClassify = require 'ng-classify'
gutil      = require 'gulp-util'

module.exports = (opt) ->
	modifyFile = (file) ->
		return if file.isNull()
			@emit 'data', file

		return if file.isStream()
			@emit 'error', new gutil.PluginError 'gulp-ng-classify', 'Streaming not supported'

		str = file.contents.toString 'utf8'
		data = ''

		try
			isFunction = opt instanceof Function
			options    = if isFunction then opt(file) else opt
			data       = ngClassify str, options
		catch err
			err.filename = file.path
			return @emit 'error', new gutil.PluginError 'gulp-ng-classify', err

		file.contents = new Buffer data

		@emit 'data', file

	es.through modifyFile
