package p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Code2 extends HttpServlet {

	private static final long serialVersionUID = 2161819974419556525L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String text = req.getParameter("name");
		String mail = req.getParameter("mail");
		String phone = req.getParameter("phone");
		String age = req.getParameter("age");
		
		int age1 = Integer.parseInt(age);
		
		PrintWriter pw = resp.getWriter();
		pw.println("Name : "+text);
		pw.println("Email : "+mail);
		pw.println("Phone No : "+phone);
		pw.println("Age : "+age1);
		
	}
}