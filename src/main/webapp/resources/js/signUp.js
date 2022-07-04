/**
 * 
 */
function emailCheck(email) {
	const regEmail = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	
	if(regEmail.test(email)) {
		return true;
	} else {
		return false;
	}
}
function idCheck(id) {
	const regId = /^[A-Za-z0-9]{4,15}$/;
	
	if(regId.test(id)) {
		return true;
	} else {
		return false;
	}
}
function nicknameCheck(nickname) {
	const regNickname = /^[가-힣|a-z|A-Z|0-9|]+$/;
	
	if(regNickname.test(nickname)) {
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
	$("#id").keypress(function() {
		const id = $("#id").val().replaceAll("", "");
		const msgBox = $(this).siblings(".msg_box");
		
		if(!id) {
			msgBox.text("아이디를 입력해주세요.");
			isSubmit.setIdCheck(false);
			return;
		}
			
		if(!idCheck(id)) {
			msgBox.test("사용할 수 없는 아이디입니다.");
			isSubmit.setIdCheck(false);
			return;
		}
		const data = {
				value : id,
				valueType : "id"
		};
		if(overlapCheck(data)) {
			msgBox.text("사용 가능합니다.");
			isSubmit.setIdCheck(true);
		} else {
			msgBox.text("이미 사용중인 아이디입니다.");
			isSubmit.setIdCheck(false);
		}
	});
	$("#email").focusout(function() {
		const email = $("#email").val();
		const msgBox = $(this).siblings(".msg_box");
		
		if(checkEmpty(email)) {
			msgBox.text("이메일을 입력해 주세요");
			isSubmit.setEmailCheck(false);
			return;
		} 
		if(!emailCheck(email)) {
			msgBox.text("사용 불가능합니다");
			isSubmit.setEmailCheck(false);
		} else {
			msgBox.text("");
			isSubmit.setEmailCheck(true);
		}
	});

	$("#nickname").focusout(function() {
		const nickname = $("#nickname").val();
		const msgBox = $(this).siblings(".msg_box");
		
		if(!nickname) {
			msgBox.text("닉네임을 입력 해주세요");
			isSubmit.setNicknameCheck(false);
			return;
		}
		if(!nicknameCheck(nickname)) {
			msgBox.text("닉네임은 한글, 영어, 숫자만 4~10자리로 입력 가능합니다.");
			isSubmit.setNicknameCheck(false);
			return;
		}
		
		let data = {
			value : nickname,
			valueType : "nickname"
		};
		
		if(!overlapCheck(data)) {
			msgBox.text("이미 사용중인 닉네임입니다");
			isSubmit.setNicknameCheck(false);
		} else {
			msgBox.text("사용 가능합니다");
			isSubmit.setNicknameCheck(true);
		}
	});
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



