package com.ticketbooking.admin.dao;

import java.sql.*;

import com.ticketbooking.admin.model.Admin;
import com.ticketbooking.admin.services.AdminService;

public class AdminDao implements AdminService {

	private String query;
	private PreparedStatement pst;
	private Connection con;
	private ResultSet rs;

	public AdminDao(Connection con) {
		super();
		this.con = con;
	}

	@Override
	public Admin logAdmin(String email, String password) {
		
		Admin admin = null;
		
		query = "select * from admin where email=? and password=?";
		try {
			pst = this.con.prepareStatement(query);
			pst.setString(1, email);
			pst.setString(2, password);
			rs = pst.executeQuery();
			
			if(rs.next()) {
				admin = new Admin();
				admin.setId(rs.getInt("id"));
				admin.setName(rs.getString("name"));
				admin.setEmail(rs.getString("email"));
				admin.setDob(rs.getString("dob"));
				admin.setRole(rs.getString("role"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return admin;
	}
}
