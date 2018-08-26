package com.bytewheels.springsecurity.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.bytewheels.springsecurity.demo.service.ByteWheelService;
import com.bytewheels.springsecurity.demo.user.AvailableCars;
import com.bytewheels.springsecurity.demo.user.BookingDetails;
import com.bytewheels.springsecurity.demo.user.SearchDetails;

@Controller
//@SessionAttributes("searchResult")
public class ByteWheelsController {

	@Autowired
	private ByteWheelService byteWheelService;
	
	
	/*@RequestMapping(value="/")
	public void searchDetails (Model theModel){
		SearchDetails theSearchDetails = new SearchDetails();
		theModel.addAttribute("searchResult",theSearchDetails);
		
	}*/
	
	/*@ModelAttribute("searchResult")
	public SearchDetails setUpDates() {
		
		return new SearchDetails();
	}*/
	
	@RequestMapping(value="/searchAvailableCars",method = RequestMethod.POST)
	public String showFormForAvailableCars(HttpServletRequest request,Model theModel) {
		
		String theCategory = request.getParameter(("carCategories"));
		String theStartDate = request.getParameter("bookedFrom1");
		String theEndDate = request.getParameter("bookedTo1");
		
		System.out.println(">>>>>>>booked from   "  + theStartDate);
		System.out.println(">>>>>>>booked To   "  + theEndDate);
		List<AvailableCars> theCategoryCars = byteWheelService.getAvailableCars(theCategory,theStartDate,theEndDate);
		//theCategoryCars.se
		theModel.addAttribute("availableCars", theCategoryCars);
		theModel.addAttribute("searchResult",theStartDate);
		
		return "systems";
		
		
	}
	
	@RequestMapping(value ="/showFormForBook",  method = RequestMethod.GET)
	public String showFormForBook(Model theModel) {
		
		//create model attribute to bind form data
		BookingDetails theBookingDetails = new BookingDetails();
		
		theModel.addAttribute("CustomerBooking",theBookingDetails);
		
		
		//System.out.println("Car category : " + searchResult.getCarCategory());
		return "bookCar-form";
	}
	
	@RequestMapping(value = "/saveCustomerBooking", method = RequestMethod.GET)
    public String processAdd( @ModelAttribute("CustomerBooking") BookingDetails theBookingDetails) {
        
		byteWheelService.saveBookingDetails(theBookingDetails);			
        return "booking-confirmation";
    }
	
	/*
	
	@RequestMapping(value = "/saveCustomerBooking", method = RequestMethod.POST)
    public String processAdd(@Valid @ModelAttribute("CustomerBooking") BookingDetails theBookingDetails, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "bookCar-form";
        }

        return "booking-confirmation";
    }
	*/

}
