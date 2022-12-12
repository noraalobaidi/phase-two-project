package com.nora.project;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Authentication")
public class Authentication extends HttpServlet {
	private static final long serialVersionUID = 1L;
	


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username= request.getParameter("username");
		String password= request.getParameter("password");
		PrintWriter out= response.getWriter();
		
		if(username.equals("")|| password.equals(""))
		{
			out.println("<script type=\"text/javascript\">"); 
			out.println("alert('Please fill all the fields');"); 
			out.println("location='index.jsp';"); 
			out.println("</script>"); 
			
		}
		else if(username.equals("admin")&& password.equals("admin2022"))
		{
			response.sendRedirect("homepage.jsp");
		}
		else
		{
			out.println("<script type=\"text/javascript\">"); 
			out.println("alert('Wrong username or password');"); 
			out.println("location='index.jsp';"); 
			out.println("</script>"); 
			
		}
		
	}

}
