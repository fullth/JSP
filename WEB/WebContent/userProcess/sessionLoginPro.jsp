<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "Beans.LogonDBBean" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>아이디체크와 세션유지 정보</title>
</head>
<body>
<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
	
		LogonDBBean logon = LogonDBBean.getInstance();
		
		int check = logon.userCheck(id, passwd);
		
		if(check == 1) {
			session.setAttribute("id", id);
			response.sendRedirect("sessionMain.jsp");
						
		}else if(check == 0) { %>
		
			<script>
			alert("비밀번호가 맞지 않습니다...ㅠㅠ");
			history.go(-1);
			</script>
	<% } else {%>
			<script>
			alert("아이디가 틀립니다...ㅠㅠ");
			history.go(-1);
			</script>
	<% } %>
</body>
</html>