window.onload = function(){
	var li = document.querySelector("ul li:last-child");
	li.style.backgroundColor = "rgba(0,0,0,0.1)";
}
var del1 = document.querySelector("#del1");
var frm = document.querySelector("#frm");
del1.onclick = function(){
	var pass = document.querySelector("#pass");
	if(pass.value == ""){
		alert("비밀번호를 입력해주세요");
		pass.focus();
	}else{
		frm.submit();
	}
}