'use strict'

app.filter 'hostnameFromUrl', ->
	(str) ->
		url = document.createElement('a')
		url.href = str
		return url.hostname