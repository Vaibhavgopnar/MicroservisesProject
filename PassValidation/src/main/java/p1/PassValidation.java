package p1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PassValidation extends HttpServlet {

	private static final long serialVersionUID = 5011679055781221520L;
	private Connection con;
	private PreparedStatement ps;

	String s1, s2, s3, s4;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		s1 = req.getParameter("name");
		s2 = req.getParameter("mail");
		s3 = req.getParameter("pass");
		s4 = req.getParameter("cpass");

		PrintWriter pw = resp.getWriter();
		if (s3.equals(s4)) {

			pw.println(s1);
			pw.println(s2);
			pw.println("Your Password is Confirmed");
			getData();
		} else {
			pw.println("Password not Matched");
		}
	}

	public void getData() {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/practice", "root", "V2169@gpatil");

			String q = "insert into empl(name,email,password,confirmpass) values(?,?,?,?)";
			ps = con.prepareStatement(q);
			ps.setString(1, s1);
			ps.setString(2, s2);
			ps.setString(3, s3);
			ps.setString(4, s4);

			ps.executeUpdate();

		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		s1 = req.getParameter("name");
		s2 = req.getParameter("mail");
		s3 = req.getParameter("pass");
		s4 = req.getParameter("cpass");
		HttpSession session = req.getSession(true);

		PrintWriter pw = resp.getWriter();

		if (s3.equals(s4)) {

			pw.println(s1);
			pw.println(s2);
			pw.println("Your Password is Confirmed");
			getData();
		} else {
			pw.println("Password not Matched");
		}

		String sql = "select * from empl where email=? and password=?";
		try {
			
			ps = con.prepareStatement(sql);
			ps.setString(1, s2);
			ps.setString(2, s3);

			ResultSet res = ps.executeQuery();

			if (res.next() == true) {
				session.setAttribute("name", res.getString("name"));
				session.setAttribute("mail", res.getString("email"));// storing data to session
				RequestDispatcher reqd = req.getRequestDispatcher("/Display");
				reqd.forward(req, resp);
			} else {
				pw = resp.getWriter();
				pw.print("error");
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}
}
