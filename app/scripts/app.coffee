'use strict'

app = angular.module('app', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute',
    'firebase',
    'app.directives'
  ])
app.config ($routeProvider) ->
  $routeProvider.when(
    '/', {
      templateUrl: 'views/index.html'
      controller: 'IndexCtrl'
    }
  ).when(
    '/home',{
      templateUrl: 'views/home.html'
      controller: 'HomeCtrl'
    }
  ).when(
    '/post',{
      templateUrl: 'views/post.html'
      controller: 'PostCtrl'
    }
  ).when(
    '/post/:postId',{
      templateUrl: 'views/showpost.html'
      controller: 'PostViewCtrl'
    }
  ).otherwise(
    redirectTo : '/'
  )
  return