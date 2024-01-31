package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springboot.model.ToursInfo;
import com.klef.jfsd.springboot.repository.ToursInfoRepository;

@Service
public class ToursInfoServiceImpl implements ToursInfoService
{
@Autowired
private ToursInfoRepository toursInfoRepository;

	public String AddTour(ToursInfo tours) {
		toursInfoRepository.save(tours);
		return "Tour Added Successfully";
	}
	
	public List<ToursInfo> ViewAllTours() {
		return (List<ToursInfo>) toursInfoRepository.findAll();
	}

	public ToursInfo ViewProductByID(int tourid) {
		return toursInfoRepository.findById(tourid).get();
	}

	public void deleteTourById(int tourId) {
		toursInfoRepository.deleteById(tourId);
    }
}
