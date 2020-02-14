<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>다운로드 홈페이지에 오신 것을 환영합니다.</h2>
	<form method="post" action="download.jsp">
		<fieldset>
			<legend>  Download  </legend>
			<select name="download">
				<option value="Tomcat">Tomcat</option>
				<option value="Oracle">Oracle</option>
				<option value="MicroSoft">MicroSoft</option>
			</select>
			<input type="submit" value="입력완료">
		</fieldset>
	</form>
</body>
</html>