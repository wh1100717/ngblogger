'use strict'

app.controller 'NavCtrl', ($scope, $location, Post) ->
	$scope.post = {url:'http://', title:''}
	$scope.submitPost = -> Post.create($scope.post).then (ref)-> $location.path('/post/' + ref.name())
