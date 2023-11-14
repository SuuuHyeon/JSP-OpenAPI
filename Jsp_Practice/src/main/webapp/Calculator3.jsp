<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="CalculatorResult3.jsp" method="get">
	<input type="hidden" name="_cal" Value="+">
	<input type="text" name="_d1"> +
	<input type="text" name="_d2">
	<input type="submit" value="실행">
	<input type="reset" value="취소">
</form><p>

<form action="CalculatorResult3.jsp" method="get">
	<input type="hidden" name="_cal" Value="-">
	<input type="text" name="_d1"> -
	<input type="text" name="_d2">
	<input type="submit" value="실행">
	<input type="reset" value="취소">
</form><p>

<form action="CalculatorResult3.jsp" method="get">
	<input type="hidden" name="_cal" Value="*">
	<input type="text" name="_d1"> *
	<input type="text" name="_d2">
	<input type="submit" value="실행">
	<input type="reset" value="취소">
</form><p>

<form action="CalculatorResult3.jsp" method="get">
	<input type="hidden" name="_cal" Value="/">
	<input type="text" name="_d1"> /
	<input type="text" name="_d2">
	<input type="submit" value="실행">
	<input type="reset" value="취소">
</form>
</body>
</html>