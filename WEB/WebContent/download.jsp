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
	String url = request.getParameter("download");
	String download = request.getParameter("download");
	
	url += ".jsp";
%>

<jsp:forward page="<%= url%>">
	<jsp:param value="<%= download%>" name="download" />
</jsp:forward>
	
</body>
</html>