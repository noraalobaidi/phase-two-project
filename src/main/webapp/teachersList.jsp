<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.ArrayList"%>
<%@page import="com.nora.project.Teacher"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teachers List</title>
</head>
<body>
<table border ="1" width="500" align="center">
         <tr bgcolor="FFEE88">
          <th><b>id</b></th>
          <th><b>Name</b></th>
          <th><b>Civil Id</b></th>
          <th><b>phone number</b></th>
         </tr>
        <%-- Fetching the attributes of the request object
             which was previously set by the servlet 
              "StudentServlet.java"
        --%> 
        <%ArrayList<Teacher> teacherslist = 
            (ArrayList<Teacher>)request.getAttribute("teachersList");
        for(Teacher t:teacherslist){%>
        <%-- Arranging data in tabular form
        --%>
            <tr>
                <td><%=t.getId()%></td>
                <td><%=t.getName()%></td>
                <td><%=t.getCivilId()%></td>
                <td><%=t.getPhone()%></td>
            </tr>
            <%}%>
        </table> 

</body>
</html>