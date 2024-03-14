package p1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Addition extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String s1 = req.getParameter("num1");
		int num1 = Integer.parseInt(s1);
		String s2 = req.getParameter("num2");
		int num2 = Integer.parseInt(s2);
		
		int res_sum = num1 + num2;
		
		req.setAttribute("res_sum", res_sum);
		
		RequestDispatcher reqd = req.getRequestDispatcher("/Subtraction");
		reqd.forward(req, resp);
		
	}
}
