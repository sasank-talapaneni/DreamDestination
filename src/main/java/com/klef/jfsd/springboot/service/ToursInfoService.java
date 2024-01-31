package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.ToursInfo;


public interface ToursInfoService 
{
	public String AddTour(ToursInfo tours);
	public List<ToursInfo> ViewAllTours();
	public ToursInfo ViewProductByID(int tourid);
	public void deleteTourById(int tourId);
}
