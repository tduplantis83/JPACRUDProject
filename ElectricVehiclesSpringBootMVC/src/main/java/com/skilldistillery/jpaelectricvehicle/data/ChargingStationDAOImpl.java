package com.skilldistillery.jpaelectricvehicle.data;

import java.util.Collections;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpaelectricvehicle.entities.ChargingStation;

@Transactional
@Service
public class ChargingStationDAOImpl implements ChargingStationDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public ChargingStation createStation(ChargingStation c) {
		// add to database
		em.persist(c);

		// update local object to match database
		em.flush();

		return c;
	}

	@Override
	public List<ChargingStation> selectStationByState(String state) {
		// build query
		String query = "Select c from ChargingStation c where c.state = :state";

		// run query
		List<ChargingStation> result = em.createQuery(query, ChargingStation.class).setParameter("state", state)
				.getResultList();

		return result;
	}

	@Override
	public List<ChargingStation> selectStationByCity(String city) {
		// build query
		String query = "Select c from ChargingStation c where c.city = :city";

		// run query
		List<ChargingStation> result = em.createQuery(query, ChargingStation.class).setParameter("city", city)
				.getResultList();

		return result;
	}

	@Override
	public ChargingStation updateStation(ChargingStation c) {
		// get relevant match from database
		ChargingStation match = em.find(ChargingStation.class, c.getId());

		match.setStationName(c.getStationName());
		match.setStreetAddress(c.getStreetAddress());
		match.setCity(c.getCity());
		match.setState(c.getState());
		match.setZip(c.getZip());
		match.setCountry(c.getCountry());
		match.setEvNetwork(c.getEvNetwork());
		match.setEvConnectorType(c.getEvConnectorType());

		// run query
		em.persist(match);

		// flush
		em.flush();

		return match;
	}

	@Override
	public boolean deleteStation(ChargingStation c) {
		ChargingStation match = em.find(ChargingStation.class, c.getId());

		em.remove(match);

		// update local actor to match database
		em.flush();

		ChargingStation stillInDB = em.find(ChargingStation.class, c.getId());
		if (stillInDB == null) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public ChargingStation selectStationByID(int id) {
		// run query
		ChargingStation result = em.find(ChargingStation.class, id);

		return result;
	}

	@Override
	public List<String> selectDistinctStates() {
		// build query
		String query = "Select distinct e.state from ChargingStation e";

		// run query
		List<String> result = em.createQuery(query, String.class).getResultList();

		Collections.sort(result);

		return result;
	}

	@Override
	public List<String> selectDistinctCity() {
		// build query
		String query = "Select distinct e.city from ChargingStation e where e.city not like '100 fifth%'";

		// run query
		List<String> result = em.createQuery(query, String.class).getResultList();

		Collections.sort(result);

		return result;
	}

	@Override
	public List<String> selectDistinctNetwork() {
		// build query
		String query = "Select distinct e.evNetwork from ChargingStation e where e.evNetwork is not NULL and e.evNetwork <> 'NULL'";

		// run query
		List<String> result = em.createQuery(query, String.class).getResultList();

		Collections.sort(result);

		return result;
	}

	@Override
	public List<String> selectDistinctConnector() {
		// build query
		String query = "Select distinct e.evConnectorType from ChargingStation e where e.evConnectorType is not NULL and e.evConnectorType <> 'NULL'";

		// run query
		List<String> result = em.createQuery(query, String.class).getResultList();

		Collections.sort(result);

		return result;
	}

	@Override
	public List<ChargingStation> selectStationByNetwork(String n) {
		String query = "Select e from ChargingStation e where e.evNetwork = :net";

		// run query
		List<ChargingStation> result = em.createQuery(query, ChargingStation.class)
				.setParameter("net", n)
				.getResultList();
		
		
		return result;
	}
	
	

	@Override
	public List<ChargingStation> selectStationByConnector(String c) {
		String query = "Select e from ChargingStation e where e.evConnectorType = :conn";

		// run query
		List<ChargingStation> result = em.createQuery(query, ChargingStation.class)
				.setParameter("conn", c)
				.getResultList();

		return result;
	}

}
