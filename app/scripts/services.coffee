'use strict'

app.factory 'Post', ($resource) ->
	$resource 'https://luminous-fire-9425.firebaseio.com/posts/:id.json'