<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"    
%>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
%>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/index.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<nav></nav>
	<section>
		<div class="sel"><div class="title">가게등록</div><div class="shop_add"></div></div>
		<div class="sel"><div class="title">가게정보등록</div><div class="shop_add"></div></div>
		<div class="sel"><div class="title">메뉴등록</div><div class="menu"></div></div>
		<div class="sel"><div class="title">배달설정</div><div class="delivery"></div></div>
		<div class="sel"><div class="title">리뷰관리</div><div class="review"></div></div>
		<div class="sel"><div class="title">주문관리</div><div class="order"></div></div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="js/index.js" type="text/javascript"></script>
</html>
