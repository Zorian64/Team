package org.zorian.model;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="watches")
public class Watch {
	
	@Id
	@GeneratedValue
	private Integer id;
	
	@Column(name = "brend")
	private String brend;
	
	@Column(name = "model")
	private String model;
	
	@Column(name = "color")
	private String color;

	@Column(name = "price")
	private Double price;

	@Column(name = "picture")
	private Blob picture;
	
	@Column(name = "file_name")
	private String fileName;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getBrend() {
		return brend;
	}

	public void setBrend(String brend) {
		this.brend = brend;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Blob getPicture() {
		return picture;
	}

	public void setPicture(Blob blob) {
		this.picture = blob;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	
}	