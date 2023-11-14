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
String d1 = request.getParameter("_d1");
String d2 = request.getParameter("_d2");
String cal = request.getParameter("_cal");

//null값 처리
if(d1 == null){d1 = "0";}
if(d2 == null){d2 = "0";}
if(cal == null){cal = " ";}


/*double sum = Double.parseDouble(d1) + Double.parseDouble(d2);
double min = Double.parseDouble(d1) - Double.parseDouble(d2);
double mul = Double.parseDouble(d1) * Double.parseDouble(d2);
double div = Double.parseDouble(d1) / Double.parseDouble(d2); */

double result = 0;
%>
<form action="Calculator4.jsp" method="get">
	<input type="hidden" name="_cal" Value="+">
	<input type="text" name="_d1" value =<%=d1 %>> +
	<input type="text" name="_d2" value=<%=d2 %>>
	<input type="submit" value="실행">
	<input type="reset" value="취소">
</form><p>

<form action="Calculator4.jsp" method="get">
	<input type="hidden" name="_cal" Value="-">
	<input type="text" name="_d1" value=<%=d1 %>> -
	<input type="text" name="_d2" value=<%=d2 %>>
	<input type="submit" value="실행">
	<input type="reset" value="취소">
</form><p>

<form action="Calculator4.jsp" method="get">
	<input type="hidden" name="_cal" Value="*">
	<input type="text" name="_d1"> *
	<input type="text" name="_d2">
	<input type="submit" value="실행">
	<input type="reset" value="취소">
</form><p>

<form action="Calculator4.jsp" method="get">
	<input type="hidden" name="_cal" Value="/">
	<input type="text" name="_d1"> /
	<input type="text" name="_d2">
	<input type="submit" value="실행">
	<input type="reset" value="취소">
</form>

<%
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