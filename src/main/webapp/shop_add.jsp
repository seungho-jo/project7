<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import = "ceo.*"    
%>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
	String id = (String)session.getAttribute("idkey");
	Shop sp = new Shop();
	Dao dao = new Dao();
	sp = dao.shopInfo(id);
	StringBuffer ceo_numS = new StringBuffer();
	ceo_numS.append(Long.toString(sp.getCeo_num()));
	ceo_numS.insert(3,"-");
	ceo_numS.insert(6,"-");
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
				<tr><th>* 가게명</th><td><%=sp.getShop_name() %></td></tr>
				<tr><th>* 가게주소</th><td><%=sp.getShop_addr() %></td></tr>
				<tr><th>* 영업시간</th><td><%=sp.getOpenTime() %> - <%=sp.getEndTime() %></td></tr>
				<tr><th>* 전화번호</th><td><%=sp.getShop_phone() %></td></tr>
				<tr><th>* 상호명</th><td><%=sp.getBs_name() %></td></tr>
				<tr><th>* 사업자등록번호</th><td><%=ceo_numS %></td></tr>
				<tr><th>* 판매종류</th><td><%=sp.getCategory() %></td></tr>
			</table>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="js/shop_add.js" type="text/javascript"></script>
</html>