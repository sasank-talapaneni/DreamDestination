package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.HotelsInfo;

public interface HotelsInfoService 
{
	public String AddHotel(HotelsInfo hotels);
	public List<HotelsInfo> ViewAllHotels();
	public HotelsInfo ViewProductByID(int hotelid);
	public void deleteHotelById(int hotelId);
}
