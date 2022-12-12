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
<form action="GetReport">
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
<input type="submit" value="create report">
</form>
</body>
</html>