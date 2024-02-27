// 이메일 유효성 검사 정규식
const nameCheck = /^[가-힣a-zA-Z]{1,10}$/;
const emailRegex = /^[a-z0-9]+@[a-z]+\.[a-z]{2,3}$/;

document.getElementById('findIdEmail_form').addEventListener('submit', function(e) {
	e.preventDefault(); // 기본 동작 중단

	// 필드 값 가져오기
	const nameField = document.getElementById('name');
	const emailField = document.getElementById('email');

	// 이름 유효성 검사
	if (!nameCheck.test(nameField.value)) {
		alert('이름을 제대로 입력해주세요.');
		return;
	}

	// 이메일 유효성 검사
	if (!emailRegex.test(emailField.value)) {
		alert('유효한 이메일 주소를 입력해주세요.');
		return;
	}

	// 유효성 검사 통과 시 폼 제출
	this.submit();
});

// Enter 키 이벤트 리스너 등록
document.addEventListener('keydown', function(e) {
	if (e.key === 'Enter') {
		// 필드 값 가져오기
		const nameField = document.getElementById('name');
		const emailField = document.getElementById('email');

		// 값이 비어 있는지 확인하고 알림 창 띄우기
		if (nameField.value.trim() === '') {
			alert('이름은 필수 입력 값입니다.');
			return;
		}

		if (emailField.value.trim() === '') {
			alert('이메일은 필수 입력 값입니다.');
			return;
		}

	}
});