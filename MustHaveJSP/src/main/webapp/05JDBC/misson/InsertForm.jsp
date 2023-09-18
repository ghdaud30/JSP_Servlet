<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert the Data</title>
</head>
<body>
	<h2>데이터 입력 테스트</h2>

	<!-- String insert = request.getParameter("insertErr");
	if(insert != null) out.print("Insert failure"); -->

	<form action = "InsertProcess.jsp" method="GET">
		ID : <input type ="text" id = "id" name="id" value = ""><br/>
		Passwd : <input type ="text" id ="passwd" name="passwd" value = ""><br/>
		Name : <input type ="text" id = "name" name= "name" value = ""><br/>
		<input type ="submit" id ="bts" value ="저장">
	</form>
</body>
</html>