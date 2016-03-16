package se.anviken.model;

import java.io.Serializable;
import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * The persistent class for the amount_types database table.
 * 
 */
@Entity
@Table(name = "amount_types")
@NamedQuery(name = "AmountType.findAll", query = "SELECT a FROM AmountType a")
@XmlRootElement
public class AmountType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "amount_type_id")
	private int amountTypeId;

	@Column(name = "amount_type")
	private String amountType;

	private int type;

	private int weight;

	public AmountType() {
	}

	public int getAmountTypeId() {
		return this.amountTypeId;
	}

	public void setAmountTypeId(int amountTypeId) {
		this.amountTypeId = amountTypeId;
	}

	public String getAmountType() {
		return this.amountType;
	}

	public void setAmountType(String amountType) {
		this.amountType = amountType;
	}

	public int getType() {
		return this.type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getWeight() {
		return this.weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

}