<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
<%
String num = request.getParameter("num");
int num2 = 2;
if(num != null)
	num2 = Integer.parseInt(num);
	for (int i = 1; i <= 9; i++ ){
		%>
		<li><%=num2%> * <%=i%> = <%=(num2 * i) %></li>
		<% 
		}
		%>
		<br/>

</ul>

</body>
</html>