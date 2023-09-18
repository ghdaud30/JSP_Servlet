<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "common.JDBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
	<h2>회원 추가 테스트(executeUpdate() 사용)</h2>
	<%
	
	    int inResult = 0;
	
		JDBConnect jdbc = new JDBConnect();
		Connection con = jdbc.getConnection();
	
		String[] ids = {"musthave1", "willhave1", "dohave1"};
		String[] names = {"머스트해브","윌해브","두해브"};
		
		String sql = "INSERT INTO member (id,pass,name) VALUES (?,?,?)";
		PreparedStatement psmt = con.prepareStatement(sql);
		
		for (int i =0; i < ids.length; i++){
			psmt.setString(1, ids[i]);
			psmt.setString(2, "1234");
			psmt.setString(3,names[i]);
			
			inResult += psmt.executeUpdate();
		}
		
		
		out.println("member 테이블에 " + inResult + " 행이 입력되었습니다");
		
		jdbc.close();
	%>
</body>
</html>