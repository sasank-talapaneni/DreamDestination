package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.ToursInfo;

@Repository
public interface ToursInfoRepository extends JpaRepository<ToursInfo, Integer>
{

}
