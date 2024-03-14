package com.ticketbooking.admin.model;

public class Person {

	private String name;
	private String gender;
	private String dob;
	public Person(String name, String gender, String dob) {
		super();
		this.name = name;
		this.gender = gender;
		this.dob = dob;
	}
	public Person() {
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	
	
}
