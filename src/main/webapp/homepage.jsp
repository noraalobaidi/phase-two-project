<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.nora.project.DBconnection"%>
<%@page import="com.nora.project.Student"%>

<!DOCTYPE html>
<html>
<style><%@include file="/style.css"%></style>
<head>
<meta charset="ISO-8859-1">
<title>Learner Academy - Home</title>
</head>
<script src="https://kit.fontawesome.com/36d247554f.js" crossorigin="anonymous"></script>
<body class="login">
<div class="login-header">
<h1 class="login-title">Learner Academy admin portal</h1>
</div>
<div class="options">

<form action="GetStudentsServlet">
<!-- view students -->
<button class="Menubutton"type="submit" style="background-color:#faeff9;">
<i class="fa-solid fa-users" style="font-size:100px;color:#e885df"></i>
<h3 class="buttonTxt" style="color:#e885df">Students</h3>
</button>
</form>


<form action="GetTeachersServlet">
<!-- view teachers -->
<button class="Menubutton"type="submit" style="background-color:#ebf8ef;">
<i class="fa-solid fa-chalkboard-user" style="font-size:100px;color:#61cd80"></i>
<h3 class="buttonTxt" style="color:#61cd80">Teachers</h3>
</button>
</form>


<form action="GetSubjectServlet">
<!-- view subjects -->
<button class="Menubutton"type="submit" style="background-color:#f5f3ff;">
<i class="fa-solid fa-book" style="font-size:100px;color:#9284e5"></i>
<h3 class="buttonTxt" style="color:#9284e5">Subjects</h3>
</button>
</form>


<form action="GetClassServlet">
<!-- view classes -->
<button class="Menubutton"type="submit" style="background-color:#fffbea;">
<i class="fa-solid fa-school" style="font-size:100px;color:#f7dc52"></i>
<h3 class="buttonTxt" style="color:#f7dc52">Classes</h3>
</button>
</form>


<form action="GetClassesReport">
<!-- create report -->
<button class="Menubutton"type="submit" style="background-color:#eef9fc;">
<i class="fa-solid fa-file" style="font-size:100px;color:#53bfcb"></i>
<h3 class="buttonTxt" style="color:#53bfcb">Reports</h3>
</button>
</form>

<form action="GetTSCservlet">
<button class="Menubutton"type="submit" style="background-color:#fef2f0;" >
<i class="fa-regular fa-calendar-plus" style="font-size:100px;color:#e47866"></i>
<h4 class="buttonTxt" style="color:#e47866">Assign teacher to Subject</h4>
</button>
</form>



<form action="InsertClass.jsp">
<input class="Menubutton"type="submit" value="insert class">
</form>
<form action="InsertSubject.jsp">
<input class="Menubutton"type="submit" value="insert subject">
</form>

<form action="InsertTeacher.jsp">
<input class="Menubutton"type="submit" value="insert teacher">
</form>

</body>
</html>