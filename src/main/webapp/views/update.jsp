<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<h2> Student Registration form</h2>
<br>
<form:form  action="${pageContext.request.contextPath}/updatestudent" method="POST">

<form:label path="rollno">RollNo</form:label>
<form:input path="rollno"/>
<br>
<form:label path="name">NAME</form:label>
<form:input path="name"/>
<br>
<form:label path="address">ADDRESS</form:label>
<form:input path="address"/>
<br>
<form:label path="marks">Marks</form:label>
<form:input path="marks"/>
<br>
<input type="submit" value="update"/>


</form:form>











</body>
</html>