package com.nora.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertScheduleServlet")
public class InsertScheduleServlet extends HttpServlet {
	public static final String DB_URLTOCONNECT ="jdbc:mysql://localhost:3306/learneracademy";
	public static final String DB_USERNAME ="root";
	public static final String DB_PASS="";
	static private Connection dbCon;
	static private String qry;
	static private PreparedStatement preparedStatement;
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String teacher=(String) request.getParameter("teacher_item");
		String subject=(String) request.getParameter("subject_item");
		String theClass=(String) request.getParameter("class_item");	
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		if (teacher.equals("teacher_name")||subject.equals("subject_name")||theClass.equals("class_name"))
		{
			
			
			out.println("<script type=\"text/javascript\">"); 
			out.println("alert('Please fill all the fields');"); 
			out.println("location='GetTSCservlet';"); 
			out.println("</script>"); 	
		}
		else { try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASS);
			System.out.println("connected successfully");
			qry = "insert into schedule (`id`, `class_name`, `subject_title`, `teacher_name`) VALUES (?,?,?,?)";

			preparedStatement = dbCon.prepareStatement(qry);
			preparedStatement.setNull(1,0);
			preparedStatement.setString(2, theClass);
			preparedStatement.setString(3, subject);
			preparedStatement.setString(4, teacher);
	
			
			if(preparedStatement.executeUpdate() > 0) {

		    System.out.println("new class inserted successfully to the schedule");
			out.println("<script type=\"text/javascript\">"); 
			out.println("alert('Teacher assigned successfully');"); 
			out.println("location='GetTSCservlet';"); 
			out.println("</script>");
		}
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
}
		 
		

	}

}
