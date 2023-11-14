<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.* , api.GetApi, api.News"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News Search</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
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
</style>
</head>
<body>
<div class="container search-container">
    <h1>News Search</h1>
    <form action="news_Search_Result.jsp" method="get">
        <input type="text" class="form-control search-input" name="_query" placeholder="Search for news...">
        <button type="submit" class="btn btn-primary search-btn">Search</button>
    </form>
</div>
<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
