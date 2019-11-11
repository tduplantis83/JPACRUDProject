package com.skilldistillery.jpaelectricvehicle.data;

import java.util.List;

import com.skilldistillery.jpaelectricvehicle.entities.ElectricVehicle;

public interface ElectricVehicleDAO {
	public ElectricVehicle createVehicle(ElectricVehicle ev);
	public ElectricVehicle selectVehicleByID(int id);
	public List<ElectricVehicle> selectVehicleByMake(String make);
	public List<ElectricVehicle> selectAllVehicles();
	public List<String> selectdistinctVehicleMakes();
	public ElectricVehicle updateVehicle(ElectricVehicle ev);
	public boolean deleteVehicle(ElectricVehicle ev);
}
