<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="main_content.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/450c3e4f96.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../css/main_category.css" />
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<nav class="search_addr">
		<span><b>배달받을 주소를 입력해주세요</b></span>
		<form>
	 	<input type="button" value="검색"/>
		<input type="text" name="addr" value="" placeholder="시/구를 입력해주세요"/>
	</nav>
	<section class="menu_category">
	<%
		CategoryDao dao = new CategoryDao();
		ArrayList<Category> clist = dao.showCategory();
	%>
		<div class="menu_line">
		<div class="category">전체보기<input type="hidden" name="category" value="전체보기"/></div>
	<%
		int cnt=2;
		for(int idx=0;idx<clist.size();idx++){
	%>
		<%if(idx%4==3){ %>
			<div class="menu_line">
			<%} %>
		<div class="category"><%=clist.get(idx).getKind()%>
			<input type="hidden" name="category" value="<%=clist.get(idx).getKind()%>"/></div>
		
		<%if(idx%4==2){ %>
			</div>
			<%} %>
		<%cnt++; %>
		<%} %>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script type="text/javascript">

</script>
<script type="text/javascript" src="../js/main_category.js"></script>
</html>