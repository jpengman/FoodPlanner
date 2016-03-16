angular.module('foodplanner').factory('WeekDayResource', function($resource){
    var resource = $resource('rest/weekdays/:WeekDayId',{WeekDayId:'@weekDayId'},{'queryAll':{method:'GET',isArray:true},'query':{method:'GET',isArray:false},'update':{method:'PUT'}});
    return resource;
});