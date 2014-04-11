'use strict'

app.controller 'PostCtrl', ($scope, Post) ->
	$scope.post = {
		url: 'http://'
		title: ''
	}
	$scope.posts = Post.get()
	$scope.submitPost = ->
		Post.save $scope.post , (ref)->
			console.log ref
			$scope.posts[ref.name] = $scope.post
			$scope.post = {
				url: 'http://'
				title: ''
			}
	$scope.deletePost = (postId)->
		Post.delete {id:postId}, ->
			delete $scope.posts[postId]
