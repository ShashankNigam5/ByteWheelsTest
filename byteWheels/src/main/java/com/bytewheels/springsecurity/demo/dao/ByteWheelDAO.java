package com.bytewheels.springsecurity.demo.dao;

import java.util.List;

import com.bytewheels.springsecurity.demo.user.AvailableCars;
import com.bytewheels.springsecurity.demo.user.BookingDetails;

public interface ByteWheelDAO {

	public List<AvailableCars> getAvailableCars(String carCategory,String theStartDate, String theEndDate);
	
	public void saveBookingDetails(BookingDetails theBookingDetails);
	
}
