<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login_ok.jsp</title>
</head>
<body>
	<%
		request.setCharacterEncoding("EUC-KR");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	

	if(id.equals("admin")&& pw.equals("1234")){
		response.sendRedirect("login_success.jsp");
	}else{
		response.sendRedirect("login_fail.jsp");
	}
%>
</body>
</html>
