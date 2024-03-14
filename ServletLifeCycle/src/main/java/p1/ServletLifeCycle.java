package p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletLifeCycle extends HttpServlet {

	private static final long serialVersionUID = 3118223260611193483L;

	@Override
	public void init() throws ServletException {
		
		System.out.println("Inside init()");
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter pw = resp.getWriter();
		pw.println("Visite console for LifeCycle");
		System.out.println("Inside service()");
		System.out.println("Destroy() will run when server is reloaded");
		System.out.println("So to reload Do some Changes and save in code to run destroy method");
		System.out.println("OK");
	}
	
	@Override
	public void destroy() {
	
		System.out.println("Inside destroy()");
	}
}
