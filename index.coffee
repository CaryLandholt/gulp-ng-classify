es         = require 'event-stream'
ngClassify = require 'ng-classify'

module.exports = (opt) ->
	modifyFile = (file) ->
		return if file.isNull()
			@emit 'data', file

		return if file.isStream()
			@emit 'error', new Error 'gulp-ngClassify: Streaming not supported'

		str = file.contents.toString 'utf8'
		data = ''

		try
			isFunction = opt instanceof Function
			options    = if isFunction then opt(file) else opt
			data       = ngClassify str, options
		catch err
			return @emit 'error', new Error err

		file.contents = new Buffer data

		@emit 'data', file

	es.through modifyFile