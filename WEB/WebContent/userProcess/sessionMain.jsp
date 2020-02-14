<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>세션을 이용한 회원인증</title>
</head>
<%  
	String id="";
	id = (String)session.getAttribute("id");
	
	if(id == null || id.equals("")) {
		response.sendRedirect("sessionLoginForm.jsp");
	}

%>

	<%= id %>님이 로그인하셨습니다.
	
	<form action="sessionLogout.jsp" method="post">
		<input type="submit" value="로그아웃">	
	</form>
<body>

</body>
</html>