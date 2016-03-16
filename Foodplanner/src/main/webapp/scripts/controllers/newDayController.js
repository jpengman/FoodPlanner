
angular.module('foodplanner').controller('NewDayController', function ($scope, $location, locationParser, flash, DayResource ) {
    $scope.disabled = false;
    $scope.$location = $location;
    $scope.day = $scope.day || {};
    

    $scope.save = function() {
        var successCallback = function(data,responseHeaders){
            var id = locationParser(responseHeaders);
            flash.setMessage({'type':'success','text':'The day was created successfully.'});
            $location.path('/Days');
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        };
        DayResource.save($scope.day, successCallback, errorCallback);
    };
    
    $scope.cancel = function() {
        $location.path("/Days");
    };
});