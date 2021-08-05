var addr = document.querySelector("input[name=addr]");

var shop_list = document.querySelectorAll(".shop_list");
for(var idx=0;idx<shop_list.length;idx++){
	shop_list[idx].addEventListener('click',function(){
	if(addr.value==""){
			alert("배달주소를 입력해주세요");	
			addr.focus();
		}else{
			
		}
});
}
function goPage(){
	location.href = "storemenu.jsp";
}
