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
<link rel="stylesheet" href="css/shop_del.css">
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
			<form id="frm" action="shop_delProc.jsp" method="post">
				<p align="center">가게 삭제</p>
				<span>비밀번호</span> <input id="pass" type="password" name="pass" placeholder="비밀번호를 입력하세요"><br>
				<input id="del1" type="button" value="신청">
			</form>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="js/shop_del.js" type="text/javascript"></script>
</html>