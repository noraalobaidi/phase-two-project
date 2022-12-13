<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.ArrayList"%>
<%@page import="com.nora.project.Teacher"%>
<%@page import="com.nora.project.Subject"%>
<%@page import="com.nora.project.Classes"%>
<!DOCTYPE html>
<html>
<style><%@include file="/style.css"%></style>
<head>
<meta charset="ISO-8859-1">
<title>Assign Teacher to a Subject</title>
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
<p style="font-size:15px">Assign Teacher to a Subject</p>

</div>


<form action="InsertScheduleServlet">
<h5 style="margin:0;"><label >Teacher</label></h5>
<select name="teacher_item"style="margin-bottom:10px;font-size:17px;height:35px;border-radius: 5px;border-width:1px;border-color:#cccccc;width: 356px;">
<option value="teacher_name">teacher name</option>
 <%
 ArrayList<Teacher> teacherslist =(ArrayList<Teacher>)request.getAttribute("teachersList");
        for(Teacher t:teacherslist){%>
        <%-- Arranging data in tabular form
        --%>
            <option value ="<%=t.getName() %>"><%=t.getName() %></option>
               
            <%}%>
</select>
<h5 style="margin:0;"><label >Subject</label></h5>
<select name="subject_item"style="margin-bottom:10px;font-size:17px;height:35px;border-radius: 5px;border-width:1px;border-color:#cccccc;width: 356px;">
<option value="subject_name">subject</option>
 <%
 ArrayList<Subject> subjectslist =(ArrayList<Subject>)request.getAttribute("subjectsList");
        for(Subject s:subjectslist){%>
        <%-- Arranging data in tabular form
        --%>
            <option value ="<%=s.getTitle()%>"><%=s.getTitle()%></option>
               
            <%}%>
</select>
<h5 style="margin:0;"><label >Class</label></h5>
<select name="class_item"style="margin-bottom:10px;font-size:17px;height:35px;border-radius: 5px;border-width:1px;border-color:#cccccc;width: 356px;">
<option value="class_name">class</option>
 <%
 ArrayList<Classes> classeslist =(ArrayList<Classes>)request.getAttribute("classesList");
        for(Classes c:classeslist){%>
        <%-- Arranging data in tabular form
        --%>
            <option value ="<%=c.getRoomName()%>"><%=c.getRoomName()%></option>
               
            <%}%>
</select>
<input type="submit" value="submit"style="margin-top: 10px;font-family: Arial, Helvetica, sans-serif;font-size: 17px;width: 356px;height: 30px;border-radius: 5px;border-style:none;display:block">
</form>
</body>
</html>