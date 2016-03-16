package se.anviken.model;

import java.io.Serializable;
import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * The persistent class for the days database table.
 * 
 */
@Entity
@Table(name = "days")
@NamedQuery(name = "Day.findAll", query = "SELECT d FROM Day d")
@XmlRootElement
public class Day implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "day_id")
	private int dayId;

	@Column(name = "day_name")
	private String dayName;

	public Day() {
	}

	public int getDayId() {
		return this.dayId;
	}

	public void setDayId(int dayId) {
		this.dayId = dayId;
	}

	public String getDayName() {
		return this.dayName;
	}

	public void setDayName(String dayName) {
		this.dayName = dayName;
	}

}