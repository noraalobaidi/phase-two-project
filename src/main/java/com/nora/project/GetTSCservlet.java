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

@WebServlet("/GetTSCservlet")
public class GetTSCservlet extends HttpServlet {
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
		 List <Teacher> teachers= new ArrayList();
		 List <Subject> subjects= new ArrayList();
		 List <Classes> classes= new ArrayList();
		 

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASS);
			System.out.println("connected successfully");
			qry = "select * from teacher";
			theStatement = dbCon.createStatement();
			resultset = theStatement.executeQuery(qry);
			 while(resultset.next()) {
				 Teacher teacher = new Teacher(resultset.getInt("id"),resultset.getString("name"),
							resultset.getLong("civil_id"),resultset.getInt("phone_number"));
				 teachers.add(teacher);
			 }	

			 request.setAttribute("teachersList", teachers);

			qry = "select * from class";
			resultset = theStatement.executeQuery(qry);
			while(resultset.next()) {
				 Classes c = new Classes(resultset.getInt("id"),resultset.getString("room_name"));
				 classes.add(c);
			 }	

			 request.setAttribute("classesList", classes);
			 qry = "select * from subject";
				resultset = theStatement.executeQuery(qry);
				while(resultset.next()) {
					 Subject subject = new Subject(resultset.getInt("id"),resultset.getString("title"));
					 subjects.add(subject);
				 }	

				 request.setAttribute("subjectsList", subjects);
				 RequestDispatcher dispatcher = request.getRequestDispatcher("/Newschedule.jsp");
					dispatcher.forward(request, response);
			
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		

		
	}

}
