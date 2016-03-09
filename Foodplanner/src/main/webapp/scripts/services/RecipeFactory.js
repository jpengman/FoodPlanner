angular.module('foodplanner').factory('RecipeResource', function($resource){
    var resource = $resource('rest/recipes/:RecipeId',{RecipeId:'@recipeId'},{'queryAll':{method:'GET',isArray:true},'query':{method:'GET',isArray:false},'update':{method:'PUT'}});
    return resource;
});