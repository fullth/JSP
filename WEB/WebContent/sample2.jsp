<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>
<%@ page import="java.util.*, java.text.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	int num1 = (int) (Math.random()*10),num2 = (int) (Math.random()*10),
	num3 = (int) (Math.random()*10),num4 = (int) (Math.random()*10);
	String num = ""+num1+""+num2+""+num3+""+num4;
		
	Date date = new Date();
	   SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy");
	String strdate = simpleDate.format(date);
%>

	아이디 : <%=id %> , 암호 : <%=pw %> 학번 : <%=strdate %>-<%=num %>
	<hr>
	회원님 반갑습니다. 
	
</body>
</html>
