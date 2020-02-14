<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");	

	String db_id = "TH";
	String db_pw = "1234";
		
	String userID = request.getParameter("userID");
	String userPW = request.getParameter("userPW");
	if((String)userID == db_id && (String)userPW == db_pw){
		session.setAttribute("userID", userID);
		session.setAttribute("userPW", userPW);
	}
	response.sendRedirect("index.jsp");
%>
</body>
</html>