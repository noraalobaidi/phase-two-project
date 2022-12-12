<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.util.ArrayList"%>
<%@page import="com.nora.project.Classes"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Class List</title>
</head>
<body>
<table border ="1" width="500" align="center">
         <tr bgcolor="FFEE88">
          <th><b>id</b></th>
          <th><b>Room Name</b></th>
         </tr>
        <%-- Fetching the attributes of the request object
             which was previously set by the servlet 
              "StudentServlet.java"
        --%> 
        <%ArrayList<Classes> classeslist = 
            (ArrayList<Classes>)request.getAttribute("classesList");
        for(Classes c:classeslist){%>
        <%-- Arranging data in tabular form
        --%>
            <tr>
                <td><%=c.getId()%></td>
                <td><%=c.getRoomName()%></td>
            </tr>
            <%}%>
        </table> 
</body>
</html>