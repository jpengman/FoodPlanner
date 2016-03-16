package se.anviken.persistence;


import javax.enterprise.context.RequestScoped;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import se.anviken.model.Ingredient;
import se.anviken.model.Recipe;
import se.anviken.model.RecipeIngredient;



@RequestScoped
public class PersistenceManagerBean implements PersistenceManager {

	@PersistenceContext(unitName = "Foodplanner-persistence-unit")
	private EntityManager em;

	@Override
	public Recipe doGetRecipe(RecipeIngredient recipeIngredient) {
		return recipeIngredient.getRecipe();
		//return em.find(Recipe.class, recipeIngredient.getIngredientId());
	}

	@Override
	public Ingredient doGetIngredient(RecipeIngredient recipeIngredient) {
		return recipeIngredient.getIngredient();
		//return em.find(Recipe.class, recipeIngredient.getRecipeId());
	}
}
