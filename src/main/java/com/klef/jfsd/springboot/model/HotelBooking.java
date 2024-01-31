package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "hotel_bookings_table")
public class HotelBooking
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="booking_id")
	private int id;
	
	@Column(name="arrival_date",nullable=false)
	private String arrival;
	
	@Column(name="departure_date",nullable=false)
	private String departure;
	
	@Column(name="firstname",length=30,nullable=false)
	private String firstName;
	
	@Column(name="lastname",length=30,nullable=false)
    private String lastName;
	
	@Column(name="email",nullable=false)
    private String email;
	
	@Column(name="phone",nullable=false)
    private String phone;
	
	@Column(name="adults",nullable=false)
    private int adults;
	
	@Column(name="childern",nullable=false)
    private int children;
	
	@Column(name = "roompref",nullable=false)
    private String roomPref;
	
	@Column(name = "hotel_id")
	private int hotelId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getArrival() {
		return arrival;
	}

	public void setArrival(String arrival) {
		this.arrival = arrival;
	}

	public String getDeparture() {
		return departure;
	}

	public void setDeparture(String departure) {
		this.departure = departure;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getAdults() {
		return adults;
	}

	public void setAdults(int adults) {
		this.adults = adults;
	}

	public int getChildren() {
		return children;
	}

	public void setChildren(int children) {
		this.children = children;
	}

	public String getRoomPref() {
		return roomPref;
	}

	public void setRoomPref(String roomPref) {
		this.roomPref = roomPref;
	}
	
	public int getHotelId() {
	    return hotelId;
	}

	public void setHotelId(int hotelId) {
	    this.hotelId = hotelId;
	}
	
}
