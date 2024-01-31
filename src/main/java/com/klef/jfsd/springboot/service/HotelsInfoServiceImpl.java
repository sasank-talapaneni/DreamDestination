package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.HotelsInfo;
import com.klef.jfsd.springboot.repository.HotelsInfoRepository;

@Service
public class HotelsInfoServiceImpl implements HotelsInfoService
{

	@Autowired
	private HotelsInfoRepository hotelRepository;
	
	public String AddHotel(HotelsInfo hotels) {
		hotelRepository.save(hotels);
		return "Hotel Added Successfully";
	}

	public List<HotelsInfo> ViewAllHotels() {
		return (List<HotelsInfo>) hotelRepository.findAll();
	}

	public HotelsInfo ViewProductByID(int hotelid) {
		return hotelRepository.findById(hotelid).get();
	}

	public void deleteHotelById(int hotelId) {
        hotelRepository.deleteById(hotelId);
    }
  
}
