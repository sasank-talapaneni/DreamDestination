package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Tour;


@Repository
public interface TourRepository extends JpaRepository<Tour, Integer>
{
	@Query("select a from Tour a where a.username=?1 and a.password=?2 ")
	public Tour checktourlogin(String uname,String pwd);
}