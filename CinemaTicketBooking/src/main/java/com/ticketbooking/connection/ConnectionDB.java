package com.ticketbooking.connection;

import java.sql.*;

public class ConnectionDB {

	private static Connection con;

	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieticket","root", "V2169@gpatil");
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
}
