<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<jsp:include page="../Common/Link.jsp"/>
	<h2>로그인 페이지</h2>
	<span style="color: red; font-size: 1.2rem;">
		<%= request.getAttribute("LoginErrMsg") == null ? "" : 
		request.getAttribute("LoginErrMsg") %>
	</span>
	<%
		if(session.getAttribute("UserId") == null){
		%>
		<script>
		function validateForm(form){
			if(!form.user_id.value){
				alert("아이디를 입력하세요.");
				return false;
			}
			if(form.user_pw.value == ""){
				alert("패스워드를 입력하세요.");
				return false;
			}
		}
		</script>
		<table border="1">
		<form action="LoginProcess.jsp" method="post" name="loginFrm" onsubmit="retrun validateForm(this);">
			<tr>
				<td>아이디 : </td>
				<td><input type="text" name="user_id" /></td>
			</tr>
			<tr>
				<td>패스워드 : </td>
				<td><input type="text" name="user_pw" /></td> 
			</tr>
			<tr>
				<td><input type="submit" value="로그인하기"></td>
				<td><a href="" style="">회원가입</a></td>
			</tr>
		</form>
		</table>
		<%
		}
		else{
		%>
			<%= session.getAttribute("UserName") %> 회원님, 로그인하셨습니다.<br/>
			<a href="Logout.jsp">[로그아웃]</a>	 
		<% 
		}
		%>
</body>
</html>