<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"    
    %>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
%>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/storemenu.css"/>
<script type="text/javascript">
$(document).ready(function() {
	$(".content").hide(); //Hide all content
	$("ul li:first").addClass("active").show(); //Activate first tab
	$(".content:first").show(); //Show first tab content

	//On Click Event
	$("ul li").click(function() {
		$("ul li").removeClass("active"); //Remove any "active" class
   	 	$(this).addClass("active"); //Add "active" class to selected tab
    	$(".content").hide(); //Hide all tab content

    	var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
    	$(activeTab).fadeIn(); //Fade in the active ID content
    	return false;
	});
});

</script>

</head>
<body>
	<div class="section">
		<div class="info">
			<table id="storeinfo">
				<tr>
					<td colspan="2"><span style="font-size:15px">멕시카나-부천북부점</span></td>
				</tr>
				<tr>
					<td rowspan="5" style="border-right: hidden" width="100px"><img src="img/info.JPG"></td>
					<td style="border-bottom: hidden">별점 <span id="avg">4.8</span></td>
				</tr>
				<tr>
					<td style="border-bottom: hidden"><span style="color:red">5,000원 할인</span></td>
				</tr>
				<tr>
					<td style="border-bottom: hidden">최소주문금액 <span id="minprice">16,000원</span></td>
				</tr>
				<tr>
					<td style="border-bottom: hidden">결제 <span id="payment">신용카드, 현금</span></td>
				</tr>
				<tr>
					<td>배달시간 <span id="time">55~65분</span></td>
				</tr>
				<tr>
					<td colspan="2">사장님알림</td>
				</tr>		
			</table>
		</div>
		<nav>
			<div id="nav">
			<table id="orderlist">
				<tr class="tr1">
					<td colspan="2"><span>주문표</span></td>
				</tr>
				<tr>
					<td id="listmenu">투마리세트</td>
				</tr>
				<tr>
					<td id="listprice">22,000원</td><td id="listcnt">수량</td>
				</tr>	
				<tr class="tr2">
					<td colspan="2"><span style="text-align:center">주문하기</span></td>
				</tr>
			</table>
			</div>
		</nav>
		<section>
		<div id="board">
				<div id="list">
					<ul>
						<li><a href="#tab1">메뉴</a></li>
						<li><a href="#tab2">클린리뷰</a></li>
						<li><a href="#tab3">정보</a></li>
					</ul>
				</div>
				<div id="tab1" class="content">

					<div>
						<div class="morediv">
							<div class="more"></div>
						</div>
						<button class="accordion">메뉴 1</button>
						<div id="panel" class="panel">
								<ul class="items">
								<li class="a">투마리세트</li>
	                           	<li class="b">치킨 두 종류 선택</li>
	                           	<li class="c">22,000원</li>
	                           	</ul>
	                           	<img src="img/menu1.JPG"/>
						</div>	


						<button class="accordion">메뉴 2</button>
						<div class="panel">
							<p>내용 2</p>
						</div>

						<button class="accordion">메뉴 3</button>
						<div class="panel">
							<p>내용 3</p>
						</div>

						<input type="hidden" value="">
					</div>

				</div>
				<div id="tab2" class="content">tab2</div>
				<div id="tab3" class="content">

					<div>
						<a href="#"><img class="picture" src="img/thumb02.jpg"></a>
						<input type="hidden" value="">
					</div>

				</div>
			</div>
		</section>
</div>


		
</body>
<script type="text/javascript" src="js/storemenu.js"></script>
</html>