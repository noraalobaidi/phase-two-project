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

@WebServlet("/InsertClassServlet")
public class InsertClassServlet extends HttpServlet {


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
		String roomname = request.getParameter("roomName");
		
		if(roomname.equals(""))
		{
			out.println("<script type=\"text/javascript\">"); 
			out.println("alert('Please fill all the fields');"); 
			out.println("location='InsertClass.jsp';"); 
			out.println("</script>"); 
		}
		else {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASS);
				System.out.println("connected successfully");
				qry = "insert into class (`id`, `room_name`) VALUES (?,?)";
//				theStatement = dbCon.createStatement();
//				resultset = theStatement.executeQuery(qry);
				preparedStatement = dbCon.prepareStatement(qry);
				preparedStatement.setNull(1,0);
				preparedStatement.setString(2, roomname);
		
				
				if(preparedStatement.executeUpdate() > 0)
					System.out.println("class inserted successfully");
//				 request.setAttribute("studentsList", students);
//				 RequestDispatcher dispatcher = request.getRequestDispatcher("/studentsList.jsp");
//					dispatcher.forward(request, response);
				
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
		 
		 
}



}
