<%@page import="java.sql.Connection"%>
<%@page import = "java.sql.Statement" %>
<%@page import = "java.sql.ResultSet" %>
<%@page import = "java.sql.ResultSetMetaData" %>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
	<h2>회원 목록 조회 테스트(ExecuteQuery() 사용)</h2>
	<%
		JDBConnect jdbc = new JDBConnect();
	
		String sql = "SELECT id,pass,name,regidate FROM member";
		
		Connection con = jdbc.getConnection();
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(sql);
		
		ResultSetMetaData metaData = rs.getMetaData();
		
        int columnCount = metaData.getColumnCount();
       
		out.println("<table border = 1>");
		out.println("<tr>");
        for (int i = 1; i <= columnCount; i++) {
            String columnName = metaData.getColumnName(i);
            out.println("<td>" + String.format("%s", columnName) + "</td>");
        }
        out.println("</tr>");
		
		while(rs.next()){
			String id = rs.getString(1);
			String pw = rs.getString(2);
			String name = rs.getString(3);
			java.sql.Date regidate = rs.getDate(4);
			
			//out.println(String.format("%s %s %s %s",id,pw,name,regidate) + "<br/>");
			out.println("<tr>");
			out.println("<td>" + String.format("%s", id) + "</td>");
			out.println("<td>" + String.format("%s", pw) + "</td>");
			out.println("<td>" + String.format("%s", name) + "</td>");
			out.println("<td>" + String.format("%s", regidate) + "</td>");
			out.println("</tr>");
		}
		out.println("</table>");
		jdbc.close();
	%>
</body>
</html>