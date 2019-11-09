package com.skilldistillery.jpaelectricvehicle.entities;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="electric_vehicle")
public class ElectricVehicle {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String make;
	private String model;
	@Column(name="Production_Start_Year")
	private Integer productionStartYear;
	@Column(name="Production_End_Year")
	private Integer productionEndYear;
	@Column(name="Est_Number_Produced")
	private Integer estimatedNumberProduced;
	@Column(name="Top_Speed_MPH")
	private Integer topSpeedMPH;
	@Column(name="Original_Cost_USD")
	private Double originalcostUSD;
	@Column(name="Max_Range_In_Miles")
	private Integer maxRangeInMiles;
	@Column(name="coments")
	private String comments;
	
	public ElectricVehicle() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public Integer getProductionStartYear() {
		return productionStartYear;
	}

	public void setProductionStartYear(Integer productionStartYear) {
		this.productionStartYear = productionStartYear;
	}

	public Integer getProductionEndYear() {
		return productionEndYear;
	}

	public void setProductionEndYear(Integer productionEndYear) {
		this.productionEndYear = productionEndYear;
	}

	public Integer getEstimatedNumberProduced() {
		return estimatedNumberProduced;
	}

	public void setEstimatedNumberProduced(Integer estimatedNumberProduced) {
		this.estimatedNumberProduced = estimatedNumberProduced;
	}

	public Integer getTopSpeedMPH() {
		return topSpeedMPH;
	}

	public void setTopSpeedMPH(Integer topSpeedMPH) {
		this.topSpeedMPH = topSpeedMPH;
	}

	public Double getOriginalcostUSD() {
		return originalcostUSD;
	}

	public void setOriginalcostUSD(Double originalcostUSD) {
		this.originalcostUSD = originalcostUSD;
	}

	public Integer getMaxRangeInMiles() {
		return maxRangeInMiles;
	}

	public void setMaxRangeInMiles(Integer maxRangeInMiles) {
		this.maxRangeInMiles = maxRangeInMiles;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((comments == null) ? 0 : comments.hashCode());
		result = prime * result + ((estimatedNumberProduced == null) ? 0 : estimatedNumberProduced.hashCode());
		result = prime * result + id;
		result = prime * result + ((make == null) ? 0 : make.hashCode());
		result = prime * result + ((maxRangeInMiles == null) ? 0 : maxRangeInMiles.hashCode());
		result = prime * result + ((model == null) ? 0 : model.hashCode());
		result = prime * result + ((originalcostUSD == null) ? 0 : originalcostUSD.hashCode());
		result = prime * result + ((productionEndYear == null) ? 0 : productionEndYear.hashCode());
		result = prime * result + ((productionStartYear == null) ? 0 : productionStartYear.hashCode());
		result = prime * result + ((topSpeedMPH == null) ? 0 : topSpeedMPH.hashCode());
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
		ElectricVehicle other = (ElectricVehicle) obj;
		if (comments == null) {
			if (other.comments != null)
				return false;
		} else if (!comments.equals(other.comments))
			return false;
		if (estimatedNumberProduced == null) {
			if (other.estimatedNumberProduced != null)
				return false;
		} else if (!estimatedNumberProduced.equals(other.estimatedNumberProduced))
			return false;
		if (id != other.id)
			return false;
		if (make == null) {
			if (other.make != null)
				return false;
		} else if (!make.equals(other.make))
			return false;
		if (maxRangeInMiles == null) {
			if (other.maxRangeInMiles != null)
				return false;
		} else if (!maxRangeInMiles.equals(other.maxRangeInMiles))
			return false;
		if (model == null) {
			if (other.model != null)
				return false;
		} else if (!model.equals(other.model))
			return false;
		if (originalcostUSD == null) {
			if (other.originalcostUSD != null)
				return false;
		} else if (!originalcostUSD.equals(other.originalcostUSD))
			return false;
		if (productionEndYear == null) {
			if (other.productionEndYear != null)
				return false;
		} else if (!productionEndYear.equals(other.productionEndYear))
			return false;
		if (productionStartYear == null) {
			if (other.productionStartYear != null)
				return false;
		} else if (!productionStartYear.equals(other.productionStartYear))
			return false;
		if (topSpeedMPH == null) {
			if (other.topSpeedMPH != null)
				return false;
		} else if (!topSpeedMPH.equals(other.topSpeedMPH))
			return false;
		return true;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ElectricVehicle [id=");
		builder.append(id);
		builder.append(", make=");
		builder.append(make);
		builder.append(", model=");
		builder.append(model);
		builder.append(", productionStartYear=");
		builder.append(productionStartYear);
		builder.append(", productionEndYear=");
		builder.append(productionEndYear);
		builder.append(", estimatedNumberProduced=");
		builder.append(estimatedNumberProduced);
		builder.append(", topSpeedMPH=");
		builder.append(topSpeedMPH);
		builder.append(", originalcostUSD=");
		builder.append(originalcostUSD);
		builder.append(", maxRangeInMiles=");
		builder.append(maxRangeInMiles);
		builder.append(", comments=");
		builder.append(comments);
		builder.append("]");
		return builder.toString();
	}

	

}
