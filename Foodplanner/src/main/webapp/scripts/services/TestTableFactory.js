angular.module('foodplanner').factory('TestTableResource', function($resource){
    var resource = $resource('rest/testtables/:TestTableId',{TestTableId:'@testId'},{'queryAll':{method:'GET',isArray:true},'query':{method:'GET',isArray:false},'update':{method:'PUT'}});
    return resource;
});