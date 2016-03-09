'use strict';

angular.module('foodplanner',['ngRoute','ngResource'])
  .config(['$routeProvider', function($routeProvider) {
    $routeProvider
      .when('/',{templateUrl:'views/landing.html',controller:'LandingPageController'})
      .when('/Ingredients',{templateUrl:'views/Ingredient/search.html',controller:'SearchIngredientController'})
      .when('/Ingredients/new',{templateUrl:'views/Ingredient/detail.html',controller:'NewIngredientController'})
      .when('/Ingredients/edit/:IngredientId',{templateUrl:'views/Ingredient/detail.html',controller:'EditIngredientController'})
      .when('/Recipes',{templateUrl:'views/Recipe/search.html',controller:'SearchRecipeController'})
      .when('/Recipes/new',{templateUrl:'views/Recipe/detail.html',controller:'NewRecipeController'})
      .when('/Recipes/edit/:RecipeId',{templateUrl:'views/Recipe/detail.html',controller:'EditRecipeController'})
      .when('/RecipeIngredients',{templateUrl:'views/RecipeIngredient/search.html',controller:'SearchRecipeIngredientController'})
      .when('/RecipeIngredients/new',{templateUrl:'views/RecipeIngredient/detail.html',controller:'NewRecipeIngredientController'})
      .when('/RecipeIngredients/edit/:RecipeIngredientId',{templateUrl:'views/RecipeIngredient/detail.html',controller:'EditRecipeIngredientController'})
      .otherwise({
        redirectTo: '/'
      });
  }])
  .controller('LandingPageController', function LandingPageController() {
  })
  .controller('NavController', function NavController($scope, $location) {
    $scope.matchesRoute = function(route) {
        var path = $location.path();
        return (path === ("/" + route) || path.indexOf("/" + route + "/") == 0);
    };
  });
