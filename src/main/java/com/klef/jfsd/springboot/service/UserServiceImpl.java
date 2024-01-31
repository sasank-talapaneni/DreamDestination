package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService
{
	@Autowired
	private UserRepository userRepository;
	
	public String adduser(User user) {
		userRepository.save(user);
		return "User Registered Successfully";
	}

	
	public User checkuserlogin(String email, String pwd) {
		return userRepository.checkuserlogin(email, pwd);
	}

}
