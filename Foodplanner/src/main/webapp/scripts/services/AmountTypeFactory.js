angular.module('foodplanner').factory('AmountTypeResource', function($resource){
    var resource = $resource('rest/amounttypes/:AmountTypeId',{AmountTypeId:'@amountTypeId'},{'queryAll':{method:'GET',isArray:true},'query':{method:'GET',isArray:false},'update':{method:'PUT'}});
    return resource;
});