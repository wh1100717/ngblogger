'use strict'

app = angular.module('app')

#Index Controller
app.controller 'IndexCtrl', ($scope) ->
	$scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'		
	]
	return
