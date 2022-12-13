<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.nora.project.Classes"%>
 <%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<style><%@include file="/style.css"%></style>
<head>
<meta charset="ISO-8859-1">
<title>Insert Student</title>
</head>
<body class="login">
<div class="login-header">
<h1 class="login-title">Learner Academy admin portal</h1>
<form action="index.jsp">
<input style="margin-top: 10px;font-family: Arial, Helvetica, sans-serif;font-size: 17px;width: 100px;height: 30px;border-radius: 5px;border-style:none;display:block;background-color:white;margin-left:900px;cursor:pointer"type="submit" value="Logout">
</form>
</div>
<div class="path" style="margin-right:1200px">
<a href="homepage.jsp" style="font-size:15px">Home page</a>
<p style="font-size:15px;margin-left:10px;margin-right:10px">  >  </p>
<a href="GetStudentsServlet" style="font-size:15px">Students List</a>
<p style="font-size:15px;margin-left:10px;margin-right:10px">  >  </p>
<p style="font-size:15px">Insert Student</p>

</div>
<form action="InsertStudentServlet">
<h5 style="margin:0;"><label >Full name</label></h5>
<input style="margin-bottom:10px;font-size:17px;height:30px;border-radius: 5px;border-width:1px;border-color:#cccccc;width:350px"type="text" placeholder="" name="name">
<h5 style="margin:0;font-family: Arial, Helvetica, sans-serif;"><label >Civil Id</label></h5>
<input style="margin-bottom:10px;font-size:17px;height:30px;border-radius: 5px;border-width:1px;border-color:#cccccc;width:350px"type="number" placeholder="" name="civilId">
<!--<input type="text" placeholder="grade" name="grade">  -->
<h5 style="margin:0;font-family: Arial, Helvetica, sans-serif;"><label >Class</label></h5>
<select name="class_item" style="margin-bottom:10px;font-size:17px;height:35px;border-radius: 5px;border-width:1px;border-color:#cccccc;width: 356px;">
<option value="class">class</option>
 <%
 ArrayList<Classes> classesslist =(ArrayList<Classes>)request.getAttribute("classesList");
        for(Classes c:classesslist){%>
        <%-- Arranging data in tabular form
        --%>
            <option value ="<%=c.getRoomName()%>"><%=c.getRoomName() %></option>
               
            <%}%>
</select>
<h5 style="margin:0;font-family: Arial, Helvetica, sans-serif;"><label >Section</label></h5>
<select name="section_item" style="margin-bottom:10px;font-size:17px;height:35px;border-radius: 5px;border-width:1px;border-color:#cccccc;width: 356px;">
<option value="section">section</option>
<option value="Art">Art</option>
<option value="Science">Science</option>
</select>
<!--<input type="text" placeholder="section" name="section">  -->

<input style="margin-top: 10px;font-family: Arial, Helvetica, sans-serif;font-size: 17px;width: 356px;height: 30px;border-radius: 5px;border-style:none;display:block"type="submit" value="Submit">
</form>
</body>
</html>