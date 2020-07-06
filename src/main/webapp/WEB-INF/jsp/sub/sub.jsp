<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<form action = "/sub/subs.do" method = "post">
		<input type = "text" id = "userId" name = "userId" value = "${user.userId}"/> <br/>
		<input type = "submit" value = "전송">
	</form>
		
	</div>
</body>
</html>