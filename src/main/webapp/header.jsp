<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
	String id = (String)session.getAttribute("idkey");
	String ceo_check = (String)session.getAttribute("ceo_check");
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
			<%if(ceo_check==null||ceo_check.equals("N")){%>
			<a href="main_category.jsp"><img id="title" src="img/title2.PNG"></a>
			<%}else if(ceo_check.equals("Y")){ %>
			<a href="index.jsp"><img id="title" src="img/title2.PNG"></a>
			<%} %>
			<div id="btn">
				<%if(ceo_check==null){%>
				<button onclick="move()">로그인</button>
				<button>주문표</button>
				<%}else if(ceo_check.equals("N")){ %>
				<button onclick="back()">로그아웃</button>
				<button>주문표</button>
				<%}else if(ceo_check.equals("Y")){ %>
				<button onclick="back()">로그아웃</button>
				<%} %>
			</div>
		</div>
	</header>
</body>
<script>
	function move(){
		location.href = "login.jsp";
	}
	function back(){
		location.href = "logout.jsp";
	}
</script>
</html>