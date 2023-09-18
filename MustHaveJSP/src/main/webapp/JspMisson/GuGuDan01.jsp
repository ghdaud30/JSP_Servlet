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
String num = request.getParameter("num");
int num2 = 2;
if(num != null){
	num2 = Integer.parseInt(num);
}

	for(int i =num2; i <=num2 ; i++){
		for(int j = 1  ; j <= 9; j ++){
			out.print((i + " * " + j + " = " + (i * j) + " "));
			out.print("<br>");
		}
	}

%>
	
</body>
</html>