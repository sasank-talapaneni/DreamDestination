package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.TourBooking;

public interface TourBookingRRepository extends JpaRepository<TourBooking, Integer>
{
	public List<TourBooking> findByEmail(String email);
}
