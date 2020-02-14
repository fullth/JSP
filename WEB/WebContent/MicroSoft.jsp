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
%>
	<a href="https://www.microsoft.com/ko-kr"><%= url %>바로가기</a>
</body>
</html>