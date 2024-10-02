<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>화폐 매수 구하기</h1>
	<% 
	
		System.out.println(request.getParameter("money"));
	
		int money = Integer.valueOf(request.getParameter("money"));
	
	%>
	
	<h1><%
	
	int m50000, m10000, m5000, m1000, m500, m100;
	int tMoney;

	m50000 = money / 50000;
	tMoney = money % 50000; 

	m10000 = tMoney / 10000;
	tMoney = tMoney % 10000; 

	m5000 = tMoney / 5000;
	tMoney = tMoney % 5000; 

	m1000 = tMoney / 1000;
	tMoney = tMoney % 1000;

	m500 = tMoney / 500;
	tMoney = tMoney % 500; 

	m100 = tMoney / 100;
	tMoney = tMoney % 100; 
	
	out.println( money + "원" + "<br>");
	
	out.print("오만원" + m50000 + "장" + "<br>");
	out.print("만원" + m10000 + "장" + "<br>");
	out.print("오천원" + m5000 + "장" + "<br>");
	out.print("천원" + m1000 + "장" + "<br>");
	out.print("오백원" + m500 + "개" + "<br>");
	out.print("백원" + m100 + "개" + "<br>");
	%></h1>
</body>
</html>