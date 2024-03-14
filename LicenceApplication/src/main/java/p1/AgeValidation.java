package p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AgeValidation extends HttpServlet {

	private static final long serialVersionUID = 1015944064464500469L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String age = req.getParameter("age");
		int age1 = Integer.parseInt(age);
		String address = req.getParameter("address");
		String city = req.getParameter("city");
		String state = req.getParameter("state");
		String country = req.getParameter("country");
		
		if(age1 < 18) {
			PrintWriter pw = resp.getWriter();
			pw.println("Name : "+name);
			pw.println("Age : "+age1);
			pw.println("Address : "+address);
			pw.println("City : "+city);
			pw.println("Country : "+country);
			pw.println("State : "+state);
			
			pw.println(name+" you are not eligible to attain the license as you are underaged");
			
		}else if(age1 > 60) {
			PrintWriter pw = resp.getWriter();
			pw.println("Name : "+name);
			pw.println("Age : "+age1);
			pw.println("Address : "+address);
			pw.println("City : "+city);
			pw.println("Country : "+country);
			pw.println("State : "+state);
			
			pw.println(name+" you are not eligible to attain the license as you are overaged");
			
		}else {
			PrintWriter pw = resp.getWriter();
			pw.println("Name : "+name);
			pw.println("Age : "+age1);
			pw.println("Address : "+address);
			pw.println("City : "+city);
			pw.println("Country : "+country);
			pw.println("State : "+state);
			
			pw.println(name+" is eligible to attain the license");
		}		
		
	}
	
}
