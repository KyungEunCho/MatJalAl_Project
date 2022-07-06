/**
 * 
 */
const inputId = document.querySelector("#id");
const inputEmail = document.querySelector("#email");
const inputNickname = document.querySelector("#nick_name");
const inputPassword = document.querySelector("#password");
const inputPassword2 = document.querySelector("#password2");

const passwordFalse = document.querySelector(".pw_false");
const passwordSuccess = document.querySelector(".pw_success");

const passwordLength = document.querySelector(".pw_length");
const passwordComb = document.querySelector(".pw_comb");
const passwordContn = document.querySelector(".pw_contn");
const passwordOk = document.querySelector(".pw_ok");

const elSubmitButton = document.querySelector('.btn_big');

//필수입력 체크
function checkData() {
	if(checkEmpty("#id")) {
		Swal.fire({
			  title: '아이디를 입력해주세요.',
			  showConfirmButton: true,
			  confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
		});		
	}else if(checkEmpty("#email")) {
		Swal.fire({
			  title: '이메일을 입력해주세요.',
			  showConfirmButton: true,
			  confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
		});
		$("#email").focus();
	} 
	else if(checkEmpty("#nick_name")) {
		Swal.fire({
			  title: '닉네임을 입력해주세요.',
			  showConfirmButton: true,
			  confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
		});
		$("#nick_name").focus();
	} else if(checkEmpty("#password")) {
		Swal.fire({
			  title: '비밀번호를 입력해주세요.',
			  showConfirmButton: true,
			  confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
		});
		$("#password").focus();
	} else if(checkEmpty("#password2")) {
		Swal.fire({
			  title: '비밀번호를 한번 더 입력해주세요.',
			  showConfirmButton: true,
			  confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
		});
		$("#password2").focus();
	} else {
		if(isAllCheck()) {
			$("#signUpForm").submit();									
		} else {
			Swal.fire({
				title: '모든 조건이 충족되어야 합니다.',
				showConfirmButton: true,
				confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
			});			
		}
	}
}

// 아이디 유효성 검사
function idFn() {
	var id = $("#id").val();
	
	$.ajax({
		url:'/idCheck',
		type: 'post',
		data : {id:id},
		success : function(cnt) {
			if(cnt != 1) {
				if(isMoreThan4Length(inputId.value) && idChar(inputId.value)) { // 유효성 검사
					$('.id_ok').css("display", "inline-block");
					$('.id_message').css("display", "none");
					$('.id_overlap').css("display","none");
				} else {
					$('.id_ok').css("display", "none");
					$('.id_message').css("display", "inline-block");
					$('.id_overlap').css("display","none");
				}	
			} else {
				$('.id_ok').css("display","none");
				$('.id_message').css("display","none"); 
				$('.id_overlap').css("display","inline-block");
			}
		},
		error : function() {
			alert("에러입니다");
		}
	}); // ajax 끝
}
// 이메일 유효성 검사
function emailFn() {
	var email = $("#email").val();
	
	$.ajax({
		url: '/emailCheck',
		type: 'post',
		data: {email:email},
		success: function(mail) {
			if(mail != 1) {
				if(isMoreThan4Length(inputEmail.value) && emailChar(inputEmail.value)) {
					$('.email_ok').css("display", "inline-block");
					$('.email_message').css("display", "none");
					$('.email_overlap').css("display","none");					
				} else {
					$('.email_ok').css("display", "none");
					$('.email_message').css("display", "inline-block");
					$('.email_overlap').css("display","none");					
				}
			} else {
				$('.email_ok').css("display","none");
				$('.email_message').css("display","none"); 				
				$('.email_overlap').css("display","inline-block");
			}
		},
		error : function() {
			alert("에러입니다");
		}
	}); // ajax 끝
}
// 닉네임 유효성 검사
function nicknameFn() {
    var nick_name = $("#nick_name").val();
	
	$.ajax({
		url: '/nicknameCheck',
		type: 'post',
		data:{nick_name:nick_name},
		success: function(name) {
			if(name != 1) {
				if(isMoreThan2Length(inputNickname.value) && nickNameChar(inputNickname.value)) { // 닉네임 형식
					$('.nickname_ok').css("display", "inline-block");
					$('.nickname_overlap').css("display","none");										
					$('.nickname_message').css("display","none");							
				} else {
					$('.nickname_ok').css("display", "none");
					$('.nickname_overlap').css("display","none");											
					$('.nickname_message').css("display","inline-block");
				} 
			} else {
				$('.nickname_ok').css("display","none");
				$('.nickname_message').css("display","none"); 				
				$('.nickname_overlap').css("display","inline-block");				
			}
		},
		error : function() {
			alert("에러입니다");
		}		
	}); // ajax 끝
}

// 비밀번호 체크
function passwordFn() {

	if(isMoreThan10Length(inputPassword.value)) {
		passwordLength.classList.add('hide');
	} else {
		passwordLength.classList.remove('hide');
	}
	
	if((isPasswordEng(inputPassword.value) + isPasswordNum(inputPassword.value) +
		isPasswordSpeci(inputPassword.value) >= 2) && (isPasswordBlank(inputPassword.value)) &&
		(isPasswordChar(inputPassword.value))) {
		passwordComb.classList.add('hide');
	} else {
		passwordComb.classList.remove('hide');
	}
	
	if(isPasswordRepeat(inputPassword.value)) {
		passwordContn.classList.remove('hide');
	} else {
		passwordContn.classList.add('hide');
	}
	
	if((isMoreThan10Length(inputPassword.value)) && (isPasswordEng(inputPassword.value) + 
		isPasswordNum(inputPassword.value) + isPasswordSpeci(inputPassword.value) >= 2) &&
		(isPasswordChar(inputPassword.value)) && (isPasswordBlank(inputPassword.value)) &&
		(!isPasswordRepeat(inputPassword.value))) {
		passwordOk.classList.remove('hide');
	} else {
		passwordOk.classList.add('hide');
	}
}
inputPassword.addEventListener('click', passwordFn)
inputPassword.addEventListener('keyup', passwordFn)

// 비밀번호 재확인
function passwordRetypeFn() {
	if(isMatch(inputPassword.value, inputPassword2.value) && isPasswordBlank(inputPassword2.value)) {
		passwordFalse.classList.add('hide');
		passwordSuccess.classList.remove('hide');
	} else {
		passwordFalse.classList.remove('hide');
		passwordSuccess.classList.add('hide');		
	}
}
inputPassword2.onkeyup = passwordRetypeFn;

//------------------------ 최종 체크 ------------------------//
function isAllCheck() {
	if(isMoreThan4Length(inputId.value) && idChar(inputId.value) && 
	   isMoreThan4Length(inputEmail.value) && emailChar(inputEmail.value) &&
	   isMoreThan2Length(inputNickname.value) && nickNameChar(inputNickname.value)) {
		if((isMoreThan10Length(inputPassword.value)) && (isPasswordEng(inputPassword.value) + isPasswordNum(inputPassword.value)
			+ isPasswordSpeci(inputPassword.value) >=2) && (isPasswordChar(inputPassword.value)) && (isPasswordBlank(inputPassword.value))
			&& (!isPasswordRepeat(inputPassword.value))) {
				if(isMatch(inputPassword.value, inputPassword2.value)) {
					return true;
				}
		}
	} else {
		return false;
	}		
}

/*//[회원가입 버튼] 배경 활성화 함수
function isSubmitButton() {
	if(isAllCheck()) {
		elSubmitButton.classList.add('allCheck');
	} else {
		elSubmitButton.classList.remove('allCheck');
	}
}*/
//빈 함수 체크
function checkEmpty(sel) {
	if($.trim($(sel).val()) == "") {
		return true;
	} else {
		return false;
	}
}
function isMoreThan4Length(value) {
  // 아이디 입력창에 사용자가 입력을 할 때 
  // 글자 수가 4개이상인지 판단한다.
  // 글자가 4개 이상이면 success메세지가 보여야 한다.
  return value.length >= 4;
}

function isMoreThan2Length(value) {
	  // 아이디 입력창에 사용자가 입력을 할 때 
	  // 글자 수가 4개이상인지 판단한다.
	  // 글자가 4개 이상이면 success메세지가 보여야 한다.
	  return value.length >= 2;
}
//[비밀번호] 길이가 10자 이상이면 true를 리턴하는 함수
function isMoreThan10Length(password) {
	
	return password.length >= 10;
}
//[아이디] '영문, 숫자'만 있으면 true를 리턴하는 함수
function idChar(id) {
  var id_rule = /^[A-Za-z0-9]+$/;
  
  if(id.match(id_rule)) {
    return true;
  } else {   
    return false;
  }
}
// 이메일 유효성 검사(이메일 형식이 맞으면 true)
function emailChar(email) {
	var email_rule = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

	if(email.match(email_rule)) {
		return true;
	} else {   
		return false;
	}
}
// 닉네임 유효성 검사(한글,영문,숫자 true)
function nickNameChar(nick_name) {
	var nickname_rule = /^[a-zA-Zㄱ-힣0-9-_.]{2,12}$/;
	
	if(nick_name.match(nickname_rule)) {
		return true;
	} else {   
		return false;
	}
}
//[비밀번호] 영문이 있으면 true를 리턴하는 함수
function isPasswordEng(password) {
	var letters = /[A-Za-z]/; // 잘 모르겠지만 이것은 정규표현식으로 AZ - az 모든 알파벳을 담고 있다.

	if( letters.test(password) ) {  // 정규표현식에 영어문자가 모두 들었고. 정규표현식의 메소드인 test()로 비밀번호 문자에 영어가 있는지 판단한다.
		return true;
	} else {
		return false;
	}
}

//[비밀번호] 숫자가 있으면 true를 리턴하는 함수
function isPasswordNum(password) {
	var letters = /[0-9]/;

	if( letters.test(password) ) {
		return true;
	} else {
		return false;
	}
}

//[비밀번호] 특수문자가 있으면 true를 리턴하는 함수
function isPasswordSpeci(password) {
	var letters = /[~!@#$%^&*()\-_=+\\\|\[\]{};:\'",.<>\/?]/;

	if( letters.test(password) ) {
		return true;
	} else {
		return false;
	}
}

//[비밀번호][비밀번호 확인] 스페이스가 없을 경우 true를 리턴하는 함수
function isPasswordBlank(password) {
	if( password.search(/\s/) === -1 ) {
		return true;
	} else {
		return false;
	}
}

//[비밀번호] '영문, 숫자, 특수문자'만 있으면 true를 리턴하는 함수
function isPasswordChar(password) {
	var letters = /^[A-Za-z0-9~!@#$%^&*()\-_=+\\\|\[\]{};:\'",.<>\/?]+$/;

	if( password.match(letters) ) {
		//console.log('가능한 것만 있네!');
		return true;
	} else {
		//console.log('안되는 것도 있네?');
		return false;
	}
}

//[비밀번호] 동일한 숫자 3개 이상 연속 사용하면 true를 리턴하는 함수
function isPasswordRepeat(password) {
	// password의 길이만큼 반복되는 반복문이 있어야 한다.
	// 문자 하나와 나 자신+1과 나자신 +2와 비교한다.
	// 숫자인지 아닌지 판단한다.숫자이면 true 아니면 false
	for( let i=0; i<password.length-2; i++ ) {
		if( password[i]===password[i+1] && password[i]===password[i+2] ) {
			if( !isNaN(Number(password[i])) ) {
				return true;
			}
		}
	}
return false;
}

//[비밀번호 확인] 매치가 동일하면 true를 리턴하는 함수
function isMatch(password1, password2) {
if(password1 && password2) {
 if(password1 === password2) {
   return true;
 }
} else {
 return false;
}
}

