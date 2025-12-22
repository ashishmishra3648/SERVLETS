package StudentManagement.service;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import StudentManagement.entity.Student;
public class StudentService {
	private static String url="jdbc:postgresql://localhost:5432/school?user=postgres&password=123";
	private static Connection connection;
	static
	{
		try {
			Class.forName("org.postgresql.Driver");
			connection=DriverManager.getConnection(url);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public int save(Student st)
	{
		int res=0;
		int id=st.getId();
		int age=st.getAge();
		String name=st.getName();
		String sql="INSERT into student values(?,?,?)";
		try {
			PreparedStatement preparestatement=connection.prepareStatement(sql);
			preparestatement.setInt(1, id);
			preparestatement.setInt(2, age);
			preparestatement.setString(3, name);
			res=preparestatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	public List<Student> getall()
	{
		String sql="SELECT* from student";
		List<Student>l=new ArrayList<Student>();
		try {
			PreparedStatement preparestatement=connection.prepareStatement(sql);
			ResultSet rs=preparestatement.executeQuery();
			while(rs.next())
			{
				l.add(new Student(rs.getInt(1),rs.getInt(2),rs.getString(3)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return l;
	}
	
	public List<Student> getAllSortedByName()
	{
		String sql="SELECT* from student ORDER BY name ASC";
		List<Student>l=new ArrayList<Student>();
		try {
			PreparedStatement preparestatement=connection.prepareStatement(sql);
			ResultSet rs=preparestatement.executeQuery();
			while(rs.next())
			{
				l.add(new Student(rs.getInt(1),rs.getInt(2),rs.getString(3)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return l;
	}
	
	public List<Student> getAllSortedByAge()
	{
		String sql="SELECT* from student ORDER BY age ASC";
		List<Student>l=new ArrayList<Student>();
		try {
			PreparedStatement preparestatement=connection.prepareStatement(sql);
			ResultSet rs=preparestatement.executeQuery();
			while(rs.next())
			{
				l.add(new Student(rs.getInt(1),rs.getInt(2),rs.getString(3)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return l;
	}
	
	public int update(Student st)
	{
		int res=0;
		int id=st.getId();
		int age=st.getAge();
		String name=st.getName();
		String sql="UPDATE student SET age=?, name=? WHERE id=?";
		try {
			PreparedStatement preparestatement=connection.prepareStatement(sql);
			preparestatement.setInt(1, age);
			preparestatement.setString(2, name);
			preparestatement.setInt(3, id);
			res=preparestatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	
	public int delete(int id)
	{
		int res=0;
		String sql="DELETE FROM student WHERE id=?";
		try {
			PreparedStatement preparestatement=connection.prepareStatement(sql);
			preparestatement.setInt(1, id);
			res=preparestatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	
	public Student getById(int id)
	{
		Student student=null;
		String sql="SELECT* from student WHERE id=?";
		try {
			PreparedStatement preparestatement=connection.prepareStatement(sql);
			preparestatement.setInt(1, id);
			ResultSet rs=preparestatement.executeQuery();
			if(rs.next())
			{
				student=new Student(rs.getInt(1),rs.getInt(2),rs.getString(3));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return student;
	}
}