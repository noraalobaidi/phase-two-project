<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.util.ArrayList"%>
<%@page import="com.nora.project.Schedule"%>
<%@page import="com.nora.project.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%String theClass=(String)request.getAttribute("inputClass"); %>
<title><%=theClass%> Report</title>
</head>
<body>
<h1><%=theClass%> Report</h1>
<%ArrayList<Schedule> schedule = 
(ArrayList<Schedule>)request.getAttribute("ScheduleList");
        if(schedule.size()==0){ %>
        <h3>No teachers or subjects are assigned to the class</h3>
        <%}else{ %>
<table border ="1" width="500" align="center">
         <tr bgcolor="FFEE88">
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
        <table border ="1" width="500" align="center">
         <tr bgcolor="FFEE88">
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