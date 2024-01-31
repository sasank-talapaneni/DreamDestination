package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.klef.jfsd.springboot.model.Hotel;
import com.klef.jfsd.springboot.model.HotelsInfo;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.HotelRepository;
import com.klef.jfsd.springboot.repository.UserRepository;

@Service
public class HotelServiceImpl implements HotelService
{
	
	@Autowired
	private AdminRepository adminRepository;
	
	 @Autowired
	 private UserRepository userRepository;
	 
	 @Autowired
	 private HotelRepository hotelRepository;

	@Override
	public Hotel checkhotellogin(String uname, String pwd) 
	{
		return hotelRepository.checkhotellogin(uname, pwd);
	}

}
