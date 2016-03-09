angular.module('foodplanner').factory('RecipeIngredientResource', function($resource){
    var resource = $resource('rest/recipeingredients/:RecipeIngredientId',{RecipeIngredientId:'@recipeIngredientsId'},{'queryAll':{method:'GET',isArray:true},'query':{method:'GET',isArray:false},'update':{method:'PUT'}});
    return resource;
});