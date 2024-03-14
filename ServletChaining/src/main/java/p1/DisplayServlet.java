package p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DisplayServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int res_sum = (int) req.getAttribute("res_sum");
		int res_mul = (int) req.getAttribute("res_mul");
		int res_sub = (int) req.getAttribute("res_sub");
		int res_div = (int) req.getAttribute("res_div");
		
		PrintWriter pw = resp.getWriter();
		pw.println("Addition is : "+res_sum);
		pw.println("Multiplication is : "+res_mul);
		pw.println("Substraction is : "+res_sub);
		pw.println("Division is : "+res_div);
	}
}
