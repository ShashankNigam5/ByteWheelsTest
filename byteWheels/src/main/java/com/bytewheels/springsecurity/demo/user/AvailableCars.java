package com.bytewheels.springsecurity.demo.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "availcars")
public class AvailableCars {

	@Id
	@Column(name="UNIQUECarID")
    private String uniqueCarID;
	
	@Column(name="CarNAME")
	private String carName;
	
	@Column(name="CarCATegory")
	private String carCategory;
	
	@Column(name="ISAVAIL")
	private boolean isAvail;
	
	@Column(name="BOOKED_DATE_FROM")
	private String bookedFrom;
	
	@Column(name="BOOKED_DATE_TO")
	private String bookedTo;
	
	@Column(name="Rate")
	private String rate;
	
	public String getUniqueCarID() {
		return uniqueCarID;
	}

	public void setUniqueCarID(String uniqueCarID) {
		this.uniqueCarID = uniqueCarID;
	}

	public String getCarName() {
		return carName;
	}

	public void setCarName(String carName) {
		this.carName = carName;
	}

	public String getCarCategory() {
		return carCategory;
	}

	public void setCarCategory(String carCategory) {
		this.carCategory = carCategory;
	}

	public boolean isAvail() {
		return isAvail;
	}

	public void setAvail(boolean isAvail) {
		this.isAvail = isAvail;
	}

	public String getBookedFrom() {
		return bookedFrom;
	}

	public void setBookedFrom(String bookedFrom) {
		this.bookedFrom = bookedFrom;
	}

	public String getBookedTo() {
		return bookedTo;
	}

	public void setBookedTo(String bookedTo) {
		this.bookedTo = bookedTo;
	}
	
	

	public String getRate() {
		return rate;
	}

	public void setRate(String rate) {
		this.rate = rate;
	}

	public AvailableCars() {
		
	}
	
	public AvailableCars(String uniqueCarID, String carName, String carCategory, boolean isAvail, String bookedFrom,
			String bookedTo) {
		
		this.uniqueCarID = uniqueCarID;
		this.carName = carName;
		this.carCategory = carCategory;
		this.isAvail = isAvail;
		this.bookedFrom = bookedFrom;
		this.bookedTo = bookedTo;
	}

	@Override
	public String toString() {
		return "AvailableCars [uniqueCarID=" + uniqueCarID + ", carName=" + carName + ", carCategory=" + carCategory
				+ ", isAvail=" + isAvail + ", bookedFrom=" + bookedFrom + ", bookedTo=" + bookedTo + "]";
	}
	
	
}
