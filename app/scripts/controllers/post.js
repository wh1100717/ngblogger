// Generated by CoffeeScript 1.7.1
'use strict';
var app;

app = angular.module('app');

app.controller('PostCtrl', function($scope, $location, Post) {
  $scope.posts = Post.all;
  return $scope.deletePost = function(postId) {
    return Post["delete"](postId);
  };
});
