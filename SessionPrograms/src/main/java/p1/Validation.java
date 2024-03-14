package p1;

import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class Validation extends HttpServlet  {

	private static final long serialVersionUID = -6357580712129933111L;
	private Connection con;
	private PreparedStatement pstmt;
	private PrintWriter pw;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String str1 = req.getParameter("accno");
		int accno = Integer.parseInt(str1);
		String str2 = req.getParameter("pass");
		System.out.println(accno);
		System.out.println(str2);
		
		HttpSession session = req.getSession(true);//new session created
		// jdbc code
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/practice", "root", "V2169@gpatil");
			
			String sql = "select * from employeedata where accno=? and pwd=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, accno);
			pstmt.setString(2, str2);
			
			ResultSet res = pstmt.executeQuery();

			if(res.next() == true) {
				session.setAttribute("name", res.getString("name"));//storing data to session
				RequestDispatcher reqd = req.getRequestDispatcher("/Display");
				reqd.forward(req, resp);
			}
			else {
				pw = resp.getWriter();
				pw.print("error");
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
