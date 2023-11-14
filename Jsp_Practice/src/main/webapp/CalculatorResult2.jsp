<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	double sum = Double.parseDouble(d1) +
				 Double.parseDouble(d2);
%>
<%= d1 %> + <%= d2 %> = <%= sum %>

</body>
</html>