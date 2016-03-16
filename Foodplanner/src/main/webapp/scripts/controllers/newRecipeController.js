
angular.module('foodplanner').controller('NewRecipeController', function ($scope, $location, locationParser, flash, RecipeResource ) {
    $scope.disabled = false;
    $scope.$location = $location;
    $scope.recipe = $scope.recipe || {};
    

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