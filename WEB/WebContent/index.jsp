<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- session is using HttpSession Interface. -->
<fieldset>
<%
	//If user not logined;
	if(session.getAttribute("userID")==null){
		out.println("<a href='login.jsp'>Login</a>");
	} else {
		String userID = (String)session.getAttribute("userID");
		String userPW = (String)session.getAttribute("userPW");
		//out.println(userID + " ");
		//out.println("<a href='logout.jsp'>Logout</a>");
		out.println("userID: " + userID + "<br> userPW: " + userPW );
		out.println("<hr>");
		out.println("Welcome " + userID);
	}
%>
</fieldset>
</body>
</html>