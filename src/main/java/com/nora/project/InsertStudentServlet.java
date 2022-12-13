package com.nora.project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertStudentServlet")
public class InsertStudentServlet extends HttpServlet {
	public static final String DB_URLTOCONNECT ="jdbc:mysql://localhost:3306/learneracademy";
	public static final String DB_USERNAME ="root";
	public static final String DB_PASS="";
	static private Connection dbCon;
	static private String qry;
	static private PreparedStatement preparedStatement;
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String name = request.getParameter("name");
		String civilIdString = request.getParameter("civilId");
		String theclass = request.getParameter("class_item");
		String section = request.getParameter("section_item");
		
		if (name.equals("")||civilIdString.equals("")||theclass.equals("class")||section.equals("section"))
		{
			
			
			out.println("<script type=\"text/javascript\">"); 
			out.println("alert('Please fill all the fields');"); 
			out.println("location='GetClassesCreateStudent';"); 
			out.println("</script>"); 
//			response.sendRedirect("InsertStudent.jsp");
			
		}
		else {
			try {
				 long civilId=Long.parseLong(civilIdString); 
					Class.forName("com.mysql.cj.jdbc.Driver");
					dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASS);
					System.out.println("connected successfully");
					qry = "insert into student (`id`, `name`, `civilId`, `class`, `section`) VALUES (?,?,?,?,?)";
//					theStatement = dbCon.createStatement();
//					resultset = theStatement.executeQuery(qry);
					preparedStatement = dbCon.prepareStatement(qry);
					preparedStatement.setNull(1,0);

					preparedStatement.setString(2, name);

					preparedStatement.setLong(3, civilId);
					
					preparedStatement.setString(4, theclass);
					
					preparedStatement.setString(5, section);
					
					if(preparedStatement.executeUpdate() > 0) {
						
						System.out.println("student inserted successfully");
						out.println("<script type=\"text/javascript\">"); 
						out.println("alert('Student inserted successfully');"); 
						out.println("location='GetStudentsServlet';"); 
						out.println("</script>");
					}
						
//					 request.setAttribute("studentsList", students);
//					 RequestDispatcher dispatcher = request.getRequestDispatcher("/studentsList.jsp");
//						dispatcher.forward(request, response);
					 
					
				} catch (ClassNotFoundException e) {
					
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		
		 
		 
		
	}

}
