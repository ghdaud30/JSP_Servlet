<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css">
<title>Insert the Data</title>
</head>
<body>
	<div class="container">
		<h2>데이터 입력 테스트</h2>
		<form action="./InsertProcess.jsp" method="GET">
		ID : <input type="text" name="id" value=""><br /> 
		Passwd : <input type="text" name="passwd" value=""><br />
		Name : <input type="text" name="name" value=""><br /> 
		<input type="submit" id="bts" value="저장">
	</form>
	</div>
	
</body>
</html>