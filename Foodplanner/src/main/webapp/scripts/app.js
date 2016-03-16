'use strict';

angular.module('foodplanner',['ngRoute','ngResource'])
  .config(['$routeProvider', function($routeProvider) {
    $routeProvider
      .when('/',{templateUrl:'views/landing.html',controller:'LandingPageController'})
      .when('/AmountTypes',{templateUrl:'views/AmountType/search.html',controller:'SearchAmountTypeController'})
      .when('/AmountTypes/new',{templateUrl:'views/AmountType/detail.html',controller:'NewAmountTypeController'})
      .when('/AmountTypes/edit/:AmountTypeId',{templateUrl:'views/AmountType/detail.html',controller:'EditAmountTypeController'})
      .when('/Days',{templateUrl:'views/Day/search.html',controller:'SearchDayController'})
      .when('/Days/new',{templateUrl:'views/Day/detail.html',controller:'NewDayController'})
      .when('/Days/edit/:DayId',{templateUrl:'views/Day/detail.html',controller:'EditDayController'})
      .when('/Ingredients',{templateUrl:'views/Ingredient/search.html',controller:'SearchIngredientController'})
      .when('/Ingredients/new',{templateUrl:'views/Ingredient/detail.html',controller:'NewIngredientController'})
      .when('/Ingredients/edit/:IngredientId',{templateUrl:'views/Ingredient/detail.html',controller:'EditIngredientController'})
      .when('/Recipes',{templateUrl:'views/Recipe/search.html',controller:'SearchRecipeController'})
      .when('/Recipes/new',{templateUrl:'views/Recipe/detail.html',controller:'NewRecipeController'})
      .when('/Recipes/edit/:RecipeId',{templateUrl:'views/Recipe/detail.html',controller:'EditRecipeController'})
      .when('/RecipeIngredients',{templateUrl:'views/RecipeIngredient/search.html',controller:'SearchRecipeIngredientController'})
      .when('/RecipeIngredients/new',{templateUrl:'views/RecipeIngredient/detail.html',controller:'NewRecipeIngredientController'})
      .when('/RecipeIngredients/edit/:RecipeIngredientId',{templateUrl:'views/RecipeIngredient/detail.html',controller:'EditRecipeIngredientController'})
      .when('/Weeks',{templateUrl:'views/Week/search.html',controller:'SearchWeekController'})
      .when('/Weeks/new',{templateUrl:'views/Week/detail.html',controller:'NewWeekController'})
      .when('/Weeks/edit/:WeekId',{templateUrl:'views/Week/detail.html',controller:'EditWeekController'})
      .when('/WeekDays',{templateUrl:'views/WeekDay/search.html',controller:'SearchWeekDayController'})
      .when('/WeekDays/new',{templateUrl:'views/WeekDay/detail.html',controller:'NewWeekDayController'})
      .when('/WeekDays/edit/:WeekDayId',{templateUrl:'views/WeekDay/detail.html',controller:'EditWeekDayController'})
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
