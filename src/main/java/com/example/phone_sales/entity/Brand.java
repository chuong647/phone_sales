package com.example.phone_sales.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Brand {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY.IDENTITY)
    private int id;
    
    private String brandName;

	public Brand(int id, String brandName) {
		super();
		this.id = id;
		this.brandName = brandName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

    // Constructors, Getters, Setters, toString
}
