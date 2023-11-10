<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.json.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Naver NEWS Searching</title>
<link href="style.css" rel="stylesheet" type="text/css">
<style>
</style>
</head>
<body>
	<%
	if (request.getParameter("query") != null) {
		String query = request.getParameter("query");
		API.ApiNews newsApi = new API.ApiNews();
		JSONArray newsItems = newsApi.getNews(query);
	%>
	<div class="container">
		<h1 class="search-header">Search News</h1>
		<div class="search-content">
			<form action="Search_news.jsp" method="get">
				<input id="search-input" name="query" type="text" value=<%=query%>
					placeholder="  search...">
				<button id="search-btn" type="submit">
					<span id="btn-icon">search
				</button>
			</form>
		</div>
		<div class="news-container">
			<%
			for (int i = 0; i < newsItems.length(); i++) {
				JSONObject obj = newsItems.getJSONObject(i);
				String title = obj.getString("title");
				String originalLink = obj.getString("originallink");
				String link = obj.getString("link");
				String description = obj.getString("description");
				String pubDate = obj.getString("pubDate");
			%>
			<div class="news-item">
				<h2 class="news-title">
					<a href="<%=originalLink%>"><%=title%></a>
				</h2>
				<p class="news-description"><%=description%></p>
				<p class="news-pubDate"><%=pubDate%></p>
				<a class="news-link" href="<%=link%>">Read more</a>
			</div>
			<%
			}
			%>
		</div>
		<%
}
%>


	</div>
</body>
</html>