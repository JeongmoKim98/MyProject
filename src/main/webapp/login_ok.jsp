<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login_ok.jsp</title>
</head>
<body>
	<%
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	

	if(id.equals("admin")&& pw.equals("1234")){
		response.sendRedirect("manager.jsp");
	}else{
	%>
<script>
	alert("권한이 없습니다!");	
	history.back();
</script>	
<%
	}
%>
</body>
</html>
