<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.util.ArrayList"%>
<%@page import="com.nora.project.Subject"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subjects List</title>
</head>
<body>
<table border ="1" width="500" align="center">
         <tr bgcolor="FFEE88">
          <th><b>id</b></th>
          <th><b>Title</b></th>
         </tr>
        <%-- Fetching the attributes of the request object
             which was previously set by the servlet 
              "StudentServlet.java"
        --%> 
        <%ArrayList<Subject> subjectslist = 
            (ArrayList<Subject>)request.getAttribute("subjectsList");
        for(Subject s:subjectslist){%>
        <%-- Arranging data in tabular form
        --%>
            <tr>
                <td><%=s.getId()%></td>
                <td><%=s.getTitle()%></td>
            </tr>
            <%}%>
        </table> 
</body>
</html>