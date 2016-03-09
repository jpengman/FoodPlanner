
angular.module('foodplanner').controller('NewRecipeController', function ($scope, $location, locationParser, flash, RecipeResource , RecipeIngredientResource) {
    $scope.disabled = false;
    $scope.$location = $location;
    $scope.recipe = $scope.recipe || {};
    
    $scope.recipeIngredientsList = RecipeIngredientResource.queryAll(function(items){
        $scope.recipeIngredientsSelectionList = $.map(items, function(item) {
            return ( {
                value : item.recipeIngredientsId,
                text : item.amount
            });
        });
    });
    $scope.$watch("recipeIngredientsSelection", function(selection) {
        if (typeof selection != 'undefined') {
            $scope.recipe.recipeIngredients = [];
            $.each(selection, function(idx,selectedItem) {
                var collectionItem = {};
                collectionItem.recipeIngredientsId = selectedItem.value;
                $scope.recipe.recipeIngredients.push(collectionItem);
            });
        }
    });


    $scope.save = function() {
        var successCallback = function(data,responseHeaders){
            var id = locationParser(responseHeaders);
            flash.setMessage({'type':'success','text':'The recipe was created successfully.'});
            $location.path('/Recipes');
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        };
        RecipeResource.save($scope.recipe, successCallback, errorCallback);
    };
    
    $scope.cancel = function() {
        $location.path("/Recipes");
    };
});