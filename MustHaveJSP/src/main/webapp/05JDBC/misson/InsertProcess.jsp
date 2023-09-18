<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="common.JDBConnect"%>
<%@page import = "java.sql.PreparedStatement" %>
<%@page import = "java.sql.ResultSet" %>
<%@page import = "java.sql.ResultSetMetaData" %>
<%@ page import = "java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Process</title>
</head>
<body>
	<%
		try{
			String user_id = request.getParameter("id"); 
			String user_pw = request.getParameter("passwd");
			String user_name = request.getParameter("name");  
			
			if(user_id != null && user_pw != null && user_name != null){
				//response.sendRedirect("InsertSuccess.jsp");
				
				JDBConnect jdbc = new JDBConnect();
				Connection con = jdbc.getConnection();
				
				//String sql = "INSERT INTO member (id,pass,name) VALUES"
				//+ "(" + user_id + "," + user_pw + "," + user_name + ")";
				
				String sql = "INSERT INTO member (id,pass,name) VALUES (?,?,?)";
				
				PreparedStatement psmt = con.prepareStatement(sql);
				
				psmt.setString(1, user_id);
				psmt.setString(2, user_pw);
				psmt.setString(3, user_name);
				
				psmt.executeUpdate();
				
				System.out.println("Insert Success");
				request.setAttribute("msg", "Insert Success!!!");
				request.getRequestDispatcher("InsertSuccess.jsp").forward(request,response);
			}
			else{
				//response.sendRedirect("Insertfailure.jsp");
				System.out.println("Insert Failure");
				request.setAttribute("msg", "Insert Failure!!!");
				request.getRequestDispatcher("Insertfailure.jsp").forward(request,response);
			}
		}
		catch(Exception e){
			System.out.println(e.getMessage());
			request.setAttribute("msg", "Insert Error ㅜㅜ<br/ > Please Try Again <br/> Maybe It can be a duplicate key ploblem");
			request.getRequestDispatcher("InsertError.jsp").forward(request,response);
		}
	%>
</body>
</html>