package com.skilldistillery.jpaelectricvehicle.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpaelectricvehicle.entities.ElectricVehicle;

@Service
@Transactional
public class ElectricVehicleDAOImpl implements ElectricVehicleDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public ElectricVehicle createVehicle(ElectricVehicle ev) {

		// add to database
		em.persist(ev);

		// update local object to match database
		em.flush();


		return ev;
	}

	@Override
	public List<ElectricVehicle> selectVehicleByID(int id) {
		// build query
		String query = "Select e from ElectricVehicle e where e.id = :id";

		// run query
		List<ElectricVehicle> result = em.createQuery(query, ElectricVehicle.class).setParameter("id", id)
				.getResultList();

		return result;
	}

	@Override
	public List<ElectricVehicle> selectVehicleByMake(String make) {
		// build query
		String query = "Select e from ElectricVehicle e where e.make = :make";

		// run query
		List<ElectricVehicle> result = em.createQuery(query, ElectricVehicle.class).setParameter("make", make)
				.getResultList();

		return result;

	}

	@Override
	public List<ElectricVehicle> selectAllVehicles() {
		// build query
		String query = "Select e from ElectricVehicle e";

		// run query
		List<ElectricVehicle> result = em.createQuery(query, ElectricVehicle.class).getResultList();

		return result;
	}

	@Override
	@Transactional
	public ElectricVehicle updateVehicle(ElectricVehicle ev) {

		// run query
		em.persist(ev);

		// flush
		em.flush();

		return ev;
	}

	@Override
	@Transactional
	public int deleteVehicle(int id) {
		// build query
		String query = "Select e from ElectricVehicle e where e.id = :id";

		// get relevant addresses from database
		List<ElectricVehicle> matchingEV = em.createQuery(query, ElectricVehicle.class).setParameter("id", id)
				.getResultList();

		// delete each match from DB
		if (matchingEV.size() > 0) {
			for (ElectricVehicle ev : matchingEV) {
				em.remove(matchingEV);
			}
		}

		// update local actor to match database
		em.flush();

		// run query again to see if the actor was deleted or not
		// find requested actor
		int countDeleted = 0;
		for (ElectricVehicle ev : matchingEV) {
			// looks for address in DB & returns true if found
			// set boolean to opposite
			// success being true means address was deleted
			boolean success = !em.contains(ev);
			if (success) {
				countDeleted++;
			}
		}
		if (countDeleted == matchingEV.size()) {
			return id;
		} else {
			return 0;
		}
	}

}
