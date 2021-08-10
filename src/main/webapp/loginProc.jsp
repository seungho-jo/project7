<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   
    import = "ceo.*"
    import = "Member.*"
%>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String checked = request.getParameter("checked");
	System.out.println(checked);
	String msg = "로그인 실패";
	String url = "login.jsp";
	if(checked!=null){
		MemberDao dao = new MemberDao();
		Member m = dao.login(id, pass,checked);
		if(id.equals(m.getId())&&pass.equals(m.getPass())){
			msg = "로그인 성공!";
			if(m.getCeo_ckeck().equals("Y")){
				url = "index.jsp";
				session.setAttribute("idkey", id);
				session.setAttribute("ceo_num", m.getCeo_num());
				session.setAttribute("bs_name", m.getBs_name());
				session.setAttribute("ceo_check", m.getCeo_ckeck());
			}else if(m.getCeo_ckeck().equals("N")){
				url = "main_category.jsp";
				session.setAttribute("idkey", id);
				session.setAttribute("ceo_check", m.getCeo_ckeck());
			}
		}
	}
%>     
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>
