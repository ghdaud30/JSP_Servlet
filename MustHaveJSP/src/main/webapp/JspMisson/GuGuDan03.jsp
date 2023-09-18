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
String col = request.getParameter("col");
int col2 = 2;
if(col != null)
	col2 = Integer.parseInt(col);
	
	for (int i = 2; i <=9; i+=col2){
		for(int j = 1; j <= 9; j++){
			for(int k = i; k < i+col2; k++){
				if(k <= 9){
					%>
					<li><%= k %> * <%= j %> = <%=(k * j) %>
				<%
				}
			}
			%>
			<br/>
			<%
		}
	}
%>

</ul>

</body>
</html>