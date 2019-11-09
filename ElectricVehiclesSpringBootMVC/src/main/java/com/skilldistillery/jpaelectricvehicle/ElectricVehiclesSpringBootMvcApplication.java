package com.skilldistillery.jpaelectricvehicle;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.jpaelectricvehicle")
public class ElectricVehiclesSpringBootMvcApplication {

	public static void main(String[] args) {
		SpringApplication.run(ElectricVehiclesSpringBootMvcApplication.class, args);
	}
	

}
