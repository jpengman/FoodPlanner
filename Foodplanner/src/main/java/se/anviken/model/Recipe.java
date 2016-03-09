package se.anviken.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * The persistent class for the recipes database table.
 * 
 */
@Entity
@Table(name = "recipes")
@NamedQuery(name = "Recipe.findAll", query = "SELECT r FROM Recipe r")
@XmlRootElement
public class Recipe implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "recipe_id")
	private int recipeId;

	private String description;

	private String name;

	private String type;

	//bi-directional many-to-one association to RecipeIngredient
	@OneToMany(mappedBy = "recipe")
	private List<RecipeIngredient> recipeIngredients;

	public Recipe() {
	}

	public int getRecipeId() {
		return this.recipeId;
	}

	public void setRecipeId(int recipeId) {
		this.recipeId = recipeId;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List<RecipeIngredient> getRecipeIngredients() {
		return this.recipeIngredients;
	}

	public void setRecipeIngredients(List<RecipeIngredient> recipeIngredients) {
		this.recipeIngredients = recipeIngredients;
	}

	public RecipeIngredient addRecipeIngredient(
			RecipeIngredient recipeIngredient) {
		getRecipeIngredients().add(recipeIngredient);
		recipeIngredient.setRecipe(this);

		return recipeIngredient;
	}

	public RecipeIngredient removeRecipeIngredient(
			RecipeIngredient recipeIngredient) {
		getRecipeIngredients().remove(recipeIngredient);
		recipeIngredient.setRecipe(null);

		return recipeIngredient;
	}

}