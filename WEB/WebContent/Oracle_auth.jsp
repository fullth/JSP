<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body style="display="auto" margin: 50px auto">
	<fieldset style="width: 150px"> 
		<legend> Login form </legend>
		<form action="Oracle_sesLogPro.jsp" method="post">
			ID   <input type="text" name="id" maxlength="20" value=""><br>
			PW   <input type="password" name="pw" maxlength="20" value=""><br>
			NAME <input type="text" name="name"><br>
			<input type="submit" value="login">
			<input type="button" value="join" onclick="location.href='Oracle_join.jsp' "> 
		</form>
	</fieldset>
</body>
</html>