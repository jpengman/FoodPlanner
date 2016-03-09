

angular.module('foodplanner').controller('EditRecipeController', function($scope, $routeParams, $location, flash, RecipeResource , RecipeIngredientResource) {
    var self = this;
    $scope.disabled = false;
    $scope.$location = $location;
    
    $scope.get = function() {
        var successCallback = function(data){
            self.original = data;
            $scope.recipe = new RecipeResource(self.original);
            RecipeIngredientResource.queryAll(function(items) {
                $scope.recipeIngredientsSelectionList = $.map(items, function(item) {
                    var wrappedObject = {
                        recipeIngredientsId : item.recipeIngredientsId
                    };
                    var labelObject = {
                        value : item.recipeIngredientsId,
                        text : item.amount
                    };
                    if($scope.recipe.recipeIngredients){
                        $.each($scope.recipe.recipeIngredients, function(idx, element) {
                            if(item.recipeIngredientsId == element.recipeIngredientsId) {
                                $scope.recipeIngredientsSelection.push(labelObject);
                                $scope.recipe.recipeIngredients.push(wrappedObject);
                            }
                        });
                        self.original.recipeIngredients = $scope.recipe.recipeIngredients;
                    }
                    return labelObject;
                });
            });
        };
        var errorCallback = function() {
            flash.setMessage({'type': 'error', 'text': 'The recipe could not be found.'});
            $location.path("/Recipes");
        };
        RecipeResource.get({RecipeId:$routeParams.RecipeId}, successCallback, errorCallback);
    };

    $scope.isClean = function() {
        return angular.equals(self.original, $scope.recipe);
    };

    $scope.save = function() {
        var successCallback = function(){
            flash.setMessage({'type':'success','text':'The recipe was updated successfully.'}, true);
            $scope.get();
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        };
        $scope.recipe.$update(successCallback, errorCallback);
    };

    $scope.cancel = function() {
        $location.path("/Recipes");
    };

    $scope.remove = function() {
        var successCallback = function() {
            flash.setMessage({'type': 'error', 'text': 'The recipe was deleted.'});
            $location.path("/Recipes");
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        }; 
        $scope.recipe.$remove(successCallback, errorCallback);
    };
    
    $scope.recipeIngredientsSelection = $scope.recipeIngredientsSelection || [];
    $scope.$watch("recipeIngredientsSelection", function(selection) {
        if (typeof selection != 'undefined' && $scope.recipe) {
            $scope.recipe.recipeIngredients = [];
            $.each(selection, function(idx,selectedItem) {
                var collectionItem = {};
                collectionItem.recipeIngredientsId = selectedItem.value;
                $scope.recipe.recipeIngredients.push(collectionItem);
            });
        }
    });
    
    $scope.get();
});