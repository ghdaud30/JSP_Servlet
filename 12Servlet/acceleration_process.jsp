<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Double a =  Double.parseDouble(request.getParameter("a"));
	Double t =  Double.parseDouble(request.getParameter("t"));
	Double v0 =  Double.parseDouble(request.getParameter("v0"));
	Double x0 =  Double.parseDouble(request.getParameter("x0"));
	
	double result = x0 - (a * t * t / 2) + (v0 * t);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>자유 낙하 물체의 위치 구하기</h2>
	<h3><%= t %> 초 후에 위치: <%= result %> m</h3>
</body>
</html>