/**
 * 
 */
function checkValue(){
		var id = document.querySelector("[name = id]");
		var pass = document.querySelector("[name = pass]");
		var form = document.querySelector("form");
		if(!id.value){
			alert("아이디를 작성해주세요.");
			id.focus();
			return false;
		}
		
		else if(!pass.value){
			alert("비밀번호를 작성해주세요.");
			pass.focus();
			return false;
		} else{
			form.submit();
		}
		
	}
var ceo_check = document.querySelectorAll(".ceo_check");
var checked = document.querySelector("#checked");
for(var idx=0;idx<ceo_check.length;idx++){
	ceo_check[idx].onclick = function(){
		ceo_check[0].style.color = "white";
		ceo_check[1].style.color = "white";
		checked.value = this.value;
		this.style.color = "red";
	}
}