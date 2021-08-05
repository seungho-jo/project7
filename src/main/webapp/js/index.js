var sel = document.querySelectorAll(".sel");
var page = ["shop_add.jsp","shopInfo_add.jsp","menu_add.jsp",
			"delivery.jsp","review.jsp","order.jsp"];
for(var idx=0;idx<sel.length;idx++){
	move(idx);
}
function move(idx){
	sel[idx].onclick = function(){
		location.href=page[idx];
	}
}