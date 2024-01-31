package com.klef.jfsd.springboot.model;

import java.sql.Blob;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "hotels_info")
public class HotelsInfo 
{
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id;

@Column(name = "hotel_name",nullable=false,length=50)
private String name;

@Column(name = "hotel_location",nullable=false,length=50)
private String location;

@Column(name = "hotel_desc",nullable=false,length=1000)
private String description;

@Column(name = "hotel_price",nullable=false)
private double price;

private Blob image;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getLocation() {
	return location;
}

public void setLocation(String location) {
	this.location = location;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public double getPrice() {
	return price;
}

public void setPrice(double price) {
	this.price = price;
}

public Blob getImage() {
	return image;
}

public void setImage(Blob image) {
	this.image = image;
}
}
