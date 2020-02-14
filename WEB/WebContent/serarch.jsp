<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="process_search.jsp">
		<fieldset>
				<legend>  Naver Search  </legend>
				검색할 키워드 : <input type="text" name="word">
				<input type="submit" value="send">
				<input type="reset" value="cancle"> <br>
		</fieldset>
	</form>
</body>
</html>