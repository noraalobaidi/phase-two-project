<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.util.ArrayList"%>
<%@page import="com.nora.project.Schedule"%>
<%@page import="com.nora.project.Student"%>
<!DOCTYPE html>
<html>
<style><%@include file="/style.css"%></style>
<head>
<meta charset="ISO-8859-1">
<%String theClass=(String)request.getAttribute("inputClass"); %>
<title><%=theClass%> Report</title>
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
<a href="GetClassesReport" style="font-size:15px">Reports</a>
<p style="font-size:15px;margin-left:10px;margin-right:10px">  >  </p>
<p style="font-size:15px"><%=theClass%> report</p>

</div>
<h1><%=theClass%> Report</h1>

<%ArrayList<Schedule> schedule = 
(ArrayList<Schedule>)request.getAttribute("ScheduleList");
        if(schedule.size()==0){ %>
        <h3>No teachers or subjects are assigned to the class</h3>
        <%}else{ %>
<table border="1"width="1000" align="center" style="margin-top:20px;border:1px solid #bbbbbb">
         <tr bgcolor="#76ced7">
          <th><b>Subject</b></th>
          <th><b>Teacher</b></th>
         </tr>
        <%
        for(Schedule r:schedule){%>

            <tr>
                <td><%=r.getSubject_title()%></td>
                <td><%=r.getTeacher_name()%></td>
            </tr>
            <%}%>
        </table> 

        <%}%>
        <%ArrayList<Student> students = 
                (ArrayList<Student>)request.getAttribute("studentsList");
        if(students.size()==0){ %>
        <h3>No students registered to the class</h3>
        <%}else{ %>
                <h2 style="position:relative;right:400px;">Students List</h2>
        <table border="1"width="1000" align="center" style="margin-top:10px;border:1px solid #bbbbbb;">
         <tr bgcolor="#76ced7">
          <th><b>Id</b></th>
          <th><b>Name</b></th>
          <th><b>Civil Id</b></th>
          <th><b>Section</b></th>
         </tr>
 
        <%
        for(Student s:students){%>

            <tr>
                <td><%=s.id%></td>
                <td><%=s.name%></td>
                <td><%=s.civilId%></td>
                <td><%=s.section%></td>
            </tr>
            <%}%>
        </table> 
        <%}%>

</body>
</html>