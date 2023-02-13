<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 게시판 </title>

<style type='text/css'>
	a:link		{font-family:"";color:blue;text-decoration:none;}
	a:visited	{font-family:"";color:blue;text-decoration:none;}
	a:hover		{font-family:"";color:blue;text-decoration:underline;}
</style>
</head>
<body>



<center>
	<form action="login_ok.jsp" method="post">
		아이디:<input type="text" name="id"><br/><br/>
		비밀번호:<input type="password" name="pw"><br/><br/>
		<input type="submit" value="로그인"><br/><br/>
	</form>
</center>	
</body>
</html>
