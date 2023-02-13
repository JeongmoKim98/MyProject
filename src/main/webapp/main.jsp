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
<br/><br/>
</head>
<body>
	<center>
		<form action="salary.jsp" method="post">
			직원번호 : <input type="text" name="id">   <input type="submit" value="확인하기"><br/><br/>
		</form>
		
		<a href='login.jsp'>[관리자 로그인]</a>
	</center>
</body>
</html>