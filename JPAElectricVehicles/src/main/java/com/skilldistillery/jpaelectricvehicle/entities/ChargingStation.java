package com.skilldistillery.jpaelectricvehicle.entities;

import javax.persistence.*;
import javax.validation.constraints.*;


@Entity
@Table(name="electric_Vehicle_Charging_Stations")
public class ChargingStation {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(name="station_name")
	private String stationName;
	@Column(name="street_address")
	private String streetAddress;
	private String city;
	private String state;
	private String zip;
	private String country;
	@Column(name="ev_network")
	private String evNetwork;
	@Column(name="ev_connector_type")
	private String evConnectorType;
	
	
	public ChargingStation() {
		super();
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getStationName() {
		return stationName;
	}


	public void setStationName(String stationName) {
		this.stationName = stationName;
	}


	public String getStreetAddress() {
		return streetAddress;
	}


	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getZip() {
		return zip;
	}


	public void setZip(String zip) {
		this.zip = zip;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	public String getEvNetwork() {
		return evNetwork;
	}


	public void setEvNetwork(String evNetwork) {
		this.evNetwork = evNetwork;
	}


	public String getEvConnectorType() {
		return evConnectorType;
	}


	public void setEvConnectorType(String evConnectorType) {
		this.evConnectorType = evConnectorType;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((city == null) ? 0 : city.hashCode());
		result = prime * result + ((country == null) ? 0 : country.hashCode());
		result = prime * result + ((evConnectorType == null) ? 0 : evConnectorType.hashCode());
		result = prime * result + ((evNetwork == null) ? 0 : evNetwork.hashCode());
		result = prime * result + id;
		result = prime * result + ((state == null) ? 0 : state.hashCode());
		result = prime * result + ((stationName == null) ? 0 : stationName.hashCode());
		result = prime * result + ((streetAddress == null) ? 0 : streetAddress.hashCode());
		result = prime * result + ((zip == null) ? 0 : zip.hashCode());
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ChargingStation other = (ChargingStation) obj;
		if (city == null) {
			if (other.city != null)
				return false;
		} else if (!city.equals(other.city))
			return false;
		if (country == null) {
			if (other.country != null)
				return false;
		} else if (!country.equals(other.country))
			return false;
		if (evConnectorType == null) {
			if (other.evConnectorType != null)
				return false;
		} else if (!evConnectorType.equals(other.evConnectorType))
			return false;
		if (evNetwork == null) {
			if (other.evNetwork != null)
				return false;
		} else if (!evNetwork.equals(other.evNetwork))
			return false;
		if (id != other.id)
			return false;
		if (state == null) {
			if (other.state != null)
				return false;
		} else if (!state.equals(other.state))
			return false;
		if (stationName == null) {
			if (other.stationName != null)
				return false;
		} else if (!stationName.equals(other.stationName))
			return false;
		if (streetAddress == null) {
			if (other.streetAddress != null)
				return false;
		} else if (!streetAddress.equals(other.streetAddress))
			return false;
		if (zip == null) {
			if (other.zip != null)
				return false;
		} else if (!zip.equals(other.zip))
			return false;
		return true;
	}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ChargingStation [id=");
		builder.append(id);
		builder.append(", stationName=");
		builder.append(stationName);
		builder.append(", streetAddress=");
		builder.append(streetAddress);
		builder.append(", city=");
		builder.append(city);
		builder.append(", state=");
		builder.append(state);
		builder.append(", zip=");
		builder.append(zip);
		builder.append(", country=");
		builder.append(country);
		builder.append(", evNetwork=");
		builder.append(evNetwork);
		builder.append(", evConnectorType=");
		builder.append(evConnectorType);
		builder.append("]");
		return builder.toString();
	}
	
	

}
