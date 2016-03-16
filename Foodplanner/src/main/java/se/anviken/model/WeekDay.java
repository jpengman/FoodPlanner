package se.anviken.model;

import java.io.Serializable;
import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * The persistent class for the week_days database table.
 * 
 */
@Entity
@Table(name = "week_days")
@NamedQuery(name = "WeekDay.findAll", query = "SELECT w FROM WeekDay w")
@XmlRootElement
public class WeekDay implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "week_day_id")
	private int weekDayId;

	//uni-directional many-to-one association to Day
	@ManyToOne
	@JoinColumn(name = "day_id")
	private Day day;

	//uni-directional many-to-one association to Recipe
	@ManyToOne
	@JoinColumn(name = "breakfast_recipe_id")
	private Recipe breakfastRecipe;

	//uni-directional many-to-one association to Recipe
	@ManyToOne
	@JoinColumn(name = "lunch_recipe_id")
	private Recipe lunchRecipe;

	//uni-directional many-to-one association to Recipe
	@ManyToOne
	@JoinColumn(name = "dinner_recipe_id")
	private Recipe dinnerRecipe;

	//uni-directional many-to-one association to Week
	@ManyToOne
	@JoinColumn(name = "week_id")
	private Week week;

	public WeekDay() {
	}

	public int getWeekDayId() {
		return this.weekDayId;
	}

	public void setWeekDayId(int weekDayId) {
		this.weekDayId = weekDayId;
	}

	public Day getDay() {
		return this.day;
	}

	public void setDay(Day day) {
		this.day = day;
	}

	public Recipe getBreakfastRecipe() {
		return this.breakfastRecipe;
	}

	public void setBreakfastRecipe(Recipe breakfastRecipe) {
		this.breakfastRecipe = breakfastRecipe;
	}

	public Recipe getLunchRecipe() {
		return this.lunchRecipe;
	}

	public void setLunchRecipe(Recipe lunchRecipe) {
		this.lunchRecipe = lunchRecipe;
	}

	public Recipe getDinnerRecipe() {
		return this.dinnerRecipe;
	}

	public void setDinnerRecipe(Recipe dinnerRecipe) {
		this.dinnerRecipe = dinnerRecipe;
	}

	public Week getWeek() {
		return this.week;
	}

	public void setWeek(Week week) {
		this.week = week;
	}

}