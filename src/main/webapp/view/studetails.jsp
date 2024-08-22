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
<h1> Employee Details are given below</h1>
<br>
<table border="2">
<tr>
<td> EMPNO</td>
<td> NAME</td>
<td> ADDRESS</td>
<td> Phone</td>
</tr>
<c:forEach items="${stulist }" var="empolyee">
<tr> 
<td>${empolyee.empno }</td>
<td>${empolyee.name }</td>
<td>${empolyee.address }</td>
<td>${empolyee.phone }</td>
<td>
<a href="searchuser/${empolyee.empno }">EDIT</a> 
<a href="deleteuser/${empolyee.empno }">DELETE</a> 
</td>
</c:forEach>
</table>
</body>
</html>