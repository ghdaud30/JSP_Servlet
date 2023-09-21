<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - response</title>
</head>
<body>
	<h2>1. 로그인 폼</h2>
	<%
	String loginErr = request.getParameter("loginErr");
	if(loginErr != null) out.print("Login Faiulure");
	else out.print("Write your Login Information");
	%>
	<form action="./ResponseLogin.jsp" method="post">
		ID : <input type ="text" name="user_id" /><br />
		Password : <input type ="text" name="user_pwd" /><br />
		<input type ="submit" value ="Login" />
	</form>
	
	<h2>2. HTTP 응답 헤더 설정하기</h2>
	<form action="./ResponseHeader.jsp" method="get">
		Date Form : <input type ="text" name="add_date" value="2021-10-25 09:00" /><br />
		Number Form : <input type ="text" name="add_int" value="8282" /><br />
		문자 Form : <input type ="text" name="add_str" value="MR.Kim" /><br />
		<input type ="submit" value ="응답 헤더 설정 & 출력" />
	</form>
</body>
</html>