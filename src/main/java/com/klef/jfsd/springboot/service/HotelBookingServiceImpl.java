package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.HotelBooking;
import com.klef.jfsd.springboot.repository.HotelBookingRepository;

@Service
public class HotelBookingServiceImpl 
{
  @Autowired
  public HotelBookingRepository bookingRepository;
  
  public String addbooking(HotelBooking booking) {
		bookingRepository.save(booking);
		return "Hotel Room Reserved Successfully";
	}
  
  public List<HotelBooking> getTourBookingsByEmail(String email) {
      return bookingRepository.findByEmail(email);
  }
}
