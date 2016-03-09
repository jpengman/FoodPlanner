angular.module('foodplanner').factory('IngredientResource', function($resource){
    var resource = $resource('rest/ingredients/:IngredientId',{IngredientId:'@ingredientId'},{'queryAll':{method:'GET',isArray:true},'query':{method:'GET',isArray:false},'update':{method:'PUT'}});
    return resource;
});