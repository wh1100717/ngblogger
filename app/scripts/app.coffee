'use strict'

app = angular.module('app', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute',
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
  ).otherwise(
    redirectTo : '/'
  )
  return