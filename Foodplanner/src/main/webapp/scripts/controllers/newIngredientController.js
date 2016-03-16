
angular.module('foodplanner').controller('NewIngredientController', function ($scope, $location, locationParser, flash, IngredientResource ) {
    $scope.disabled = false;
    $scope.$location = $location;
    $scope.ingredient = $scope.ingredient || {};
    

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