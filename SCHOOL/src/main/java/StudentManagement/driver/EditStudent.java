package StudentManagement.driver;

import java.io.IOException;

import StudentManagement.entity.Student;
import StudentManagement.service.StudentService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/edit")
public class EditStudent extends HttpServlet {
	StudentService service = new StudentService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		Student student = service.getById(id);
		
		if(student != null) {
			req.setAttribute("student", student);
			RequestDispatcher rd = req.getRequestDispatcher("update.jsp");
			rd.forward(req, resp);
		} else {
			resp.sendRedirect("getall?error=notfound");
		}
	}
}
