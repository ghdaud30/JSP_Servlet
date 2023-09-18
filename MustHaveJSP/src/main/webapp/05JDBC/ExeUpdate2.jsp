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
	
		String[] ids = {"musthave","willhave","dohave"};
		
		String sql = "INSERT INTO board (title,content,id) VALUES (?,?,?)";
		PreparedStatement psmt = con.prepareStatement(sql);
		
		
		for (int i =0; i < ids.length; i++){
			for (int j =0; j < 10; j++){
				psmt.setString(1, "제목 " + j + " 입니다.");
				psmt.setString(2, "내용 " + j + " 입니다.");
				psmt.setString(3, ids[i]);
		
				inResult += psmt.executeUpdate();
			}
		}
		
		out.println("member 테이블에 " + inResult + " 행이 입력되었습니다");
		
		jdbc.close();
	%>
</body>
</html>