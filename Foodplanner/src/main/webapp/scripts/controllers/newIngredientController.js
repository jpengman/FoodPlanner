
angular.module('foodplanner').controller('NewIngredientController', function ($scope, $location, locationParser, flash, IngredientResource , RecipeIngredientResource) {
    $scope.disabled = false;
    $scope.$location = $location;
    $scope.ingredient = $scope.ingredient || {};
    
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
            $scope.ingredient.recipeIngredients = [];
            $.each(selection, function(idx,selectedItem) {
                var collectionItem = {};
                collectionItem.recipeIngredientsId = selectedItem.value;
                $scope.ingredient.recipeIngredients.push(collectionItem);
            });
        }
    });


    $scope.save = function() {
        var successCallback = function(data,responseHeaders){
            var id = locationParser(responseHeaders);
            flash.setMessage({'type':'success','text':'The ingredient was created successfully.'});
            $location.path('/Ingredients');
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        };
        IngredientResource.save($scope.ingredient, successCallback, errorCallback);
    };
    
    $scope.cancel = function() {
        $location.path("/Ingredients");
    };
});