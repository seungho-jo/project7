<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" href="css/header.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<header>
		<div id="top">
			<a href="index.jsp"><img id="title" src="img/title2.PNG"></a>
			<div id="btn">
				<button>로그인</button>
				<button>주문표</button>
			</div>
		</div>
	</header>
</body>
</html>