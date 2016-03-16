/**
 *
 */
package se.anviken.persistence;

import se.anviken.model.Ingredient;
import se.anviken.model.Recipe;
import se.anviken.model.RecipeIngredient;

public interface PersistenceFacade {

	public Recipe getRecipe(RecipeIngredient recipeIngredient);
	public Ingredient getIngredient(RecipeIngredient recipeIngredient); 


}
