package p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Code3 extends HttpServlet {

	private static final long serialVersionUID = -3958281340801530168L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String first = req.getParameter("first");
		String second = req.getParameter("second");
		
		int fst = Integer.parseInt(first);
		int snd = Integer.parseInt(second);
		
		PrintWriter pw = resp.getWriter();
		pw.println("Sum = "+(fst+snd));
		pw.println("Multiplication = "+(fst*snd));
	}
}
