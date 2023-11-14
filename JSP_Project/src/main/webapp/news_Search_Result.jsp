<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.* , api.GetApi, api.News"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    .search-container {
        text-align: center;
        padding-top: 50px;
    }
    .search-input {
        width: 40%;
        height: 45px;
        font-size: 18px;
        margin: 0 auto;
        display: block;
    }
    .search-btn {
        height: 45px;
        font-size: 18px;
        margin: 10px;
    }
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: center;
    }
    th {
        background-color: #4CAF50;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>
<%
	String query = request.getParameter("_query");
	if(query == "")	{
		out.println("<h1>검색어를입력하세요.</h>");
		return;
	}

%>
<div class="container search-container">
    <h1>News Search</h1>
    <form action="news_Search_Result.jsp" method="get">
        <input type="text" class="form-control search-input" name="_query" value=<%=query %>>
        <button type="submit" class="btn btn-primary search-btn">Search</button>
    </form>
</div>
<table border="1">
        <tr>
            <th>제목</th>
            <th>세부사항</th>
            <th>링크</th>
            <th>공개일</th>
            <th>Original Link</th>
        </tr>
        <%
        List<News> newsList = GetApi.getNewsList(query);  // GetApi 클래스의 getNewsList 메소드를 호출하여 뉴스 목록을 가져옵니다.
        for (News news : newsList) {
        %>
        <tr>
            <td><%= news.getTitle() %></td>
            <td><%= news.getDescription() %></td>
            <td><%= news.getLink() %></td>
            <td><%= news.getPubDate() %></td>
            <td><a href=<%= news.getOrgLink() %>>Read more</a></td>
        </tr>
        <%  }  %>
    </table>
    
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>