package com.ticketbooking.admin.services;

import com.ticketbooking.admin.model.Admin;

public interface AdminService {

	public Admin logAdmin(String email, String password);
}
