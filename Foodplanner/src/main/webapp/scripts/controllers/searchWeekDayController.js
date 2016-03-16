

angular.module('foodplanner').controller('SearchWeekDayController', function($scope, $http, $filter, WeekDayResource , DayResource, RecipeResource, RecipeResource, RecipeResource, WeekResource) {

    $scope.search={};
    $scope.currentPage = 0;
    $scope.pageSize= 10;
    $scope.searchResults = [];
    $scope.filteredResults = [];
    $scope.pageRange = [];
    $scope.numberOfPages = function() {
        var result = Math.ceil($scope.filteredResults.length/$scope.pageSize);
        var max = (result == 0) ? 1 : result;
        $scope.pageRange = [];
        for(var ctr=0;ctr<max;ctr++) {
            $scope.pageRange.push(ctr);
        }
        return max;
    };
    $scope.dayList = DayResource.queryAll();
    $scope.breakfastRecipeList = RecipeResource.queryAll();
    $scope.lunchRecipeList = RecipeResource.queryAll();
    $scope.dinnerRecipeList = RecipeResource.queryAll();
    $scope.weekList = WeekResource.queryAll();

    $scope.performSearch = function() {
        $scope.searchResults = WeekDayResource.queryAll(function(){
            $scope.filteredResults = $filter('searchFilter')($scope.searchResults, $scope);
            $scope.currentPage = 0;
        });
    };
    
    $scope.previous = function() {
       if($scope.currentPage > 0) {
           $scope.currentPage--;
       }
    };
    
    $scope.next = function() {
       if($scope.currentPage < ($scope.numberOfPages() - 1) ) {
           $scope.currentPage++;
       }
    };
    
    $scope.setPage = function(n) {
       $scope.currentPage = n;
    };

    $scope.performSearch();
});