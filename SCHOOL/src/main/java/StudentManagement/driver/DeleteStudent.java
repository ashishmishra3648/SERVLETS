package StudentManagement.driver;

import java.io.IOException;

import StudentManagement.service.StudentService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class DeleteStudent extends HttpServlet {
	StudentService service = new StudentService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		int result = service.delete(id);
		
		if(result != 0) {
			resp.sendRedirect("getall");
		} else {
			resp.sendRedirect("getall?error=delete");
		}
	}
}
