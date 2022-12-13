<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style><%@include file="/style.css"%></style>
<head>
<meta charset="ISO-8859-1">
<title>Insert Subject</title>
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
<a href="GetSubjectServlet" style="font-size:15px">Subjects List</a>
<p style="font-size:15px;margin-left:10px;margin-right:10px">  >  </p>
<p style="font-size:15px">Insert Subject</p>

</div>
<form action="InsertSubjectServlet">
<h5 style="margin:0;"><label >Subject Title</label></h5>
<input type="text" placeholder="" name="title"style="margin-bottom:10px;font-size:17px;height:30px;border-radius: 5px;border-width:1px;border-color:#cccccc;width:350px">
<input type="submit" value="submit"style="margin-top: 10px;font-family: Arial, Helvetica, sans-serif;font-size: 17px;width: 356px;height: 30px;border-radius: 5px;border-style:none;display:block">
</form>
</body>
</html>