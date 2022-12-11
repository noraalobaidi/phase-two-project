<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.nora.project.DBconnection"%>
<%@page import="com.nora.project.Student"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>test</title>
</head>
<body>
<form action="GetStudentsServlet">
<input type="submit" value="students">
</form>
<form action="InsertStudent.jsp">
<input type="submit" value="insert student">
</form>
</body>
</html>