<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>출석부</h2>
<form action="Attend.jsp" method="post">
	학생 1 : <input type="checkbox" name="_ab" value="학생1"><p>
	학생 2 : <input type="checkbox" name="_ab" value="학생2"><p>
	학생 3 : <input type="checkbox" name="_ab" value="학생3"><p>
	학생 4 : <input type="checkbox" name="_ab" value="학생4"><p>
	학생 5 : <input type="checkbox" name="_ab" value="학생5"><p>
	학생 6 : <input type="checkbox" name="_ab" value="학생6"><p>
	학생 7 : <input type="checkbox" name="_ab" value="학생7"><p>
	학생 8 : <input type="checkbox" name="_ab" value="학생8"><p>
	학생 9 : <input type="checkbox" name="_ab" value="학생9"><p>
	학생 10 : <input type="checkbox" name="_ab" value="학생10"><p>
	<input type="submit" value="결석체크"><p>
</form>

<%
	request.setCharacterEncoding("euc-kr");
	String[] ab = request.getParameterValues("_ab");
	
	if(ab == null){
		ab = new String[1];
		ab[0] = "";
	}
	
	out.println("결석 학생<p>");
	for(int i =0; i < ab.length; i++) {
		if(ab[i] != null) {
			out.println(ab[i] + " ");
		}
	}





%>
</body>
</html>