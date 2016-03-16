
angular.module('foodplanner').controller('NewWeekDayController', function ($scope, $location, locationParser, flash, WeekDayResource , DayResource, RecipeResource, RecipeResource, RecipeResource, WeekResource) {
    $scope.disabled = false;
    $scope.$location = $location;
    $scope.weekDay = $scope.weekDay || {};
    
    $scope.dayList = DayResource.queryAll(function(items){
        $scope.daySelectionList = $.map(items, function(item) {
            return ( {
                value : item.dayId,
                text : item.dayName
            });
        });
    });
    $scope.$watch("daySelection", function(selection) {
        if ( typeof selection != 'undefined') {
            $scope.weekDay.day = {};
            $scope.weekDay.day.dayId = selection.value;
        }
    });
    
    $scope.breakfastRecipeList = RecipeResource.queryAll(function(items){
        $scope.breakfastRecipeSelectionList = $.map(items, function(item) {
            return ( {
                value : item.recipeId,
                text : item.description
            });
        });
    });
    $scope.$watch("breakfastRecipeSelection", function(selection) {
        if ( typeof selection != 'undefined') {
            $scope.weekDay.breakfastRecipe = {};
            $scope.weekDay.breakfastRecipe.recipeId = selection.value;
        }
    });
    
    $scope.lunchRecipeList = RecipeResource.queryAll(function(items){
        $scope.lunchRecipeSelectionList = $.map(items, function(item) {
            return ( {
                value : item.recipeId,
                text : item.description
            });
        });
    });
    $scope.$watch("lunchRecipeSelection", function(selection) {
        if ( typeof selection != 'undefined') {
            $scope.weekDay.lunchRecipe = {};
            $scope.weekDay.lunchRecipe.recipeId = selection.value;
        }
    });
    
    $scope.dinnerRecipeList = RecipeResource.queryAll(function(items){
        $scope.dinnerRecipeSelectionList = $.map(items, function(item) {
            return ( {
                value : item.recipeId,
                text : item.description
            });
        });
    });
    $scope.$watch("dinnerRecipeSelection", function(selection) {
        if ( typeof selection != 'undefined') {
            $scope.weekDay.dinnerRecipe = {};
            $scope.weekDay.dinnerRecipe.recipeId = selection.value;
        }
    });
    
    $scope.weekList = WeekResource.queryAll(function(items){
        $scope.weekSelectionList = $.map(items, function(item) {
            return ( {
                value : item.weekId,
                text : item.weekNo
            });
        });
    });
    $scope.$watch("weekSelection", function(selection) {
        if ( typeof selection != 'undefined') {
            $scope.weekDay.week = {};
            $scope.weekDay.week.weekId = selection.value;
        }
    });
    

    $scope.save = function() {
        var successCallback = function(data,responseHeaders){
            var id = locationParser(responseHeaders);
            flash.setMessage({'type':'success','text':'The weekDay was created successfully.'});
            $location.path('/WeekDays');
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        };
        WeekDayResource.save($scope.weekDay, successCallback, errorCallback);
    };
    
    $scope.cancel = function() {
        $location.path("/WeekDays");
    };
});