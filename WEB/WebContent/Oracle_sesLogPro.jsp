<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ page import="Beans.logonDbBean" %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("pw");
	
	logonDbBean logon = logonDbBean.getinstance();
	
	int check = logon.userCheck(id, password);
	
	if(check == 1) {
		session.setAttribute("id", id);
		response.sendRedirect("Oracle_sesMain.jsp");
	} else if (check == 0) { %>
	
	<script>
		alert("Worng PW");
		history.go(-1);
	</script>
	
	<% } else { %>
	<script>
		alert("Worng ID");
		history.go(-1);
	</script>
	<% } %>
</body>
</html>