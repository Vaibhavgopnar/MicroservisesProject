package com.ticketbooking.admin.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ticketbooking.admin.dao.AdminDao;
import com.ticketbooking.admin.model.Admin;
import com.ticketbooking.connection.ConnectionDB;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PrintWriter pw;
	
    public AdminLoginServlet() {
        super();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		pw = response.getWriter();
		
		AdminDao ado = new AdminDao(ConnectionDB.getCon());
		Admin admin = ado.logAdmin(email, password);
		
		if(admin != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loggedAdmin", admin);
			response.sendRedirect("adminpanel.jsp");
		}else {
			pw.print("Unknown credential!");
		}
		
	}

}
