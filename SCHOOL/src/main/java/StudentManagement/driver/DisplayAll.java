package StudentManagement.driver;
import java.io.IOException;
import java.util.List;

import StudentManagement.entity.Student;
import StudentManagement.service.StudentService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/getall")
public class DisplayAll extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentService s=new StudentService();
		List<Student> a;
		
		// Get the sort parameter from request
		String sortBy = req.getParameter("sortBy");
		
		if("name".equals(sortBy)) {
			a = s.getAllSortedByName();
		} else if("age".equals(sortBy)) {
			a = s.getAllSortedByAge();
		} else {
			a = s.getall();
		}
		
		req.setAttribute("list", a);
		RequestDispatcher rd=req.getRequestDispatcher("Display.jsp");
		rd.forward(req, resp);
	}
}
