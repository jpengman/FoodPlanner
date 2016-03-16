package se.anviken.persistence;

import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.inject.Default;
import javax.inject.Inject;

import se.anviken.model.Ingredient;
import se.anviken.model.Recipe;
import se.anviken.model.RecipeIngredient;

@Default
@ApplicationScoped
public class PersistenceFacadeBean implements PersistenceFacade {

    @Inject
    PersistenceManager persistenceManager;
	
	@Override
	public Recipe getRecipe(RecipeIngredient recipeIngredient) {
		return persistenceManager.doGetRecipe(recipeIngredient);
	}

	@Override
	public Ingredient getIngredient(RecipeIngredient recipeIngredient) {
		return persistenceManager.doGetIngredient(recipeIngredient);
	}
}
