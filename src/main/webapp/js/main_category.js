var addr = document.querySelector("input[name=addr]");

var category = document.querySelectorAll(".category");
for(var idx=0;idx<category.length;idx++){
	category[idx].addEventListener('click',function(){
	if(addr.value==""){
			alert("배달주소를 입력해주세요");	
			addr.focus();
		}else{
			location.href=
			"menu_category.jsp?addr="+addr.value+"&category=전체보기";
		}
});
}

