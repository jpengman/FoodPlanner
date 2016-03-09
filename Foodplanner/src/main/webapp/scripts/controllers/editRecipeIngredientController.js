

angular.module('foodplanner').controller('EditRecipeIngredientController', function($scope, $routeParams, $location, flash, RecipeIngredientResource , IngredientResource, RecipeResource) {
    var self = this;
    $scope.disabled = false;
    $scope.$location = $location;
    
    $scope.get = function() {
        var successCallback = function(data){
            self.original = data;
            $scope.recipeIngredient = new RecipeIngredientResource(self.original);
            IngredientResource.queryAll(function(items) {
                $scope.ingredientSelectionList = $.map(items, function(item) {
                    var wrappedObject = {
                        ingredientId : item.ingredientId
                    };
                    var labelObject = {
                        value : item.ingredientId,
                        text : item.description
                    };
                    if($scope.recipeIngredient.ingredient && item.ingredientId == $scope.recipeIngredient.ingredient.ingredientId) {
                        $scope.ingredientSelection = labelObject;
                        $scope.recipeIngredient.ingredient = wrappedObject;
                        self.original.ingredient = $scope.recipeIngredient.ingredient;
                    }
                    return labelObject;
                });
            });
            RecipeResource.queryAll(function(items) {
                $scope.recipeSelectionList = $.map(items, function(item) {
                    var wrappedObject = {
                        recipeId : item.recipeId
                    };
                    var labelObject = {
                        value : item.recipeId,
                        text : item.description
                    };
                    if($scope.recipeIngredient.recipe && item.recipeId == $scope.recipeIngredient.recipe.recipeId) {
                        $scope.recipeSelection = labelObject;
                        $scope.recipeIngredient.recipe = wrappedObject;
                        self.original.recipe = $scope.recipeIngredient.recipe;
                    }
                    return labelObject;
                });
            });
        };
        var errorCallback = function() {
            flash.setMessage({'type': 'error', 'text': 'The recipeIngredient could not be found.'});
            $location.path("/RecipeIngredients");
        };
        RecipeIngredientResource.get({RecipeIngredientId:$routeParams.RecipeIngredientId}, successCallback, errorCallback);
    };

    $scope.isClean = function() {
        return angular.equals(self.original, $scope.recipeIngredient);
    };

    $scope.save = function() {
        var successCallback = function(){
            flash.setMessage({'type':'success','text':'The recipeIngredient was updated successfully.'}, true);
            $scope.get();
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        };
        $scope.recipeIngredient.$update(successCallback, errorCallback);
    };

    $scope.cancel = function() {
        $location.path("/RecipeIngredients");
    };

    $scope.remove = function() {
        var successCallback = function() {
            flash.setMessage({'type': 'error', 'text': 'The recipeIngredient was deleted.'});
            $location.path("/RecipeIngredients");
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        }; 
        $scope.recipeIngredient.$remove(successCallback, errorCallback);
    };
    
    $scope.$watch("ingredientSelection", function(selection) {
        if (typeof selection != 'undefined') {
            $scope.recipeIngredient.ingredient = {};
            $scope.recipeIngredient.ingredient.ingredientId = selection.value;
        }
    });
    $scope.$watch("recipeSelection", function(selection) {
        if (typeof selection != 'undefined') {
            $scope.recipeIngredient.recipe = {};
            $scope.recipeIngredient.recipe.recipeId = selection.value;
        }
    });
    
    $scope.get();
});