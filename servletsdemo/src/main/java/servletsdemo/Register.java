package servletsdemo;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class Register extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		
		Student student = new Student(id, name, age);
		Service service = new Service();
		int res = service.save(student);
		PrintWriter pr = resp.getWriter();
		if (res > 0) {
			pr.write("<h1>Registration Successfully</h1>");
		} else {
			pr.write("<h1>Registration Failed</h1>");
		}
	}
}