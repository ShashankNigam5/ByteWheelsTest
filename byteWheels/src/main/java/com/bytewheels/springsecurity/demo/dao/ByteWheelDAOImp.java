package com.bytewheels.springsecurity.demo.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bytewheels.springsecurity.demo.user.AvailableCars;
import com.bytewheels.springsecurity.demo.user.BookingDetails;

@Repository
public class ByteWheelDAOImp implements ByteWheelDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<AvailableCars> getAvailableCars(String carCategory,String theStartDate, String theEndDate) {
		
		//get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		
		Query query = currentSession.createQuery("from AvailableCars where carCategory = :category and (:theStartDate not between bookedFrom and bookedTo) and (:theEndDate not between bookedFrom and bookedTo)");
		query.setParameter("category", carCategory);
		query.setParameter("theStartDate", theStartDate);
		query.setParameter("theEndDate", theEndDate);
				
		List<AvailableCars> theAvailableCars = query.list();			
						
		return theAvailableCars;
		
	}

	@Override
	public void saveBookingDetails(BookingDetails theBookingDetails) {

		//get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theBookingDetails);
		
		
	}

}
