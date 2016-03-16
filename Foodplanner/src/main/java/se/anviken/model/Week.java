package se.anviken.model;

import java.io.Serializable;
import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * The persistent class for the weeks database table.
 * 
 */
@Entity
@Table(name = "weeks")
@NamedQuery(name = "Week.findAll", query = "SELECT w FROM Week w")
@XmlRootElement
public class Week implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "week_id")
	private int weekId;

	@Column(name = "week_no")
	private int weekNo;

	private int year;

	public Week() {
	}

	public int getWeekId() {
		return this.weekId;
	}

	public void setWeekId(int weekId) {
		this.weekId = weekId;
	}

	public int getWeekNo() {
		return this.weekNo;
	}

	public void setWeekNo(int weekNo) {
		this.weekNo = weekNo;
	}

	public int getYear() {
		return this.year;
	}

	public void setYear(int year) {
		this.year = year;
	}

}