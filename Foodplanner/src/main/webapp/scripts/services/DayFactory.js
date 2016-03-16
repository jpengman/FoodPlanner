angular.module('foodplanner').factory('DayResource', function($resource){
    var resource = $resource('rest/days/:DayId',{DayId:'@dayId'},{'queryAll':{method:'GET',isArray:true},'query':{method:'GET',isArray:false},'update':{method:'PUT'}});
    return resource;
});