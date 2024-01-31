package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Hotel;


@Repository
public interface HotelRepository extends JpaRepository<Hotel, Integer>
{
	@Query("select a from Hotel a where a.username=?1 and a.password=?2 ")
	public Hotel checkhotellogin(String uname,String pwd);
}
