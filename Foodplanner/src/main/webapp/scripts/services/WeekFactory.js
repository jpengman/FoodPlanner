angular.module('foodplanner').factory('WeekResource', function($resource){
    var resource = $resource('rest/weeks/:WeekId',{WeekId:'@weekId'},{'queryAll':{method:'GET',isArray:true},'query':{method:'GET',isArray:false},'update':{method:'PUT'}});
    return resource;
});