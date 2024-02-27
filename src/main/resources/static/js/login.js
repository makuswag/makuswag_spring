// 아이디 유효성 검사 정규식
const idRegex = /^[a-z0-9]{4,16}$/;

// 비밀번호 유효성 검사 정규식
const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{4,16}$/;

document.getElementById('member_form').addEventListener('submit', function(e) {
	e.preventDefault(); // 기본 동작 중단

	// 아이디와 비밀번호 입력값 가져오기
	const idField = document.getElementById('userId');
	const pwField = document.getElementById('userPasswd');
	const errorMessage = document.getElementById('error-message');

	// 아이디와 비밀번호의 유효성 검사
	if (!idRegex.test(idField.value)) {
		alert('아이디는 영문 소문자, 숫자로 4자 이상, 16자 이하여야만 합니다.');
		return;
	}

	if (!passwordRegex.test(pwField.value)) {
		alert('비밀번호는 영문 대소문자, 숫자, 특수문자 중 최소 하나 이상을 포함하여 4자 이상, 16자 이하여야 합니다.');
		return;
	}

	// 유효성 검사 통과 시 폼 제출
	this.submit();
});

// Enter 키 이벤트 리스너 등록
document.addEventListener('keydown', function(e) {
	if (e.key === 'Enter') {
		// 아이디와 비밀번호 필드 값 가져오기
		const idField = document.getElementById('userId');
		const pwField = document.getElementById('userPasswd');

		// 값이 비어 있는지 확인하고 알림 창 띄우기
		if (idField.value.trim() === '') {
			alert('아이디는 필수 입력 값입니다.');
			return;
		}

		if (pwField.value.trim() === '') {
			alert('비밀번호는 필수 입력 값입니다.');
			return;
		}

	}
});