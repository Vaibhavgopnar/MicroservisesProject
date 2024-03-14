package p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Codegp extends HttpServlet {

	private static final long serialVersionUID = 59627071654965883L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
//		String name = req.getParameter("name");
//		PrintWriter pw = resp.getWriter();
//		pw.println(name + "Welcome to Servlet");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		PrintWriter pw = resp.getWriter();
		pw.println(name + " Welcome to Servlet");
	}
	
}
