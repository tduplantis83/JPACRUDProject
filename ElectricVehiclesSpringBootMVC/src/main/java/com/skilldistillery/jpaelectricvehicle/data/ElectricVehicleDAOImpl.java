package com.skilldistillery.jpaelectricvehicle.data;

import java.util.Collections;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpaelectricvehicle.entities.ElectricVehicle;

@Transactional
@Service
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
	public ElectricVehicle selectVehicleByID(int id) {
		// run query
		ElectricVehicle result = em.find(ElectricVehicle.class, id);

		return result;
	}

	@Override
	public List<ElectricVehicle> selectVehicleByMake(String m) {
		// build query
		String query = "Select e from ElectricVehicle e where e.make = :make";

		// run query
		List<ElectricVehicle> result = em.createQuery(query, ElectricVehicle.class).setParameter("make", m)
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
	public ElectricVehicle updateVehicle(ElectricVehicle ev) {
		// get relevant match from database
		ElectricVehicle matchingEV = em.find(ElectricVehicle.class, ev.getId());

		matchingEV.setMake(ev.getMake());
		matchingEV.setModel(ev.getModel());
		matchingEV.setProductionStartYear(ev.getProductionStartYear());
		matchingEV.setProductionEndYear(ev.getProductionEndYear());
		matchingEV.setEstimatedNumberProduced(ev.getEstimatedNumberProduced());
		matchingEV.setTopSpeedMPH(ev.getTopSpeedMPH());
		matchingEV.setOriginalcostUSD(ev.getOriginalcostUSD());
		matchingEV.setMaxRangeInMiles(ev.getMaxRangeInMiles());
		matchingEV.setComments(ev.getComments());
		// run query
		em.persist(matchingEV);

		// flush
		em.flush();

		return matchingEV;
	}

	@Override
	public boolean deleteVehicle(ElectricVehicle ev) {
		ElectricVehicle matchingEV = em.find(ElectricVehicle.class, ev.getId());

		em.remove(matchingEV);

		// update local actor to match database
		em.flush();

		ElectricVehicle stillInDB = em.find(ElectricVehicle.class, ev.getId());
		if (stillInDB == null) {
			return true;
		} else {
			return false;
		}

	}

	@Override
	public List<String> selectdistinctVehicleMakes() {
		// build query
		String query = "Select distinct e.make from ElectricVehicle e";

		// run query
		List<String> result = em.createQuery(query, String.class).getResultList();

		Collections.sort(result);

		return result;
	}


}
