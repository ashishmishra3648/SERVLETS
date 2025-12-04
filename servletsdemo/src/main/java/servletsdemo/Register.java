package servletsdemo;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class Register extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("name");
			int age = Integer.parseInt(req.getParameter("age"));
			String username = req.getParameter("username");
			String password = req.getParameter("password");
			String cpassword = req.getParameter("cpassword");

			if (!password.equals(cpassword)) {
				req.setAttribute("msg", "Passwords do not match!");
				RequestDispatcher dis = req.getRequestDispatcher("Register.jsp");
				dis.include(req, resp);
				return;
			}

			Student student = new Student(id, name, age, username, password, cpassword);
			Service service = new Service();
			int res = service.save(student);
			PrintWriter pr = resp.getWriter();
			if (res > 0) {
				RequestDispatcher dispatcher = req.getRequestDispatcher("Login.jsp");
				dispatcher.forward(req, resp);
			} else {
				req.setAttribute("msg", "REGISTRATION FAILED!!!");
				RequestDispatcher dis = req.getRequestDispatcher("Register.jsp");
				dis.include(req, resp);
			}
		} catch (NumberFormatException e) {
			req.setAttribute("msg", "Invalid Input Format!");
			RequestDispatcher dis = req.getRequestDispatcher("Register.jsp");
			dis.include(req, resp);
		}
	}
}