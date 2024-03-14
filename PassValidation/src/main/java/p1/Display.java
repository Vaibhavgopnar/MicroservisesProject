package p1;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Display extends HttpServlet{

	private static final long serialVersionUID = -5826207773320316018L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();//accessing existing session
		PrintWriter writer = resp.getWriter();
		writer.println("Name	: "+session.getAttribute("name"));
		writer.println("Email	: "+session.getAttribute("mail"));
	}
}
