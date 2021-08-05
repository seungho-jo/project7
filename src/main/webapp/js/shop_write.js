function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = '';
                var extraAddr = '';
                if (data.userSelectedType === 'R') {
                    addr = data.roadAddress;
                } else {
                    addr = data.jibunAddress;
                }
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
window.onload = function(){
	var li = document.querySelector("ul li:nth-child(2)");
	li.style.backgroundColor = "rgba(0,0,0,0.1)";
}
var btnss = document.querySelector("#btnss");
btnss.onclick = function(){
	var sname = document.querySelector("[name=sname]");
	var zipcode = document.querySelector("[name=zipcode]");
	var phoneNum = document.querySelector("[name=phoneNum]");
	var time1 = document.querySelector("[name=time1]");
	var time2 = document.querySelector("[name=time2]");
	var category = $('input[name="category"]:checked').val();
	var frmm = document.querySelector("#frmm");
	if(sname.value == ""){
		alert("가게명을 입력해주세요");
		sname.focus();
	}else if(zipcode.value==""){
		alert("우편번호를 입력해주세요");
		zipcode.focus();
	}else if(phoneNum.value==""){
		alert("전화번호를 입력해주세요");
		phoneNum.focus();
	}else if(time1.value==""){
		alert("오픈시간을 입력해주세요");
		time1.focus();
	}else if(time2.value==""){
		alert("마감시간을 입력해주세요");
		time2.focus();
	}else if(category==undefined){
		alert("카테고리를 선택해주세요");
	}else{
		frmm.submit();
	}
}