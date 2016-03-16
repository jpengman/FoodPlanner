

angular.module('foodplanner').controller('EditAmountTypeController', function($scope, $routeParams, $location, flash, AmountTypeResource ) {
    var self = this;
    $scope.disabled = false;
    $scope.$location = $location;
    
    $scope.get = function() {
        var successCallback = function(data){
            self.original = data;
            $scope.amountType = new AmountTypeResource(self.original);
        };
        var errorCallback = function() {
            flash.setMessage({'type': 'error', 'text': 'The amountType could not be found.'});
            $location.path("/AmountTypes");
        };
        AmountTypeResource.get({AmountTypeId:$routeParams.AmountTypeId}, successCallback, errorCallback);
    };

    $scope.isClean = function() {
        return angular.equals(self.original, $scope.amountType);
    };

    $scope.save = function() {
        var successCallback = function(){
            flash.setMessage({'type':'success','text':'The amountType was updated successfully.'}, true);
            $scope.get();
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        };
        $scope.amountType.$update(successCallback, errorCallback);
    };

    $scope.cancel = function() {
        $location.path("/AmountTypes");
    };

    $scope.remove = function() {
        var successCallback = function() {
            flash.setMessage({'type': 'error', 'text': 'The amountType was deleted.'});
            $location.path("/AmountTypes");
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        }; 
        $scope.amountType.$remove(successCallback, errorCallback);
    };
    
    
    $scope.get();
});