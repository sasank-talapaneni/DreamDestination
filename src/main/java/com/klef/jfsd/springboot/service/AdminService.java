package com.klef.jfsd.springboot.service;


import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Hotel;
import com.klef.jfsd.springboot.model.HotelBooking;
import com.klef.jfsd.springboot.model.Tour;
import com.klef.jfsd.springboot.model.TourBooking;
import com.klef.jfsd.springboot.model.User;


public interface AdminService 
{
public Admin checkadminlogin(String uname,String pwd); 
//user
public List<User> viewallusers(); 
public User viewuserbyid(int eid);
public String deleteuser(int eid);

//tour
public List<Tour> viewalltours(); 

//hotel
public List<Hotel> viewallhotels();
public List<HotelBooking> viewallhotelbookings();

public List<TourBooking> viewalltourbookings();
}
