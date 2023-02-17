<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap"
	rel="stylesheet"
	
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Noto+Sans+KR:wght@300&display=swap" 
	rel="stylesheet"
>

<style>
* {
	font-family: 'Black Han Sans', sans-serif;
	
}
</style>
<style type='text/css'>
<!--
a:link {
	font-family: "";
	color: black;
	text-decoration: none;
}

a:visited {
	font-family: "";
	color: black;
	text-decoration: none;
}

a:hover {
	font-family: "";
	color: black;
	text-decoration: underline;
}
-->
</style>
<center>

	<font size=24pt>이번 달 월급 조회</font>
</center>
<br />
<br />
</head>


<body>
<style>
* {
	font-family: 'Noto Sans KR', sans-serif;
}
</style>

	<center>
		<form action="salary.jsp" method="post">
		직원번호: <input type=text maxlength=10 size=10 name=id> <input type="submit" value="로그인"><br /> <br />
		</form>

		<form action="login.jsp" method="post">
		 <input type="submit"value="관리자 로그인"><br /> <br />
		</form>
	</center>
</body>
</html>