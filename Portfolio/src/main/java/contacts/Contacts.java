package contacts;

import java.io.*;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/Contacts")
public class Contacts extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private Connection con;
	private PreparedStatement ps;
	private PrintWriter pw;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String mail = req.getParameter("email");
		String mobile = req.getParameter("number");
		String message = req.getParameter("message");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/contactme", "root", "V2169@gpatil");
			System.out.println("Connection created");
			String query = "Insert into users (uname, uemail, mobileno, umessage) values(?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, mail);
			ps.setString(3, mobile);
			ps.setString(4, message);
			
			int x = ps.executeUpdate();
			if(x > 0) {
				pw = resp.getWriter();
				pw.println("Welcome to My Channel ..!");
			}
			else {
				pw = resp.getWriter();
				pw.println("Something Went Wrong ...!");
			}
			
		} catch (ClassNotFoundException | SQLException e) {
	
			e.printStackTrace();
		}
		
	}
}
