package servletsdemo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Login extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Service service = new Service();
			Connection connection = service.getConnection();
			String username = req.getParameter("username");
			String password = req.getParameter("password");
			String sql = "SELECT username,password FROM student1 where username=?";
			PreparedStatement preparedstatement = connection.prepareStatement(sql);
			preparedstatement.setString(1, username);
			ResultSet rs = preparedstatement.executeQuery();
			if (rs.next()) {
				if (username.equals(rs.getString(1)) && password.equals(rs.getString(2))) {
					RequestDispatcher rd = req.getRequestDispatcher("Home.jsp");
					rd.forward(req, resp);
				} else {
					req.setAttribute("msg", "Invalid Password");
					RequestDispatcher dis = req.getRequestDispatcher("Login.jsp");
					dis.include(req, resp);
				}
			} else {
				req.setAttribute("msg", "Invalid Username");
				RequestDispatcher dis = req.getRequestDispatcher("Login.jsp");
				dis.include(req, resp);
			}
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}