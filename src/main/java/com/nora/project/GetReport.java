package com.nora.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetReport")
public class GetReport extends HttpServlet {
	public static final String DB_URLTOCONNECT ="jdbc:mysql://localhost:3306/learneracademy";
	public static final String DB_USERNAME ="root";
	public static final String DB_PASS="";
	static private Connection dbCon;
	static private String qry;
	static private Statement theStatement;
	static private ResultSet resultset;
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		 response.setContentType("text/html");
		 List <Student> students= new ArrayList();
		 List <Schedule> schedule= new ArrayList();
		 String inputClass= request.getParameter("class_item");
		 
if (inputClass.equals("class")) {
	out.println("<script type=\"text/javascript\">"); 
	out.println("alert('Please fill all the fields');"); 
	out.println("location='GetClassesReport';"); 
	out.println("</script>");
}
else {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASS);
		System.out.println("connected successfully");
		qry = "select * from student";
		theStatement = dbCon.createStatement();
		resultset = theStatement.executeQuery(qry);
		 while(resultset.next()) {
			 Student student = new Student(resultset.getInt("id"),resultset.getString("name"),
						resultset.getLong("civilId"),resultset.getString("class"),resultset.getString("section")
						);
//			 System.out.println("inputclass{"+inputClass+"},theclass{"+student.theclass+"}");
			 if(inputClass.equals(student.theclass)) {students.add(student);}
			 
		 }	
//System.out.println(students.size());
		 request.setAttribute("studentsList", students);

		qry = "select * from schedule";
		resultset = theStatement.executeQuery(qry);
		while(resultset.next()) {
			Schedule s = new Schedule(resultset.getInt("id"),resultset.getString("class_name"),resultset.getString("subject_title"),resultset.getString("teacher_name"));
			if(inputClass.equals(s.getClass_name())) {schedule.add(s);}
			
		 }	

		 request.setAttribute("ScheduleList", schedule);
		 request.setAttribute("inputClass", inputClass);
		 
			 RequestDispatcher dispatcher = request.getRequestDispatcher("/Report.jsp");
				dispatcher.forward(request, response);
		
		
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}

}
		

}
}
