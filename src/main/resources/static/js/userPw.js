// 유효성 검사 통과 시 모달 창 열기
openModal();

// Function to handle "Yes" click
function handleYes() {
	// Open modal here or perform other actions
	document.getElementById('passwordChangeForm').style.display = 'block';
}

function handleNo() {

	alert('로그인 화면으로 이동합니다.');
	window.location.href = '<%= "login" %>';
}
// 모달 열기 함수
function openModal() {
	// 모달 창 표시
	document.getElementById('myModal').style.display = 'block';
}

//모달 닫기 함수
function closeModal() {
	// 모달 창 숨기기
	document.getElementById('myModal').style.display = 'none';
	handleNo();
}

// 실시간으로 비밀번호 일치 여부 확인
document.getElementById('confirmNewPassword').addEventListener('input', function(e) {
	const newPassword = document.getElementById('newPassword').value;
	const confirmNewPassword = this.value;

	if (newPassword === confirmNewPassword) {
		document.getElementById('passwordMatchMessage').innerHTML = '비밀번호가 일치합니다.';
		document.getElementById('passwordMatchMessage').style.color = 'green';
	} else {
		document.getElementById('passwordMatchMessage').innerHTML = '비밀번호가 일치하지 않습니다.';
		document.getElementById('passwordMatchMessage').style.color = 'red';
	}

});

// 변경 버튼 클릭 이벤트 처리
document.getElementById('changePasswd_form').addEventListener('submit', function(e) {
	e.preventDefault(); // 기본 동작 중단

	// 비밀번호 유효성 검사 정규식
	const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{4,16}$/;

	// 입력된 비밀번호 가져오기
	const currentPassword = document.getElementById('currentPassword').value;
	const newPassword = document.getElementById('newPassword').value;
	const confirmNewPassword = document.getElementById('confirmNewPassword').value;

	// DB에서 불러온 비밀번호 
	const userPw = document.getElementById('userPw').value;
	
	 // 새로운 비밀번호 가져오기
    const newUserPw = document.getElementById('newPassword').value;
    document.getElementById('newUserPw').value = newUserPw;

	if (!passwordRegex.test(currentPassword)) {
		alert('비밀번호는 영문 대소문자, 숫자, 특수문자 중 최소 하나 이상을 포함하여 4자 이상, 16자 이하여야 합니다.');
		return;
	}

	if (!passwordRegex.test(newPassword)) {
		alert('비밀번호는 영문 대소문자, 숫자, 특수문자 중 최소 하나 이상을 포함하여 4자 이상, 16자 이하여야 합니다.');
		return;
	}

	if (!passwordRegex.test(confirmNewPassword)) {
		alert('비밀번호는 영문 대소문자, 숫자, 특수문자 중 최소 하나 이상을 포함하여 4자 이상, 16자 이하여야 합니다.');
		return;
	}

	if (userPw !== currentPassword) {
		alert('현재 비밀번호가 일치하지 않습니다.');
		return;
	}

	// 새로운 비밀번호 일치 여부 확인
	if (newPassword !== confirmNewPassword) {
		document.getElementById('passwordMatchMessage').innerText = '새로운 비밀번호가 일치하지 않습니다.';
		return;
	}

	this.submit();

});

// Enter 키 이벤트 리스너 등록
document.addEventListener('keydown', function(e) {
	if (e.key === 'Enter') {
		// 입력된 비밀번호 가져오기
		const currentPassword = document.getElementById('currentPassword').value;
		const newPassword = document.getElementById('newPassword').value;
		const confirmNewPassword = document.getElementById('confirmNewPassword').value;

		// 값이 비어 있는지 확인하고 알림 창 띄우기
		if (currentPassword.value.trim() === '') {
			alert('비밀번호를 입력하여주세요.');
			return;
		}

		if (newPassword.value.trim() === '') {
			alert('비밀번호를 입력하여주세요.');
			return;
		}

		if (confirmNewPassword.value.trim() === '') {
			alert('비밀번호를 입력하여주세요.');
			return;
		}

	}
});