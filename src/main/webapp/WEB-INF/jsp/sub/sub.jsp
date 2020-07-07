<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<div>
		SUB TEST PAGE <br/>
	<form:form action = "/sub/login.do" method = "post" modelAttribute="subVo">
		<label>아이디 : </label>
		<form:input type = "text" path="email" size="20"/>
		<form:errors path="email"/>
		<br/>
		<label>비밀번호 : </label>
		<form:input type = "password" path="pw" size="20"/>
		<form:errors path="pw"/>
		<br/>
		<input type = "submit" value = "전송">
	</form:form>
		
	</div>
</body>
</html>