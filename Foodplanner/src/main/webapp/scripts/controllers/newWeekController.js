
angular.module('foodplanner').controller('NewWeekController', function ($scope, $location, locationParser, flash, WeekResource ) {
    $scope.disabled = false;
    $scope.$location = $location;
    $scope.week = $scope.week || {};
    

    $scope.save = function() {
        var successCallback = function(data,responseHeaders){
            var id = locationParser(responseHeaders);
            flash.setMessage({'type':'success','text':'The week was created successfully.'});
            $location.path('/Weeks');
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        };
        WeekResource.save($scope.week, successCallback, errorCallback);
    };
    
    $scope.cancel = function() {
        $location.path("/Weeks");
    };
});