<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>사원월급</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");

	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://127.0.0.1:3306/salary";

	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url, "root", "1234");

	Statement stmt = conn.createStatement();

	String strSQL = "SELECT * FROM workers where id='" + id + "'";
	ResultSet rs = stmt.executeQuery(strSQL);

	rs.next();

	String logid = rs.getString("id");
	int logsal = rs.getInt("base_salary");
	%>
	<tr>

		</td>
	</tr>
</body>
</html>