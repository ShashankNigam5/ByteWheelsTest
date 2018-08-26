package com.bytewheels.springsecurity.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bytewheels.springsecurity.demo.dao.ByteWheelDAO;
import com.bytewheels.springsecurity.demo.user.AvailableCars;
import com.bytewheels.springsecurity.demo.user.BookingDetails;

@Service
public class ByteWheelServiceImp implements ByteWheelService {

	@Autowired
	private ByteWheelDAO byteWheelDao;
	
	@Override
	@Transactional
	public List<AvailableCars> getAvailableCars(String carCategory,String theStartDate, String theEndDate) {
		
		 return byteWheelDao.getAvailableCars(carCategory,theStartDate,theEndDate);
	}

	@Override
	@Transactional
	public void saveBookingDetails(BookingDetails theBookingDetails) {
		
		byteWheelDao.saveBookingDetails(theBookingDetails);
		
	}

}
