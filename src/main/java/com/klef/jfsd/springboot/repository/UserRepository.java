package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.User;

@Repository
public interface UserRepository extends JpaRepository<User,Integer>
{
 @Query("select u from User u where u.email=?1 and u.password=?2")
 public User checkuserlogin(String email,String pwd);
}
