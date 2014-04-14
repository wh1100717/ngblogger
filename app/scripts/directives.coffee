'use strict';

# {
# 　　priority: 0,
# 　　template: '<div></div>',
# 　　templateUrl: 'directive.html',
# 　　replace: false,
# 　　transclude: false,
# 　　restrict: 'A',
# 　　scope: false,
# 　　compile: function compile(tElement, tAttrs, transclude) {
# 　　　　return {
# 　　　　　　pre: function preLink(scope, iElement, iAttrs, controller) { ... },
# 　　　　　　post: function postLink(scope, iElement, iAttrs, controller) { ... }
# 　　　　}
# 　　},
# 　　link: function postLink(scope, iElement, iAttrs) { ... }
# }

app = angular.module 'app.directives', []

app.directive 'enter', ->
	{
		restrict: 'E'
		template: '<a ng-transclude></a>'
		replace: true
		transclude: true
		# compile: (element, attrs) ->
		compile: (element) ->
			element.addClass('index-enter')
			element.addClass('index-enter-inverse')
		# link: (scope, element, attrs) ->
		link: ->
			console.log 123
	}
