package servletClass;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Request_Dispatcher1 extends HttpServlet{
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException  {
		int n1=Integer.parseInt(req.getParameter("num1"));
		int n2=Integer.parseInt(req.getParameter("num2"));
		int sum=n1+n2;
		
		// Set the sum as a request attribute to pass to the second servlet
		req.setAttribute("sum", sum);
		req.setAttribute("num1", n1);
		req.setAttribute("num2", n2);
		
		RequestDispatcher rd=req.getRequestDispatcher("Request_Dispatcher2");
		rd.forward(req, res);
		//rd.include(req, res);
	}
}

// In forward method request is sent from user to Servlet1 and Servlet1 sends this request to Servlet2
// then Servlet2 sends response to the user.

// In include method request is sent from user to Servlet1 and Servlet1 sends this request to Servlet2
// but here Servlet2 sends response to Servlet1 and Servlet1 sends this response to the user.
// Basically,Servlet2 is not directly sending the response to the user.
