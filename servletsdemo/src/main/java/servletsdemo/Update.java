package servletsdemo;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/update")
public class Update extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			int age = Integer.parseInt(req.getParameter("age"));
			Student student = new Student(id, age);
			Service service = new Service();
			int res = service.update(student);
			PrintWriter pr = resp.getWriter();
			resp.setContentType("text/html");
			if (res > 0) {
				pr.write("<h1>UPDATE Successfully</h1>");
				pr.write("<a href='Home.jsp'>Go Home</a>");
			} else {
				pr.write("<h1>UPDATE Failed</h1>");
				pr.write("<a href='Update.jsp'>Try Again</a>");
			}
		} catch (NumberFormatException e) {
			PrintWriter pr = resp.getWriter();
			resp.setContentType("text/html");
			pr.write("<h1>Invalid Input</h1>");
			pr.write("<a href='Update.jsp'>Try Again</a>");
		}
	}
}