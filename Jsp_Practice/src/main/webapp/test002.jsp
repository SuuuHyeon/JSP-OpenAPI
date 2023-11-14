<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원 가입 완료</h1>

<%
	request.setCharacterEncoding("UTF-8");	

	String name = request.getParameter("_name");
	String id = request.getParameter("_id");
	String password = request.getParameter("_password");
	String address = request.getParameter("_address");
	String phone = request.getParameter("_phone");
	String religion = request.getParameter("_religion");
	String interest[] = request.getParameterValues("_interest");
%>

성명 : <%=name %><p>
ID : <%=id %><p>
암호 : <%=password %><p>
주소 : <%=address %><p>
전화번호 : <%=phone %><p>
종교 : <%=religion %><p>
관심분야 :
<%
	for(int i=0; i<interest.length; i++) {
		out.println(interest[i] + " ");
	}
%>
</body>
</html>