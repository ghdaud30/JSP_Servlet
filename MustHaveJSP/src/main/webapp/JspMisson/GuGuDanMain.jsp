<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String sel = request.getParameter("sel");
	String type1 = request.getParameter("type1");
	String type2 = request.getParameter("type2");
	if(sel == type1){
		response.sendRedirect("./GuGuDan01.jsp?num=2");
	}
	else if(sel == type2){
		response.sendRedirect("./GuGuDan03.jsp?col=2");
	}
	%>
</body>
</html>