<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.nora.project.Classes"%>
 <%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="InsertStudentServlet">
<input type="text" placeholder="first and last name" name="name">
<input type="number" placeholder="civil id" name="civilId">
<!--<input type="text" placeholder="grade" name="grade">  -->

<select name="class_item">
<option value="class">class</option>
 <%
 ArrayList<Classes> classesslist =(ArrayList<Classes>)request.getAttribute("classesList");
        for(Classes c:classesslist){%>
        <%-- Arranging data in tabular form
        --%>
            <option value ="<%=c.getRoomName()%>"><%=c.getRoomName() %></option>
               
            <%}%>
</select>

<select name="section_item">
<option value="section">section</option>
<option value="Art">Art</option>
<option value="Science">Science</option>
</select>
<!--<input type="text" placeholder="section" name="section">  -->

<input type="submit" value="submit">
</form>
</body>
</html>