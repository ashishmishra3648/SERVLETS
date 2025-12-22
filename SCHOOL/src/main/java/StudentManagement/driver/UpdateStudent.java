package StudentManagement.driver;

import java.io.IOException;

import StudentManagement.entity.Student;
import StudentManagement.service.StudentService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/update")
public class UpdateStudent extends HttpServlet {
	StudentService service = new StudentService();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		int age = Integer.parseInt(req.getParameter("age"));
		String name = req.getParameter("name");
		
		Student student = new Student(id, age, name);
		int result = service.update(student);
		
		if(result != 0) {
			resp.sendRedirect("getall");
		} else {
			resp.sendRedirect("update.jsp?id=" + id + "&error=true");
		}
	}
}
