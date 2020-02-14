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
//Naver Search
	String naverUrl = "https://search.naver.com/search.naver?sm=top_hty&fbm=0&ie=utf8";
	String naverKeyword = request.getParameter("word");
	naverUrl += "&" + "query=" + naverKeyword;
	
	response.sendRedirect(naverUrl);
%>
</body>
</html>