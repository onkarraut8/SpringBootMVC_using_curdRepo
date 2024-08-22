<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
</head>
<body>
<h1> Students Details are given below</h1>
<br>
<table border="2">
<tr>
<td> ROLLNO</td>
<td> NAME</td>
<td> ADDRESS</td>
<td> MARKS</td>
</tr>
<c:forEach items="${stulist }" var="student">
<tr> 
<td>${student.rollno }</td>
<td>${student.name }</td>
<td>${student.address }</td>
<td>${student.marks }</td>
<td>
<a href="searchuser/${student.rollno }">EDIT</a> 
<a href="deleteuser/${student.rollno }">DELETE</a> 
</td>
</c:forEach>
</table>
</body>
</html>