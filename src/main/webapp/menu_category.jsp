<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="main_content.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/menu_category.css" />
<script src="https://kit.fontawesome.com/4849ba1eab.js" crossorigin="anonymous"></script>
</head>
<body>
<%
		String category = request.getParameter("category");
		String addr = request.getParameter("addr");
		CategoryDao dao = new CategoryDao();
		ArrayList<Category> clist = dao.showCategory();
		ArrayList<Shop> slist = dao.showMenuCategory(category);
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<nav class="search_addr">
		<form>
	 	<input type="submit" value="검색"/>
		<input type="text" name="addr" value="<%=addr%>" placeholder="시/구를 입력해주세요"/>
		</form>
	</nav>
	
	<nav class="category_bar">
		<div class="category">전체보기</div>
		<%for(Category c : clist){ %>
			<div class="category"><%=c.getKind() %></div>
		<%} %>
	</nav>
	<section class="select_shop">
		<%for(int idx=0;idx<slist.size();idx++){ %>
			<%if(idx%2==0) {%>
				<div class="category_menu">
			<%} %>
			<div class="shop_list" onclick="goPage()">
				<i class="fas fa-utensils"></i>
				<p><%=slist.get(idx).getShopName() %></p>
			</div>
			<%if(idx%2==1){ %>
				</div>
			<%} %>
			
		<%} %>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="js/menu_category.js"></script>
</html>