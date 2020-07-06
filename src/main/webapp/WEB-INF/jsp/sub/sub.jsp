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
	<form:form action = "/sub/subs.do" method = "post" modelAttribute="subVo">
		<form:input type = "text" path="userId" size="20"/>
		<form:errors path="userId"/>
		<br/>
		
		<input type = "submit" value = "전송">
	</form:form>
		
	</div>
</body>
</html>