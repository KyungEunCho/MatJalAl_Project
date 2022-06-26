/**
 * 
 */
 
 function checkEmpty(sel) {
	if($.trim($(sel).val()) == "") {
		return true;
	} else {
		return false;
	}
}
function emailCheck(EMAIL) {
	const regEmail = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	
	if(regEmail.test(EMAIL)) {
		return true;
	} else {
		return false;
	}
}
function idCheck(ID) {
	const regId = /^[A-Za-z0-9]{4,15}$/;
	
	if(regId.test(ID)) {
		return true;
	} else {
		return false;
	}
}
function nicknameCheck(NICK_NAME) {
	const regNickname = /^[가-힣|a-z|A-Z|0-9|]+$/;
	
	if(regNickname.test(NICK_NAME)) {
		return true;
	} else {
		return false;
	}
}
function lenthCheck(e, length) {
	if(e.value.length >= length) {
		return false;
	}
	
	$(this).off().focusout(function() {
		if(e.value.length > length) {
			e.value = "";
		}
	})
	
	return true;
}

const isSubmit = (function() {
	var emailCheck = false;
	var idCheck = false;
	var nicknameCheck = false;
		
	const setEmailCheck = function(set) {
		emailCheck = set ? true : false;
		isSubmit();
	}
	const setIdCheck = function(set) {
		idCheck = set ? true : false;
		isSubmit();
	}
	const setNicknameCheck = function(set) {
		nicknameCheck = set ? true : false;
		isSubmit();
	}
	
	const isSubmit = function() {
		if(emailCheck && idCheck && nicknameCheck) {
			$(".btn_big").css("background", "#2AC1BC");
			return true;
		} else {
			$(".btn_big").css("background", "#ddd");
			return false;
		}
	}
		
	return {
		setEmailCheck : setEmailCheck,
		setIdCheck : setIdCheck,
		setNicknameCheck : setNicknameCheck,
		isSubmit : isSubmit
	}
})();

function overlapCheck(data) {
	let isUseable = false;
	$.ajax({
		url: "/overlapCheck",
		type: "get",
		data: data,
		async: false
	})
	.done(function(result){
		if(result == 0 ) {
			isUseable = true;
		} 
	})
	.fail(function(){
		alert("에러");
	});
	
	return isUseable;
	
}



