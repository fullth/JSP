<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>세션을 위한 로그인</title>
</head>
<body>
	<fieldset>
	   <legend>Login</legend>	
	   <form method="post" action="sessionLoginPro.jsp">
		    ID<br><input type="text" name="id" maxlength="12"><br>
		    PW<br><input type="password" name="password" maxlength="12"><br><br>
		    <input type="submit" value="LOGIN">
		    <input type="button" value="JOIN" onclick="location.href='insertMemberForm.jsp'">
	   </form>
    </fieldset>
</body>
</html>