package com.skilldistillery.jpaelectricvehicle.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class ChargingStationTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private ChargingStation cs;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("ElectricVehicles");

	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		cs = em.find(ChargingStation.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		cs = null;
	}

	@Test
	@DisplayName("Test Charging Station Entity ID Mappings")
	void test() {
		assertNotNull(cs);
		assertEquals("City of Sacramento - Capitol Parking Garage", cs.getStationName());
		assertEquals("1015 L St", cs.getStreetAddress());
		assertEquals("Sacramento", cs.getCity());
		assertEquals("CA", cs.getState());
		assertEquals("95814", cs.getZip());
		assertEquals("US", cs.getCountry());
		assertEquals("Non-Networked", cs.getEvNetwork());
		assertEquals("NEMA520", cs.getEvConnectorType());
	}

}
