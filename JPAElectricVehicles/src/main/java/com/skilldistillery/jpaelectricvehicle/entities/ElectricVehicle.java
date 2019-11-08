package com.skilldistillery.jpaelectricvehicle.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ElectricVehicle {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	
	
	
	public ElectricVehicle() {
		super();
	}




	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}

}
