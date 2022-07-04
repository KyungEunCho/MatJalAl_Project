/**
 * 
 */
// 빈 함수 체크
 function checkEmpty(sel) {
	if($.trim($(sel).val()) == "") {
		return true;
	} else {
		return false;
	}
}
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
	} else if(checkEmpty("#nickname")) {
		Swal.fire({
			  title: '닉네임을 입력해주세요.',
			  showConfirmButton: true,
			  confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
		});
		$("#nickname").focus();
	} else if(checkEmpty("#password")) {
		Swal.fire({
			  title: '이메일을 입력해주세요.',
			  showConfirmButton: true,
			  confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
		});
		$("#password").focus();
	} else {
		$("#signUpForm").submit();			
	}
}
//아이디 중복체크
function checkId(){
    var id = $('#id').val();
	var id_rule = /^[a-zA-z0-9]{4,12}$/;
	
    $.ajax({
        url:'/idCheck', //Controller에서 인식할 주소
        type:'post', //POST 방식으로 전달
        data:{id:id},
        success:function(cnt){
            if(cnt != 1){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
            	if(!id) {
        			Swal.fire({
        				  title: '아이디를 입력해주세요.',
        				  showConfirmButton: true,
        				  confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
        			});
        			$("#id").focus();          		
            	} else if(!id_rule.test(id)) {
					Swal.fire({
						  title: '아이디 형식에 맞게 입력해주세요.',
						  showConfirmButton: true,
						  confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
					});
					$("#id").focus();            		
            	} else {
	                $('.id_ok').css("display","inline-block"); 
	                $('.id_already').css("display", "none");  
            	}
            } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                $('.id_already').css("display","inline-block");
                $('.id_ok').css("display", "none");
            }
        },
        error:function(){
            alert("에러입니다");
        }
    });
}
// 이메일 중복체크
function checkEmail() {
	var email = $("#email").val();
	var email_rule = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	$.ajax({
		url: '/emailCheck',
		type: 'post',
		data: {email:email},
		success: function(mail){
			if(mail != 1) {
				if(!email) {
					Swal.fire({
						  title: '이메일을 입력해주세요.',
						  showConfirmButton: true,
						  confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
					});
					$("#email").focus();
					console.log(email);
				} else if(!email_rule.test(email)) {
					Swal.fire({
						  title: '이메일 형식에 맞게 입력해주세요.',
						  showConfirmButton: true,
						  confirmButtonColor: '#ff6600b8' /* 버튼색깔 */
					});
					$("#email").focus();
				} else {
					 $('.email_ok').css("display","inline-block");
					 $('.email_already').css("display", "none");
				}
			} else {
				$('.email_already').css("display","inline-block");
			    $('.email_ok').css("display", "none");
			}	
		},
		error: function() {
		 alert("에러입니다");
		}
	});	
}		
	



