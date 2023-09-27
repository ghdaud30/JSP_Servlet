<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>자유 낙하 물체의 위치 구하기</h2>
	<form action="gravity_process.jsp" method ="get">
	가속도 : <input type="text" name = "a" /><br/>
	이동시간: <input type="text" name = "t" /><br/>
	초기속도 : <input type="text" name = "v0" /><br/>
	초기위치 : <input type="text" name = "x0" /><br/>
	버튼 : <input type="submit" name="submit" value ="전송"/>
	</form>
</body>
</html>