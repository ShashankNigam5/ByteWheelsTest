package com.bytewheels.springsecurity.demo.service;

import java.util.List;

import com.bytewheels.springsecurity.demo.user.AvailableCars;
import com.bytewheels.springsecurity.demo.user.BookingDetails;

public interface ByteWheelService {

	public List<AvailableCars> getAvailableCars(String carCategory, String theStartDate, String theEndDate); 
	
	public void saveBookingDetails(BookingDetails theBookingDetails);
}
