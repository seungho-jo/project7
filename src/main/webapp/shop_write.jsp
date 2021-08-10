<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"
%>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
	long ceo_num = (long)session.getAttribute("ceo_num");
	String bs_name = (String)session.getAttribute("bs_name");
	StringBuffer ceo_numS = new StringBuffer();
	ceo_numS.append(Long.toString(ceo_num));
	ceo_numS.insert(3,"-");
	ceo_numS.insert(6,"-");
%>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="css/shop_write.css">
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
				<form id="frmm" action="shop_writeProc.jsp" method="post">
					<table>
						<colgroup>
							<col width="20%"><col width="80%">
						</colgroup>
						<tr><th>가게명</th><td><input type="text" name="sname"></td></tr>
						<tr><th>우편번호</th><td><input type="text" id="sample6_postcode" name="zipcode" placeholder="우편번호">
							<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"></td></tr>
						<tr><th>가게주소</th><td><input type="text" id="sample6_address" name="addr1" placeholder="주소">
							<input type="text" id="sample6_detailAddress" name="addr2" placeholder="상세주소"></td></tr>
						<tr><th>전화번호</th><td><input type="text" name="phoneNum"></td></tr>
						<tr><th>영업시간</th><td><input type="time" name="time1">~<input type="time" name="time2"></td></tr>
						<tr><th>카테고리</th><td><input type="radio" name="category" value="ck">치킨<input type="radio" name="category" value="cf">중국집<input type="radio" name="category" value="wf">피자/양식<br>
						<input type="radio" name="category" value="kf">한식<input type="radio" name="category" value="jf">일식<input type="radio" name="category" value="sb">분식</td></tr>
						<tr><th>상호명</th><td><%=bs_name%></td></tr>
						<tr><th>사업자번호</th><td><%=ceo_numS %></td></tr>
						<tr><td colspan="2"><input id="btnss" type="button" value="등록"></td></tr>
					</table>
				</form>
			</div>
		</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="js/shop_write.js" type="text/javascript"></script>
</html>