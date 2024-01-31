package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.model.HotelBooking;


@Repository
public interface HotelBookingRepository extends JpaRepository<HotelBooking, Integer>
{
	public List<HotelBooking> findByEmail(String email);
}
