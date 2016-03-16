
angular.module('foodplanner').controller('NewAmountTypeController', function ($scope, $location, locationParser, flash, AmountTypeResource ) {
    $scope.disabled = false;
    $scope.$location = $location;
    $scope.amountType = $scope.amountType || {};
    

    $scope.save = function() {
        var successCallback = function(data,responseHeaders){
            var id = locationParser(responseHeaders);
            flash.setMessage({'type':'success','text':'The amountType was created successfully.'});
            $location.path('/AmountTypes');
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        };
        AmountTypeResource.save($scope.amountType, successCallback, errorCallback);
    };
    
    $scope.cancel = function() {
        $location.path("/AmountTypes");
    };
});