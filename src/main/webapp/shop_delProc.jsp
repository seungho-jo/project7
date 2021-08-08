<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "ceo.Dao"
    %>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
	String id = (String)session.getAttribute("idkey");
	String pass = request.getParameter("pass");
	Dao dao = new Dao();
	String msg = dao.shop_del(id, pass);
	String url = "";
	if(msg.equals("삭제완료하였습니다")){
		url = "index.jsp";
	}else{
		url = "shop_del.jsp";
	}
%>   
<script>
	alert('<%=msg%>');
	location.href = "<%=url%>";
</script>  
