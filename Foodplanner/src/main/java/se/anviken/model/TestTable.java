package se.anviken.model;

import java.io.Serializable;
import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * The persistent class for the test_table database table.
 * 
 */
@Entity
@Table(name = "test_table")
@NamedQuery(name = "TestTable.findAll", query = "SELECT t FROM TestTable t")
@XmlRootElement
public class TestTable implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "test_id")
	private int testId;

	@Lob
	private byte[] image;

	public TestTable() {
	}

	public int getTestId() {
		return this.testId;
	}

	public void setTestId(int testId) {
		this.testId = testId;
	}

	public byte[] getImage() {
		return this.image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

}