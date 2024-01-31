package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.TourBooking;
import com.klef.jfsd.springboot.repository.TourBookingRRepository;

@Service
public class TourBookingServiceImpl
{
	@Autowired
    private TourBookingRRepository bookingRepository;
    
	public String addbooking(TourBooking booking) {
		bookingRepository.save(booking);
		return "Tour Package booked Successfully";
	}
	
	public List<TourBooking> getTourBookingsByEmail(String email) {
        return bookingRepository.findByEmail(email);
    }
}
