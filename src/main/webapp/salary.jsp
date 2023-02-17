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
<title>직원 월급 출력 화면</title>
</head>
<body>
	<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String sessionID = "yes";

try{

if (id == "") {
	
%>
	<script>
		alert("사원번호를 입력하십시오");
		history.back();
	</script>
	<%
} else {
	
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://127.0.0.1:3306/salary";

	Class.forName(driver);
	Connection conn = DriverManager.getConnection(url,"root","1234");
	
	Statement stmt = conn.createStatement();

	String strSQL = "SELECT * FROM workers where id='" + id + "'";
	ResultSet rs = stmt.executeQuery(strSQL);
	
	rs.next();
	
	String logid = rs.getString("id");

	if (!id.equals(logid)){
%>
	<script>
		alert("잘못된 사원번호 입니다.");
		history.back();
	</script>
	<%
		} else {
			session.setAttribute("user",sessionID);
			response.sendRedirect("salary_output.jsp");
		}
	}	

} catch(Exception e){
%>
<script>
	alert("사원이 아닙니다!");	
	history.back();
</script>
	<%
}
%>
	
</body>
</html>