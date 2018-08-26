package com.bytewheels.springsecurity.demo.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;



@Entity
@Table(name = "BookingDetails")
public class BookingDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="BookingID")
	private String bookingId;
	
	@Column(name="BookedCarID")
	private String bookedCarId;
	
	@Column(name="CustomerName")
	private String userName;
	
	@Column(name="Email")
	private String email;
	
	@Column(name="BookedCarNAME")
	private String bookedCarName;
	
	@NotNull(message = "is required")
	@Column(name="CarCategory")
	private String carCategory;
	
	@NotNull(message = "is required")
	@Column(name="BookedFROM")
	private String bookedFrom;
	
	@NotNull(message = "is required")
	@Column(name="BookedTO")
	private String bookedTo;
	
	@Column(name="AMOUNT_TOBE_PAID")
	private int total_amount;

	public String getBookingId() {
		return bookingId;
	}

	public void setBookingId(String bookingId) {
		this.bookingId = bookingId;
	}

	public String getBookedCarId() {
		return bookedCarId;
	}

	public void setBookedCarId(String bookedCarId) {
		this.bookedCarId = bookedCarId;
	}
			
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getBookedCarName() {
		return bookedCarName;
	}

	public void setBookedCarName(String bookedCarName) {
		this.bookedCarName = bookedCarName;
	}

	public String getBookedFrom() {
		return bookedFrom;
	}

	public void setBookedFrom(String bookedFrom) {
		this.bookedFrom = bookedFrom;
	}

	
	
	/*public String getCarCategory() {
		return carCategory;
	}*/
	public void setCarCategory(String carCategory) {
		this.carCategory = carCategory;
	}

	public String getBookedTo() {
		return bookedTo;
	}

	public void setBookedTo(String bookedTo) {
		this.bookedTo = bookedTo;
	}

	public int getTotal_amount() {
		return total_amount;
	}

	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
	}

	public BookingDetails() {
		
	}
	
	@Override
	public String toString() {
		return "BookingDetails [bookingId=" + bookingId + ", bookedCarId=" + bookedCarId + ", bookedCarName="
				+ bookedCarName + ", bookedFrom=" + bookedFrom + ", bookedTo=" + bookedTo + ", total_amount="
				+ total_amount + "]";
	}

	public String getCarCategory() {
		// TODO Auto-generated method stub
		return carCategory;
	}

	
	
	
}
