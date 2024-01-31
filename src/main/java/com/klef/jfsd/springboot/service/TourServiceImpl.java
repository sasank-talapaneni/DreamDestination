package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Tour;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.TourRepository;
import com.klef.jfsd.springboot.repository.UserRepository;

@Service
public class TourServiceImpl implements TourService
{
	@Autowired
	private AdminRepository adminRepository;
	
	 @Autowired
	    private UserRepository userRepository;
	 
	 @Autowired
	 private TourRepository tourRepository;
	@Override
	public Tour checktourlogin(String uname, String pwd) {
		return tourRepository.checktourlogin(uname, pwd);
	}

}
