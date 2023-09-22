<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up Page</title>
</head>
<body>
	<jsp:include page="../Common/Link.jsp"/>
	<div>
		<h2>회원가입 페이지</h2>
		<table border="1">
			<form action="./LoginProcess.jsp" method="post">
				<tr>
					<td>아이디 :</td>
					<td><input type="text" name="login_id"></td>
				</tr>
				<tr>
					<td>패스워드 :</td>
					<td><input type="text" name="login_pw"></td>
				</tr>
				<tr>
					<td>이름 :</td>
					<td><input type="text" name="login_name"></td>
				</tr>
				<tr>
					<td><input type="submit" value="회원가입하기"></td>
				</tr>
			</form>
		</table>
	</div>
</body>
</html>