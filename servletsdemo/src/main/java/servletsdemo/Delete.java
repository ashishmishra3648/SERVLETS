package servletsdemo;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class Delete extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		Student student = new Student(id);
		Service service = new Service();
		int res = service.delete(student);
		PrintWriter pr = resp.getWriter();
		if (res > 0) {
			pr.write("<h1>DELETE Successfully</h1>");
		} else {
			pr.write("<h1>DELETE Failed</h1>");
		}
	}
}