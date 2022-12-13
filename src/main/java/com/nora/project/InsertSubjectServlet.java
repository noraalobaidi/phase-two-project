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

@WebServlet("/InsertSubjectServlet")
public class InsertSubjectServlet extends HttpServlet {


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
		String title = request.getParameter("title");
		
		if(title.equals(""))
		{
			out.println("<script type=\"text/javascript\">"); 
			out.println("alert('Please fill all the fields');"); 
			out.println("location='InsertSubject.jsp';"); 
			out.println("</script>"); 
		}
		else {
			 try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					dbCon = DriverManager.getConnection(DB_URLTOCONNECT, DB_USERNAME, DB_PASS);
					System.out.println("connected successfully");
					qry = "insert into subject (`id`, `title`) VALUES (?,?)";
//					theStatement = dbCon.createStatement();
//					resultset = theStatement.executeQuery(qry);
					preparedStatement = dbCon.prepareStatement(qry);
					preparedStatement.setNull(1,0);
					preparedStatement.setString(2, title);
			
					
					if(preparedStatement.executeUpdate() > 0) {
						
						System.out.println("Subject inserted successfully");
						out.println("<script type=\"text/javascript\">"); 
						out.println("alert('Subject inserted successfully');"); 
						out.println("location='GetSubjectServlet';"); 
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
