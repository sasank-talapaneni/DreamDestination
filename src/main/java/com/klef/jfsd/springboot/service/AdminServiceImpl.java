package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Hotel;
import com.klef.jfsd.springboot.model.HotelBooking;
import com.klef.jfsd.springboot.model.Tour;
import com.klef.jfsd.springboot.model.TourBooking;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.HotelBookingRepository;
import com.klef.jfsd.springboot.repository.HotelRepository;
import com.klef.jfsd.springboot.repository.TourBookingRRepository;
import com.klef.jfsd.springboot.repository.TourRepository;
import com.klef.jfsd.springboot.repository.UserRepository;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminRepository adminRepository;
	
	 @Autowired
	    private UserRepository userRepository;
	 
	 @Autowired
	   private HotelRepository hotelRepository;

	 @Autowired
	   private TourRepository tourRepository;
	 
	// Inside AdminService
	 @Override
		public List<User> viewallusers() 
		{
			return userRepository.findAll();
		}


	@Override
	public Admin checkadminlogin(String uname, String pwd) 
	{
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	  public User viewuserbyid(int eid) {
	      Optional<User> obj = userRepository.findById(eid);

	      if (obj.isPresent()) {
	          return obj.get();
	      } else {
	          return null;
	      }
	  }


	  @Override
	  public String deleteuser(int eid) {
	      Optional<User> obj = userRepository.findById(eid);

	      String msg;

	      if (obj.isPresent()) {
	          User user = obj.get();

	          userRepository.delete(user);

	          msg = "User Deleted Successfully";
	      } else {
	          msg = "User Not Found";
	      }

	      return msg;
	  }


	  @Override
	  public List<Tour> viewalltours() {
	    return tourRepository.findAll();
	  }

	  @Override
	  public List<Hotel> viewallhotels() {
	    return hotelRepository.findAll();
	  }	
	  @Autowired
	   private HotelBookingRepository hotelBookingRepository;
	   
	   @Autowired
	   private TourBookingRRepository tourBookingRRepository;
	  @Override
	  public List<HotelBooking> viewallhotelbookings() {
	    return hotelBookingRepository.findAll();
	  }


	  @Override
	  public List<TourBooking> viewalltourbookings() {
	    return tourBookingRRepository.findAll();
	  }
}
