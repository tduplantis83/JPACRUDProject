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

class ElectricVehicleTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private ElectricVehicle e;

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
		e = em.find(ElectricVehicle.class, 27);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		e = null;
	}

	@Test
	@DisplayName("Test Electric Vehicle Entity ID Mappings")
	void test() {
		assertNotNull(e);
		assertEquals("Tesla", e.getMake());
		assertEquals("Model Y", e.getModel());
		assertEquals(2020, e.getProductionStartYear());
		assertNull(e.getProductionEndYear());
		assertNull(e.getEstimatedNumberProduced());
		assertEquals(140, e.getTopSpeedMPH());
		assertEquals(39000, e.getOriginalcostUSD(), 0.001);
		assertEquals(300, e.getMaxRangeInMiles());
		assertEquals("", e.getComments());
	}

}
