<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.ArrayList"%>
<%@page import="com.nora.project.Teacher"%>
<%@page import="com.nora.project.Subject"%>
<%@page import="com.nora.project.Classes"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Schedule</title>
</head>
<body>


<form action="InsertScheduleServlet">
<select name="teacher_item">
<option value="teacher_name">teacher name</option>
 <%
 ArrayList<Teacher> teacherslist =(ArrayList<Teacher>)request.getAttribute("teachersList");
        for(Teacher t:teacherslist){%>
        <%-- Arranging data in tabular form
        --%>
            <option value ="<%=t.getName() %>"><%=t.getName() %></option>
               
            <%}%>
</select>

<select name="subject_item">
<option value="subject_name">subject</option>
 <%
 ArrayList<Subject> subjectslist =(ArrayList<Subject>)request.getAttribute("subjectsList");
        for(Subject s:subjectslist){%>
        <%-- Arranging data in tabular form
        --%>
            <option value ="<%=s.getTitle()%>"><%=s.getTitle()%></option>
               
            <%}%>
</select>
<select name="class_item">
<option value="class_name">class</option>
 <%
 ArrayList<Classes> classeslist =(ArrayList<Classes>)request.getAttribute("classesList");
        for(Classes c:classeslist){%>
        <%-- Arranging data in tabular form
        --%>
            <option value ="<%=c.getRoomName()%>"><%=c.getRoomName()%></option>
               
            <%}%>
</select>
<input type="submit" value="submit">
</form>
</body>
</html>