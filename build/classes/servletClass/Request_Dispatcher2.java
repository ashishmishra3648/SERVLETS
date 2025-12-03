package servletClass;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Request_Dispatcher2 extends HttpServlet {
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException  {
		// Retrieve the values passed from Request_Dispatcher1
		int sum = (Integer) req.getAttribute("sum");
		int num1 = (Integer) req.getAttribute("num1");
		int num2 = (Integer) req.getAttribute("num2");
		
		// Display the result
		PrintWriter out=res.getWriter();
		res.setContentType("text/html");
		out.println("<html><body>");
		out.println("<h2>Request Dispatcher Example - Second Servlet</h2>");
		out.println("<p>First Number: " + num1 + "</p>");
		out.println("<p>Second Number: " + num2 + "</p>");
		out.println("<p><strong>Sum: " + sum + "</strong></p>");
		out.println("<br><a href='Request_Dispatcher.html'>Go Back</a>");
		out.println("</body></html>");
	}

}
