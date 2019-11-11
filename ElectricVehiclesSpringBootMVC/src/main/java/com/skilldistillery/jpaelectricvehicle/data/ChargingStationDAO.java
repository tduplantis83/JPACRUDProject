package com.skilldistillery.jpaelectricvehicle.data;

import java.util.List;

import com.skilldistillery.jpaelectricvehicle.entities.ChargingStation;

public interface ChargingStationDAO {
	public ChargingStation createStation(ChargingStation c);
	public List<String> selectDistinctStates();
	public List<String> selectDistinctCity();
	public ChargingStation selectStationByID(int id);
	public List<ChargingStation> selectStationByState(String state);
	public List<ChargingStation> selectStationByCity(String city);
	public ChargingStation updateStation(ChargingStation c);
	public boolean deleteStation(ChargingStation c);
}
