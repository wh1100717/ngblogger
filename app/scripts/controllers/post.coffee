'use strict'

app = angular.module('app')

app.controller 'PostCtrl', ($scope, $location, Post) ->
	$scope.posts = Post.all
	$scope.deletePost = (postId)-> Post.delete(postId)
