<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<script type="text/javascript">
	function validation () {
		if(userID.value == "" || userPW.value == ""){
			alert("Please check ID or PW");
		} else {
			document.login.submit();
		}
	}	
</script>
</head>
<body>
	<form method="POST" action="auth.jsp" name="login">
		<fieldset>
			<legend>  Login  </legend>
			ID: <input type="text" placeholder="Input ID" name="userID" value="">
			PW: <input type="password" placeholder="Input PW" name="userPW" value="">
			<input type="button" value="login" onclick="validation()">
		</fieldset>
	</form>
</body>
</html>