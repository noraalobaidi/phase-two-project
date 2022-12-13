<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.util.ArrayList"%>
<%@page import="com.nora.project.Subject"%>
<!DOCTYPE html>
<html>
<style><%@include file="/style.css"%></style>
<head>
<meta charset="ISO-8859-1">
<title>Subjects List</title>
</head>
<body class="login">
<div class="login-header">
<h1 class="login-title">Learner Academy admin portal</h1>
<form action="index.jsp">
<input style="margin-top: 10px;font-family: Arial, Helvetica, sans-serif;font-size: 17px;width: 100px;height: 30px;border-radius: 5px;border-style:none;display:block;background-color:white;margin-left:900px;cursor:pointer"type="submit" value="Logout">
</form>
</div>
<div class="path">
<a href="homepage.jsp" style="font-size:15px">Home page</a>
<p style="font-size:15px;margin-left:10px;margin-right:10px">  >  </p>
<p style="font-size:15px">Subjects List</p>

</div>
<table border="1"width="900" align="center" style="margin-top:20px;border:1px solid #bbbbbb">
         <tr bgcolor="#a89cf4">
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
        <form action="InsertSubject.jsp">
<button class="createButton" type="submit">+</button>
</form>
</body>
</html>