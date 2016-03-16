package se.anviken.persistence;

import se.anviken.model.Ingredient;
import se.anviken.model.Recipe;
import se.anviken.model.RecipeIngredient;

public interface PersistenceManager {

	public Recipe doGetRecipe(RecipeIngredient recipeIngredient);
	public Ingredient doGetIngredient(RecipeIngredient recipeIngredient);

}
