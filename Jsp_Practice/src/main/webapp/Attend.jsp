<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>�⼮��</h2>
<form action="Attend.jsp" method="post">
	�л� 1 : <input type="checkbox" name="_ab" value="�л�1"><p>
	�л� 2 : <input type="checkbox" name="_ab" value="�л�2"><p>
	�л� 3 : <input type="checkbox" name="_ab" value="�л�3"><p>
	�л� 4 : <input type="checkbox" name="_ab" value="�л�4"><p>
	�л� 5 : <input type="checkbox" name="_ab" value="�л�5"><p>
	�л� 6 : <input type="checkbox" name="_ab" value="�л�6"><p>
	�л� 7 : <input type="checkbox" name="_ab" value="�л�7"><p>
	�л� 8 : <input type="checkbox" name="_ab" value="�л�8"><p>
	�л� 9 : <input type="checkbox" name="_ab" value="�л�9"><p>
	�л� 10 : <input type="checkbox" name="_ab" value="�л�10"><p>
	<input type="submit" value="�Ἦüũ"><p>
</form>

<%
	request.setCharacterEncoding("euc-kr");
	String[] ab = request.getParameterValues("_ab");
	
	if(ab == null){
		ab = new String[1];
		ab[0] = "";
	}
	
	out.println("�Ἦ �л�<p>");
	for(int i =0; i < ab.length; i++) {
		if(ab[i] != null) {
			out.println(ab[i] + " ");
		}
	}





%>
</body>
</html>