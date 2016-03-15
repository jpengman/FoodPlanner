package se.anviken.model;

import java.io.Serializable;
import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * The persistent class for the ingredients database table.
 * 
 */
@Entity
@Table(name = "ingredients")
@NamedQuery(name = "Ingredient.findAll", query = "SELECT i FROM Ingredient i")
@XmlRootElement
public class Ingredient implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ingredient_id")
	private int ingredientId;

	private String description;

	private String name;

	public Ingredient() {
	}

	public int getIngredientId() {
		return this.ingredientId;
	}

	public void setIngredientId(int ingredientId) {
		this.ingredientId = ingredientId;
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

}