package com.nora.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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






@WebServlet("/GetStudentsServlet")
public class GetStudentsServlet extends HttpServlet {
	public static final String DB_URLTOCONNECT ="jdbc:mysql://localhost:3306/learneracademy";
	public static final String DB_USERNAME ="root";
	public static final String DB_PASS="";
	static private Connection dbCon;
	static private String qry;
	static private PreparedStatement preparedStatement;
	static private Statement theStatement;
	static private ResultSet resultset;
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		 response.setContentType("text/html");
		 List <Student> students= new ArrayList();
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASS);
			System.out.println("connected successfully");
			qry = "select * from student";
			theStatement = dbCon.createStatement();
			resultset = theStatement.executeQuery(qry);
//			 students.add(new Student(1,"nora",1234567890,"11th","Art"));
			 while(resultset.next()) {
				 Student student = new Student(resultset.getInt("id"),resultset.getString("name"),
							resultset.getLong("civilId"),resultset.getString("grade"),resultset.getString("section")
							);
				 students.add(student);
			 }	
			 out.println("hi");
//			 for(Student student: students) {
//				 out.println(student.civilId);
//			 }
			 request.setAttribute("studentsList", students);
			 RequestDispatcher dispatcher = request.getRequestDispatcher("/studentsList.jsp");
				dispatcher.forward(request, response);
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

}
