<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입 양식</title>
</head>
<body>
    <fieldset>
    	<legend> JOIN </legend>
	    <form method="post" action="insertMemberPro.jsp">
	    	ID<br><input type="text" name="id" maxlength="12"><br>
			PW<br><input type="password" name="passwd" maxlength="12"><br>
			NAME<br><input type="text" name="name" maxlength="10"><br>
	     	<input type="submit" value="JOIN">
	    	<input type="reset" value="CANCLE">
    </form>
    </fieldset>
</body>
</html>