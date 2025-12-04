package servletsdemo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Service {
	private static String url = "jdbc:postgresql://localhost:5432/school";
	private static String user = "postgres";
	private static String password = "123";
	
	static {
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public Connection getConnection() throws SQLException {
		return DriverManager.getConnection(url, user, password);
	}

	public int save(Student st) {
		int res = 0;
		String sql = "INSERT into student1(id, name, age, username, password) values(?,?,?,?,?)";
		
		try (Connection connection = getConnection();
		     PreparedStatement preparedstatement = connection.prepareStatement(sql)) {
			
			preparedstatement.setInt(1, st.getId());
			preparedstatement.setString(2, st.getName());
			preparedstatement.setInt(3, st.getAge());
			preparedstatement.setString(4, st.getUsername());
			preparedstatement.setString(5, st.getPassword());
			res = preparedstatement.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	}

	public int update(Student st) {
		int res = 0;
		String sql = "UPDATE student1 set age=? where id=?";
		
		try (Connection connection = getConnection();
		     PreparedStatement preparedstatement = connection.prepareStatement(sql)) {
			
			preparedstatement.setInt(1, st.getAge());
			preparedstatement.setInt(2, st.getId());
			res = preparedstatement.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	}

	public int delete(Student st) {
		String sql = "DELETE from student1 where id=?";
		int res = 0;
		
		try (Connection connection = getConnection();
		     PreparedStatement preparestatement = connection.prepareStatement(sql)) {
			
			preparestatement.setInt(1, st.getId());
			res = preparestatement.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return res;
	}
}