<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>안녕하세요</h1>

	<% 
		int i = 0;
		System.out.println(i);
		
		out.println("<h1>" + i +"</h1>");
		
	%>
	<hr>
	<h1>3단</h1>
	<%
		 
		int dan = 3;
		
		for(i=1; i<=9; i++){
			out.println( dan + "*" + i + "=" + (dan*i) + "<br>");
		}
	
	
	%>
	
	<hr>
	<h1>구구단</h1>
	<table border= '1' align = 'center' width='800'>
	<tr bgcolor = 'pink' align = 'center'>
			<td></td>
			<% for(i=2; i<10; i++){  %>
			<td><%= i%> 단 </td>	
			<% } %>
	</tr>	
	<% for(i=1; i<10; i++){%>
		<tr>
		<td><%= i%> </td>
		<%for(int j=2; j<10; j++){%>
			<td align = 'center'>
			<%=j%>*<%=i%>=<%= i*j %>
			<% }} %></td>
		</tr>
	</table>
</body>
</html>