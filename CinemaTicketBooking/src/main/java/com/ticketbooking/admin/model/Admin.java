package com.ticketbooking.admin.model;

public class Admin extends Person {

	private int id;
	private String email;
	private String password;
	private String role;
	public Admin() {
		
	}
	public Admin(String name, String gender, String dob, int id, String email, String password, String role) {
		super(name, gender, dob);
		this.id = id;
		this.email = email;
		this.password = password;
		this.role = role;
	}
	public Admin(String name, String gender, String dob, String email, String password, String role) {
		super(name, gender, dob);
		this.email = email;
		this.password = password;
		this.role = role;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	
	
}
