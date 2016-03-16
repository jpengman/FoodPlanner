package se.anviken.model;

import java.io.Serializable;
import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * The persistent class for the recipe_ingredients database table.
 * 
 */
@Entity
@Table(name = "recipe_ingredients")
@NamedQuery(name = "RecipeIngredient.findAll", query = "SELECT r FROM RecipeIngredient r")
@XmlRootElement
public class RecipeIngredient implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "recipe_ingredients_id")
	private int recipeIngredientsId;

	private String amount;

	//uni-directional many-to-one association to AmountType
	@ManyToOne
	@JoinColumn(name = "amount_type_id")
	private AmountType amountType;

	//uni-directional many-to-one association to Ingredient
	@ManyToOne
	@JoinColumn(name = "ingredient_id")
	private Ingredient ingredient;

	//uni-directional many-to-one association to Recipe
	@ManyToOne
	@JoinColumn(name = "recipe_id")
	private Recipe recipe;

	public RecipeIngredient() {
	}

	public int getRecipeIngredientsId() {
		return this.recipeIngredientsId;
	}

	public void setRecipeIngredientsId(int recipeIngredientsId) {
		this.recipeIngredientsId = recipeIngredientsId;
	}

	public String getAmount() {
		return this.amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public AmountType getAmountType() {
		return this.amountType;
	}

	public void setAmountType(AmountType amountType) {
		this.amountType = amountType;
	}

	public Ingredient getIngredient() {
		return this.ingredient;
	}

	public void setIngredient(Ingredient ingredient) {
		this.ingredient = ingredient;
	}

	public Recipe getRecipe() {
		return this.recipe;
	}

	public void setRecipe(Recipe recipe) {
		this.recipe = recipe;
	}

}