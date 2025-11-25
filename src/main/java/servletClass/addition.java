package servletClass;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class addition extends HttpServlet{
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException  {
		int n1=Integer.parseInt(req.getParameter("num1"));
		int n2=Integer.parseInt(req.getParameter("num2"));
		int sum=n1+n2;
		PrintWriter out=res.getWriter();
		out.println("Addition of "+n1+" + "+n2+" = "+sum);
	}

}
