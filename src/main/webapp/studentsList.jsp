<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.nora.project.Student"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students List</title>
</head>
<body>

<table border ="1" width="500" align="center">
         <tr bgcolor="FFEE88">
          <th><b>id</b></th>
          <th><b>Name</b></th>
          <th><b>Civil Id</b></th>
          <th><b>Class</b></th>
          <th><b>Section</b></th>
         </tr>
        <%-- Fetching the attributes of the request object
             which was previously set by the servlet 
              "StudentServlet.java"
        --%> 
        <%ArrayList<Student> studentslist = 
            (ArrayList<Student>)request.getAttribute("studentsList");
        for(Student s:studentslist){%>
        <%-- Arranging data in tabular form
        --%>
            <tr>
                <td><%=s.id%></td>
                <td><%=s.name%></td>
                <td><%=s.civilId%></td>
                <td><%=s.theclass%></td>
                <td><%=s.section%></td>
            </tr>
            <%}%>
        </table> 


</body>
</html>