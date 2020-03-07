var repeatUsernameCheck = false;

function usernameCheck() {
	var username = $("#username").val();
	if (username == "" || username == null) {
		alert('username이 입력되지 않았습니다');
		return;
	}

	var user = {
		username : username
	}
	// JSON.parse(제이슨데이터); -> 수신
	// JSON.stringify(자바스크립트오브젝트); -> 송신
	$.ajax({
		type : "POST",
		url : "/user?cmd=usernameCheck",
		dataType : "text",
		contentType : "application/json",
		data : JSON.stringify(user),
		success : function(data) {
			console.log(data);
			if (data === "ok") {
				alert("사용할 수 있는 아이디입니다.");
				repeatUsernameCheck = true;
				$('#username').attr('readonly', 'readonly');
			} else {
				alert("사용할 수 없는 아이디입니다.");
			}
		},
		error : function(data) {
			alert("통신 실패");
		}
	});
	// alert(username);
}

function validationCheck() {
	if(!repeatUsernameCheck){
		alert('아이디 중복확인을 해주세요.');
	}
	return repeatUsernameCheck;
}

function goPopup() {
	var pop = window.open("/pension/user/jusoPopup.jsp", "pop",
			"width=570,height=420, scrollbars=yes, resizable=yes");
}

// 오프너(자기를 호출한 부모)가 종료되면 실행된다.
function jusoCallBack(roadFullAddr) {
	$('#address').val(roadFullAddr);
}
