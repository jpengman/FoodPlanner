
angular.module('foodplanner').controller('NewTestTableController', function ($scope, $location, locationParser, flash, TestTableResource ) {
    $scope.disabled = false;
    $scope.$location = $location;
    $scope.testTable = $scope.testTable || {};
    

    $scope.save = function() {
        var successCallback = function(data,responseHeaders){
            var id = locationParser(responseHeaders);
            flash.setMessage({'type':'success','text':'The testTable was created successfully.'});
            $location.path('/TestTables');
        };
        var errorCallback = function(response) {
            if(response && response.data && response.data.message) {
                flash.setMessage({'type': 'error', 'text': response.data.message}, true);
            } else {
                flash.setMessage({'type': 'error', 'text': 'Something broke. Retry, or cancel and start afresh.'}, true);
            }
        };
        TestTableResource.save($scope.testTable, successCallback, errorCallback);
    };
    
    $scope.cancel = function() {
        $location.path("/TestTables");
    };
});