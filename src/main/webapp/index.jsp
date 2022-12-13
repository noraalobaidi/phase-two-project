<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<style><%@include file="/style.css"%></style>
<head>
<script src="https://kit.fontawesome.com/36d247554f.js" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>login</title>
</head>
<body class="login">
<div class="login-header">
<h1 class="login-title">Learner Academy admin portal</h1>
</div>

<div class="form-container">

<form class="inForm" action="Authentication">
<h1 style="margin-left:200px">Login</h1>
<h5 style="margin:0;font-family: Arial, Helvetica, sans-serif;"><label >Username</label></h5>
<input style="margin-bottom:10px;font-size:17px;height:30px;border-radius: 5px;border-width:1px;border-color:#cccccc" type="text"  name="username">
<h5 style="margin:0;font-family: Arial, Helvetica, sans-serif;"><label >Password</label></h5>
<input style="margin-bottom:10px;font-size:17px;height:30px;border-radius: 5px;border-width:1px;border-color:#cccccc"type="password"  name="password" placeholder="">
<input style="margin-top: 10px;font-family: Arial, Helvetica, sans-serif;font-size: 17px;width: 130px;height: 30px;margin-left: 180px;border-radius: 5px;border-style:none;"type="submit" value="login">
</form>

</div>

</body>
</html>