<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function clk() {
	if(frm.id.value == "ID" || frm.pw.value == "PASSWORD"){
		alert("아이디나 비밀번호를 입력하지 않았습니다.");
	}else{
		document.frm.submit();
	}
}

function getfo(na) {
	if(na.value == "ID"){
		na.value = "";
	}else if(na.value == "PASSWORD"){
		na.value = "";
	}
}

function lostfo() {
	if(frm.id.value == ""){
		frm.id.value = "ID";
	}else if(frm.pw.value == ""){
		frm.pw.value = "PASSWORD";
	}
}
</script>

<body>

	<form action="Login_Test2.jsp" method="post" name="frm">
		<h2><b>로그인</b></h2><br>
		
	아이디:<input type="text" name="id" value="ID" 
			onfocus="getfo(this)" onblur="lostfo()"><br>
	암호:<input type="password" name="pw" value="PASSWORD" 
			onfocus="getfo(this)" onblur="lostfo()"><br>
	<input type="button" value="로그인" onclick="clk()">
	<input type="reset" value="다시입력">
</form>

</body>
</html>
