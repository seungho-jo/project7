<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
%>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/shop_add.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<nav id="img"></nav>
	<section>
		<nav id="side">
			<ul>
				<li><a href="shop_add.jsp">가게정보</a></li>
				<li><a href="shop_write.jsp">정보입력</a></li>
				<li>정보수정</li>
				<li><a href="shop_del.jsp">가게삭제</a></li>
			</ul>
		</nav>
		<div id="content">
			<table>
				<tr><th>* 가게명</th><td>만땅치킨-강남점</td></tr>
				<tr><th>* 가게주소</th><td>서울 서초구 서초동 1321-6 서초동아타워 지하1층</td></tr>
				<tr><th>* 영업시간</th><td>09:00 - 20:30</td></tr>
				<tr><th>* 전화번호</th><td>050352915808</td></tr>
				<tr><th>* 상호명</th><td>초원F&B(에프앤비)</td></tr>
				<tr><th>* 사업자등록번호</th><td>416-23-62398</td></tr>
				<tr><th>* 판매종류</th><td>치킨</td></tr>
			</table>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="js/shop_add.js" type="text/javascript"></script>
</html>