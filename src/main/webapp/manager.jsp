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
<title>관리자 페이지</title>
</head>
<body>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/salary", "root", "1234");
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select * from workers");
	%>

	----------------------------------------
	<%
	while (rs.next()) {
	%>
	<br><br>ID:
	<%=rs.getString("id")%><br><br>

	이름:
	<%=rs.getString("name")%><br><br>

	직급:
	<%=rs.getString("status")%><br><br>

	월급:
	<%=rs.getString("salary")%> 만 원<br><br>
	--------------------------------------------

	<%
	}
	} catch (SQLException e) {
	%>
	<%
	e.printStackTrace();
	%>
	<%
	} finally {
	if (rs != null)
		try {
			rs.close();
		} catch (SQLException e) {
		}
	if (stmt != null)
		try {
			stmt.close();
		} catch (SQLException e) {
		}
	if (conn != null)
		try {
			conn.close();
		} catch (SQLException e) {
		}
	}
	%>
</body>
</html>
