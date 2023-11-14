<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String d1 = request.getParameter("_d1");
	String d2 = request.getParameter("_d2");
	String cal = request.getParameter("_cal");
	/* double sum = Double.parseDouble(d1) + Double.parseDouble(d2);
	double min = Double.parseDouble(d1) - Double.parseDouble(d2);
	double mul = Double.parseDouble(d1) * Double.parseDouble(d2);
	double div = Double.parseDouble(d1) / Double.parseDouble(d2); */
	double result = 0;
	if(cal.equals("+"))
		result = Double.parseDouble(d1) + Double.parseDouble(d2);
	else if(cal.equals("-"))
		result =Double.parseDouble(d1) - Double.parseDouble(d2);
	else if(cal.equals("*"))
		result =Double.parseDouble(d1) * Double.parseDouble(d2);
	else if(cal.equals("/"))
		result = Double.parseDouble(d1) / Double.parseDouble(d2);
	
	out.println(d1+cal+d2+"="+result);
	
%>
</body>
</html>