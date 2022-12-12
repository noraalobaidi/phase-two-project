<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.nora.project.DBconnection"%>
<%@page import="com.nora.project.Student"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learner Academy - Home</title>
</head>
<body>
<form action="GetStudentsServlet">
<input type="submit" value="view students">
</form>
<form action="GetClassesCreateStudent">
<input type="submit" value="insert student">
</form>
<form action="GetTeachersServlet">
<input type="submit" value="view teachers">
</form>
<form action="InsertTeacher.jsp">
<input type="submit" value="insert teacher">
</form>
<form action="GetTSCservlet">
<input type="submit" value="create new class ">
</form>
<form action="GetSubjectServlet">
<input type="submit" value="view subjects">
</form>
<form action="InsertSubject.jsp">
<input type="submit" value="insert subject">
</form>
<form action="GetClassServlet">
<input type="submit" value="view classes">
</form>
<form action="InsertClass.jsp">
<input type="submit" value="insert class">
</form>
<form action="GetClassesReport">
<input type="submit" value="create report">
</form>
</body>
</html>