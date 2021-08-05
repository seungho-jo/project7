<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   %>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String msg = "로그인 실패";
	String url = "login.jsp";
	if(id!=null&&pass!=null){
		if(id.equals("himan")&&pass.equals("11")){
			msg = "로그인 성공!";
			url = "main_category.jsp";
			session.setAttribute("idkey", id);
		}else if(id.equals("ceo")&&pass.equals("22")){
			msg = "사장님 반갑습니다!!";
			url = "index.jsp";
			session.setAttribute("idkey", id);
		}
	}
%>     
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>
