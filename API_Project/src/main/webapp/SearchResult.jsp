<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="API.ApiNews, org.json.JSONArray, org.json.JSONObject, org.json.JSONException, java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>

<body>
	<div class="container">
		<div class="search-header">
			<a href="/">Search Topics</a>
		</div>
		<div class="search-content">
			<%
			String query = request.getParameter("_query");
			String apiResponse = "";
			apiResponse = ApiNews.getNews(query);
			JSONArray jsonArray = new JSONArray(apiResponse);
			JSONObject item = new JSONObject();

			if (query != null && !query.isEmpty()) {
				try {
					for (int i = 0; i < jsonArray.length(); i++) {
				item = jsonArray.getJSONObject(i);
					}
				} catch (JSONException e) {
					out.println("JSON 파싱 오류");
				}
			} else {
				out.println("검색어를 입력해주세요.");
			}
			%>
			<div class="search-result">
				<div class="title">
					<strong><%=item.getString("title")%></strong>
				</div>
				<div class="description">
					<%=item.getString("description")%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>