

angular.module('foodplanner').controller('EditIngredientController', function($scope, $routeParams, $location, flash, IngredientResource , RecipeIngredientResource) {
    var self = this;
    $scope.disabled = false;
    $scope.$location = $location;
    
    $scope.get = function() {
        var successCallback = function(data){
            self.original = data;
            $scope.ingredient = new IngredientResource(self.original);
            RecipeIngredientResource.queryAll(function(items) {
                $scope.recipeIngredientsSelectionList = $.map(items, function(item) {
                    var wrappedObject = {
                        recipeIngredientsId : item.recipeIngredientsId
                    };
                    var labelObject = {
                        value : item.recipeIngredientsId,
                        text : item.amount
                    };
                    if($scope.ingredient.recipeIngredients){
                        $.each($scope.ingredient.recipeIngredients, function(idx, element) {
                            if(item.recipeIngredientsId == element.recipeIngredientsId) {
                                $scope.recipeIngredientsSelection.push(labelObject);
                                $scope.ingredient.recipeIngredients.push(wrappedObject);
                            }
                        });
                        self.original.recipeIngredients = $scope.ingredient.recipeIngredients;
                    }
                    return labelObject;
                });
            });
        };
        var errorCallback = function() {
            flash.setMessage({'type': 'error', 'text': 'The ingredient could not be found.'});
            $location.path("/Ingredients");
        };
        IngredientResource.get({IngredientId:$routeParams.IngredientId}, successCallback, errorCallback);
    };

    $scope.isClean = function() {
        return angular.equals(self.original, $scope.ingredient);
    };

    $scope.save = function() {
        var successCallback = function(){
            flash.setMessage({'type':'success','text':'The ingredient was updated successfully.'}, true);
            $scope.get();
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        };
        $scope.ingredient.$update(successCallback, errorCallback);
    };

    $scope.cancel = function() {
        $location.path("/Ingredients");
    };

    $scope.remove = function() {
        var successCallback = function() {
            flash.setMessage({'type': 'error', 'text': 'The ingredient was deleted.'});
            $location.path("/Ingredients");
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        }; 
        $scope.ingredient.$remove(successCallback, errorCallback);
    };
    
    $scope.recipeIngredientsSelection = $scope.recipeIngredientsSelection || [];
    $scope.$watch("recipeIngredientsSelection", function(selection) {
        if (typeof selection != 'undefined' && $scope.ingredient) {
            $scope.ingredient.recipeIngredients = [];
            $.each(selection, function(idx,selectedItem) {
                var collectionItem = {};
                collectionItem.recipeIngredientsId = selectedItem.value;
                $scope.ingredient.recipeIngredients.push(collectionItem);
            });
        }
    });
    
    $scope.get();
});