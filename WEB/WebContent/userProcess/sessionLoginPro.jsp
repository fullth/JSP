<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "Beans.LogonDBBean" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ID check & session data info</title>
</head>
<body>
<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("password");
	
		LogonDBBean logon = LogonDBBean.getInstance();
		
		int check = logon.userCheck(id, passwd);
		
		if(check == 1) {
			session.setAttribute("id", id);
			response.sendRedirect("sessionMain.jsp");
		}else if(check == 0) { %>
		
			<script>
			alert("Wrong PW");
			history.go(-1);
			</script>
	<% } else {%>
			<script>
			alert("Wrong ID");
			history.go(-1);
			</script>
	<% } %>
</body>
</html>