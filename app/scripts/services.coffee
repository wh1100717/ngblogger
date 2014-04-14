'use strict'

app = angular.module('app')

#Constant

app.constant 'FIREBASE_URL', 'https://luminous-fire-9425.firebaseio.com/'

#Service

app.factory 'Post', ($firebase, FIREBASE_URL) ->
	postsRef = new Firebase(FIREBASE_URL + 'posts')
	posts = $firebase(postsRef)
	{
		all: posts
		create: (post) -> posts.$add(post)
		find: (postId) -> posts.$child(postId)
		delete: (postId) -> posts.$remove(postId)
	}