<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="Beans.LogonDBBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("euc-kr");%>

 <jsp:useBean id="member" class="Beans.LogonDataBean">
     <jsp:setProperty name="member" property="*"/>
 </jsp:useBean>
 
 <%
    member.setReg_date(new Timestamp(System.currentTimeMillis()) );
    LogonDBBean logon = LogonDBBean.getInstance();
    logon.insertMember(member);
%>
<jsp:getProperty name="member" property="id" /> Thanks for Join!
</body>
</html>