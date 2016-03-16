

angular.module('foodplanner').controller('EditWeekDayController', function($scope, $routeParams, $location, flash, WeekDayResource , DayResource, RecipeResource, RecipeResource, RecipeResource, WeekResource) {
    var self = this;
    $scope.disabled = false;
    $scope.$location = $location;
    
    $scope.get = function() {
        var successCallback = function(data){
            self.original = data;
            $scope.weekDay = new WeekDayResource(self.original);
            DayResource.queryAll(function(items) {
                $scope.daySelectionList = $.map(items, function(item) {
                    var wrappedObject = {
                        dayId : item.dayId
                    };
                    var labelObject = {
                        value : item.dayId,
                        text : item.dayName
                    };
                    if($scope.weekDay.day && item.dayId == $scope.weekDay.day.dayId) {
                        $scope.daySelection = labelObject;
                        $scope.weekDay.day = wrappedObject;
                        self.original.day = $scope.weekDay.day;
                    }
                    return labelObject;
                });
            });
            RecipeResource.queryAll(function(items) {
                $scope.breakfastRecipeSelectionList = $.map(items, function(item) {
                    var wrappedObject = {
                        recipeId : item.recipeId
                    };
                    var labelObject = {
                        value : item.recipeId,
                        text : item.description
                    };
                    if($scope.weekDay.breakfastRecipe && item.recipeId == $scope.weekDay.breakfastRecipe.recipeId) {
                        $scope.breakfastRecipeSelection = labelObject;
                        $scope.weekDay.breakfastRecipe = wrappedObject;
                        self.original.breakfastRecipe = $scope.weekDay.breakfastRecipe;
                    }
                    return labelObject;
                });
            });
            RecipeResource.queryAll(function(items) {
                $scope.lunchRecipeSelectionList = $.map(items, function(item) {
                    var wrappedObject = {
                        recipeId : item.recipeId
                    };
                    var labelObject = {
                        value : item.recipeId,
                        text : item.description
                    };
                    if($scope.weekDay.lunchRecipe && item.recipeId == $scope.weekDay.lunchRecipe.recipeId) {
                        $scope.lunchRecipeSelection = labelObject;
                        $scope.weekDay.lunchRecipe = wrappedObject;
                        self.original.lunchRecipe = $scope.weekDay.lunchRecipe;
                    }
                    return labelObject;
                });
            });
            RecipeResource.queryAll(function(items) {
                $scope.dinnerRecipeSelectionList = $.map(items, function(item) {
                    var wrappedObject = {
                        recipeId : item.recipeId
                    };
                    var labelObject = {
                        value : item.recipeId,
                        text : item.description
                    };
                    if($scope.weekDay.dinnerRecipe && item.recipeId == $scope.weekDay.dinnerRecipe.recipeId) {
                        $scope.dinnerRecipeSelection = labelObject;
                        $scope.weekDay.dinnerRecipe = wrappedObject;
                        self.original.dinnerRecipe = $scope.weekDay.dinnerRecipe;
                    }
                    return labelObject;
                });
            });
            WeekResource.queryAll(function(items) {
                $scope.weekSelectionList = $.map(items, function(item) {
                    var wrappedObject = {
                        weekId : item.weekId
                    };
                    var labelObject = {
                        value : item.weekId,
                        text : item.weekNo
                    };
                    if($scope.weekDay.week && item.weekId == $scope.weekDay.week.weekId) {
                        $scope.weekSelection = labelObject;
                        $scope.weekDay.week = wrappedObject;
                        self.original.week = $scope.weekDay.week;
                    }
                    return labelObject;
                });
            });
        };
        var errorCallback = function() {
            flash.setMessage({'type': 'error', 'text': 'The weekDay could not be found.'});
            $location.path("/WeekDays");
        };
        WeekDayResource.get({WeekDayId:$routeParams.WeekDayId}, successCallback, errorCallback);
    };

    $scope.isClean = function() {
        return angular.equals(self.original, $scope.weekDay);
    };

    $scope.save = function() {
        var successCallback = function(){
            flash.setMessage({'type':'success','text':'The weekDay was updated successfully.'}, true);
            $scope.get();
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        };
        $scope.weekDay.$update(successCallback, errorCallback);
    };

    $scope.cancel = function() {
        $location.path("/WeekDays");
    };

    $scope.remove = function() {
        var successCallback = function() {
            flash.setMessage({'type': 'error', 'text': 'The weekDay was deleted.'});
            $location.path("/WeekDays");
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        }; 
        $scope.weekDay.$remove(successCallback, errorCallback);
    };
    
    $scope.$watch("daySelection", function(selection) {
        if (typeof selection != 'undefined') {
            $scope.weekDay.day = {};
            $scope.weekDay.day.dayId = selection.value;
        }
    });
    $scope.$watch("breakfastRecipeSelection", function(selection) {
        if (typeof selection != 'undefined') {
            $scope.weekDay.breakfastRecipe = {};
            $scope.weekDay.breakfastRecipe.recipeId = selection.value;
        }
    });
    $scope.$watch("lunchRecipeSelection", function(selection) {
        if (typeof selection != 'undefined') {
            $scope.weekDay.lunchRecipe = {};
            $scope.weekDay.lunchRecipe.recipeId = selection.value;
        }
    });
    $scope.$watch("dinnerRecipeSelection", function(selection) {
        if (typeof selection != 'undefined') {
            $scope.weekDay.dinnerRecipe = {};
            $scope.weekDay.dinnerRecipe.recipeId = selection.value;
        }
    });
    $scope.$watch("weekSelection", function(selection) {
        if (typeof selection != 'undefined') {
            $scope.weekDay.week = {};
            $scope.weekDay.week.weekId = selection.value;
        }
    });
    
    $scope.get();
});