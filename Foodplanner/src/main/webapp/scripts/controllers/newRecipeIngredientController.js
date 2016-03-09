
angular.module('foodplanner').controller('NewRecipeIngredientController', function ($scope, $location, locationParser, flash, RecipeIngredientResource , IngredientResource, RecipeResource) {
    $scope.disabled = false;
    $scope.$location = $location;
    $scope.recipeIngredient = $scope.recipeIngredient || {};
    
    $scope.ingredientList = IngredientResource.queryAll(function(items){
        $scope.ingredientSelectionList = $.map(items, function(item) {
            return ( {
                value : item.ingredientId,
                text : item.description
            });
        });
    });
    $scope.$watch("ingredientSelection", function(selection) {
        if ( typeof selection != 'undefined') {
            $scope.recipeIngredient.ingredient = {};
            $scope.recipeIngredient.ingredient.ingredientId = selection.value;
        }
    });
    
    $scope.recipeList = RecipeResource.queryAll(function(items){
        $scope.recipeSelectionList = $.map(items, function(item) {
            return ( {
                value : item.recipeId,
                text : item.description
            });
        });
    });
    $scope.$watch("recipeSelection", function(selection) {
        if ( typeof selection != 'undefined') {
            $scope.recipeIngredient.recipe = {};
            $scope.recipeIngredient.recipe.recipeId = selection.value;
        }
    });
    

    $scope.save = function() {
        var successCallback = function(data,responseHeaders){
            var id = locationParser(responseHeaders);
            flash.setMessage({'type':'success','text':'The recipeIngredient was created successfully.'});
            $location.path('/RecipeIngredients');
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        };
        RecipeIngredientResource.save($scope.recipeIngredient, successCallback, errorCallback);
    };
    
    $scope.cancel = function() {
        $location.path("/RecipeIngredients");
    };
});