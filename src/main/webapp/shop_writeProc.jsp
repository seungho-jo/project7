<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "ceo.*"
    import = "java.util.*"    
    %>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
	String id = (String)session.getAttribute("idkey");
	String shop_name = request.getParameter("sname");
	String zipcode = request.getParameter("zipcode");
	String shop_addr = request.getParameter("addr1") + request.getParameter("addr2");
	String phoneNum = request.getParameter("phoneNum");
	String openTime = request.getParameter("time1");
	String endTime = request.getParameter("time2");
	String category = request.getParameter("category");
	String category2 = "";
	switch(category){
	case "ck" :
		category2 = "치킨";
		break;
	case "cf" :
		category2 = "중국집";
		break;
	case "wf" :
		category2 = "피자/양식";
		break;
	case "kf" :
		category2 = "한식";
		break;
	case "jf" :
		category2 = "일식";
		break;
	case "sb" :
		category2 = "분식";
		break;
	}
	long ceo_num = (long)session.getAttribute("ceo_num");
	String ceo_numS = Long.toString(ceo_num);
	String bs_name = (String)session.getAttribute("bs_name");
	String sub1 = ceo_numS.substring(0,3);
	String sub2 = ceo_numS.substring(5,10);
	String shop_code = category + sub1 + sub2;
	Shop s = new Shop(shop_code,shop_name,zipcode,shop_addr,phoneNum,id,openTime,endTime,category2,ceo_num,bs_name);
	Dao dao = new Dao();
	dao.shop_add(s);
	String url = "shop_add.jsp";
	String msg = "등록 완료";
%>  
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>
   