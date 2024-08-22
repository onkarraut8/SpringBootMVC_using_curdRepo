<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<h2> Employee Registration form</h2>
<br>
<form:form  action="processform" method="POST">

<form:label path="Empno">EmpNo</form:label>
<form:input path="Empno"/>
<br>
<form:label path="name">NAME</form:label>
<form:input path="name"/>
<br>
<form:label path="address">ADDRESS</form:label>
<form:input path="address"/>
<br>
<form:label path="phone">Phone</form:label>
<form:input path="phone"/>
<br>
<input type="submit" value="submit"/>


</form:form>











</body>
</html>