<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 request.setCharacterEncoding("utf-8");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>집으로 - 로그인</title>
<link rel = stylesheet href = "css/login_CSS.css"/>
</head>
<%
	String id = request.getParameter("");
%>

<body>
	<section>
		<form action="loginProc.jsp" name = "loginInfo" onsubmit = "return checkValue()"> 
		<div id = "divScrollMain">
		<div class = "UbtnOBtn">
		<input class="ceo_check" type = "button" value = "사용자"/>
		<input class="ceo_check" type = "button" value = "사장님"/>
		<input id="checked" name="checked" type="hidden" value="">
		</div>
		<img src = "img/title2.PNG" alt="">
		<video src = "video/shinsegaeFood.mp4" autoplay muted loop></video>
			<div class = "IdPass">
				<div class = "id"><input type="text" name = "id" placeholder="아이디를 입력하세요" maxlength="50">
				</div>
				<div class = "pass"><input type="password" name="pass" placeholder = "비밀번호를 입력하세요" maxlength="50">
				</div>
			<div><input id="button" type="submit" value="로그인"></div>
			</div>
			<div class = "SchPart">
			<a class = "idSch" href ="idSch.jsp" >아이디찾기</a> 

			<a class = "pwSch" href ="pwSch.jsp">비밀번호찾기</a>
			
			<div class = "content">
			<span>아직 회원이 아니라면?</span><a href = "join.jsp">회원가입 하러 가기</a>
			</div>
		</div>
		</div>
		</form>
		</section>
<%

%>
</body>
<script type="text/javascript" src = "js/login.js"></script>
</html>