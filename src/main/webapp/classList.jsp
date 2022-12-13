<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.util.ArrayList"%>
<%@page import="com.nora.project.Classes"%>
<!DOCTYPE html>
<html>
<style><%@include file="/style.css"%></style>
<head>
<meta charset="ISO-8859-1">
<title>Classes List</title>
</head>
<body class="login">
<div class="login-header">
<h1 class="login-title">Learner Academy admin portal</h1>
</div>
<div class="path">
<a href="homepage.jsp" style="font-size:15px">Home page</a>
<p style="font-size:15px;margin-left:10px;margin-right:10px">  >  </p>
<p style="font-size:15px">Classes List</p>

</div>
<table border="1"width="900" align="center" style="margin-top:20px;border:1px solid #bbbbbb">
         <tr bgcolor="#fadd4d">
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
        <form action="InsertClass.jsp">
<button class="createButton" type="submit">+</button>
</form>
</body>
</html>