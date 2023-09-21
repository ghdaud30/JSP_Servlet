<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css">
<title>Insert Error</title>
</head>
<body>
	<div class=container>
		<h2><%= request.getAttribute("msg") %></h2>
		<a href="./InsertForm.jsp">이전으로 돌아가기</a>
	</div>
</body>
</html>