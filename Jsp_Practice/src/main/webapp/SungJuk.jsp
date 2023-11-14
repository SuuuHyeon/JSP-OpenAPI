<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>성적처리</h1>
<%
String jum1 = request.getParameter("_jum1");
String jum2 = request.getParameter("_jum2");
String jum3 = request.getParameter("_jum3");
String jum4 = request.getParameter("_jum4");

if(jum1 == null)jum1 = "0";
if(jum2 == null){jum2 = "0";}
if(jum3 == null){jum3 = "0";}
if(jum4 == null){jum4 = "0";}
%>
<form action="SungJuk.jsp" method="get">

전자논리회로 :
	<input type="text" name="_jum1" value=<%=jum1 %>><p>
TCP/IP :
	<input type="text" name="_jum2" value=<%=jum2 %>><p>
시스템보안 :
	<input type="text" name="_jum3" value=<%=jum3 %>><p>
JAVA프로그래밍 :
	<input type="text" name="_jum4" value=<%=jum4 %>><p>
	<input type="submit" value="평균"> <input type="reset" value="취소">
</form>

<%
	double avg = (Double.parseDouble(jum1) + 
				  Double.parseDouble(jum2) +
				  Double.parseDouble(jum3) +
				  Double.parseDouble(jum4)) / 4;
	
	out.println("<p> 평균 : " + avg);
%>

</body>
</html>