<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.nora.project.Student"%>

<!DOCTYPE html>
<html>
<style><%@include file="/style.css"%></style>
<head>
<meta charset="ISO-8859-1">
<title>Students List</title>
</head>
<body class="login">
<div class="login-header">
<h1 class="login-title">Learner Academy admin portal</h1>
</div>
<div class="path">
<a href="homepage.jsp" style="font-size:15px">Home page</a>
<p style="font-size:15px;margin-left:10px;margin-right:10px">  >  </p>
<p style="font-size:15px">Students List</p>

</div>
<table  border="1"width="1000" align="center" style="margin-top:20px;border:1px solid #bbbbbb">
         <tr bgcolor="#e885df">
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
        <form action="GetClassesCreateStudent">
        <button class="createButton" type="submit">+</button>
</form>
        


</body>
</html>