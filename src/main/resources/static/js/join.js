// 아이디 유효성 검사 정규식
const idRegex = /^[a-z0-9]{4,16}$/;

// 비밀번호 유효성 검사 정규식
const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{4,16}$/;

// 이름 유효성 검사 정규식
const nameCheck = /^[가-힣a-z]{2,10}$/;

// 핸드폰 유효성 검사 정규식
const regex2 = /\d{3,4}/; // 정규식 패턴으로 수정
const regex3 = /\d{4}/; // 정규식 패턴으로 수정

// 이메일 유효성 검사 정규식
const emailRegex = /^[a-z0-9]+@[a-z]+\.[a-z]{2,3}$/;

document.getElementById('sign_form').addEventListener('submit',function(e) {
	e.preventDefault(); // 기본 동작 중단

	// 아이디와 비밀번호 입력값 가져오기
	const idField = document.getElementById('userId');
	const pwField = document.getElementById('userPasswd');
	const checkUserPasswd = document.getElementById('checkUserPasswd');
	const nameField = document.getElementById('name');
	const postcodeField = document.getElementById('postcode');
	const addrField1 = document.getElementById('addr1');
	const addrField2 = document.getElementById('addr2');
	const emailField = document.getElementById('email');
	const mobileField1 = document.getElementById('mobile1').value;
	const mobileField2 = document.getElementById('mobile2').value;
	const mobileField3 = document.getElementById('mobile3').value;
	const birthdayField1 = document.getElementById('birthYear').value;
	const birthdayField2 = document.getElementById('birthMonth').value;
	const birthdayField3 = document.getElementById('birthDay').value;

	// 아이디와 비밀번호의 유효성 검사
	if (!idRegex.test(idField.value)) {
		alert('아이디는 영문 소문자, 숫자로 4자 이상, 16자 이하여야만 합니다.');
		return;
	}

	if (!passwordRegex.test(pwField.value)) {
		alert('비밀번호는 영문 대소문자, 숫자, 특수문자 중 최소 하나 이상을 포함하여 4자 이상, 16자 이하여야 합니다.');
		return;
	}

	if (!passwordRegex.test(checkUserPasswd.value)) {
		alert('비밀번호는 영문 대소문자, 숫자, 특수문자 중 최소 하나 이상을 포함하여 4자 이상, 16자 이하여야 합니다.');
		return;
	}

	if (!nameCheck
			.test(nameField.value)) {
		alert('이름을 제대로 입력해주세요.');
		return;
	}

	// 핸드폰2 유효성 검사
	if (!regex2.test(mobileField2)) {
		alert('유효한 핸드폰 번호를 입력해주세요.');
		return;
	}

	// 핸드폰3 유효성 검사
	if (!regex3.test(mobileField3)) {
		alert('유효한 핸드폰 번호를 입력해주세요.');
		return;
	}

	// 이메일 유효성 검사
	if (!emailRegex.test(emailField.value)) {
		alert('유효한 이메일 주소를 입력해주세요.');
		return;
	}
	
	// 중복확인 버튼 클릭 여부 확인
    const idDuplicatedCheckBtn = document.getElementById('idDuplicatedCheck');
    const emailDuplicatedCheckBtn = document.getElementById('emailDuplicatedCheck');
    
    if (!idDuplicatedCheckBtn.disabled) {
        alert('아이디 중복확인을 해주세요.');
        return;
    }

    if (!emailDuplicatedCheckBtn.disabled) {
        alert('이메일 중복확인을 해주세요.');
        return;
    }
    
	// 유효성 검사 통과 시 폼 제출
	this.submit();
});

// Enter 키 이벤트 리스너 등록
document.addEventListener('keydown', function(e) {
	if (e.key === 'Enter') {
		// 아이디와 비밀번호 필드 값 가져오기
		const idField = document.getElementById('userId').value;
		const pwField = document.getElementById('userPasswd').value;
		const checkUserPasswd = document.getElementById('checkUserPasswd').value;
		const nameField = document.getElementById('name').value;
		const emailField = document.getElementById('email').value;
		const mobileField2 = document.getElementById('mobile2').value;
		const mobileField3 = document.getElementById('mobile3').value;

		// 값이 비어 있는지 확인하고 알림 창 띄우기
		if (idField.value.trim() === '') {
			alert('아이디는 필수 입력 값입니다.');
			return;
		}

		if (pwField.value.trim() === '') {
			alert('비밀번호는 필수 입력 값입니다.');
			return;
		}

		if (pwField.value.trim() === '') {
			alert('비밀번호 확인란도 필수 입력 값입니다.');
			return;
		}

		if (nameField.value.trim() === '') {
			alert('이름은 필수 입력 값입니다.');
			return;
		}

		if (mobileField2.value.trim() === '') {
			alert('핸드폰 번호는 필수 입력 값입니다.');
			return;
		}

		if (mobileField3.value.trim() === '') {
			alert('핸드폰 번호는 필수 입력 값입니다.');
			return;
		}

		if (emailField.value.trim() === '') {
			alert('이메일은 필수 입력 값입니다.');
			return;
		}

	}
});

$(document).ready(function() {
	$('#idDuplicatedCheck').click(function(e) {
		e.preventDefault(); // 기본 동작 중단

		const userId = $('#userId').val(); // 입력된 아이디 값 가져오기
		const idField = document.getElementById('userId');
		
		console.log(userId,idField);
		
		if (idField.value.trim() === '') {
			alert('아이디는 필수 입력 값입니다.');
			return;
		}

		// 아이디와 비밀번호의 유효성 검사
		if (!idRegex.test(idField.value)) {
			alert('아이디는 영문 소문자, 숫자로 4자 이상, 16자 이하여야만 합니다.');
			return;
		}

		// AJAX를 통한 중복 확인 요청
		$.ajax({
			method : "POST",
			url : "duplicatedCheck",
			data : {
				userId : userId
			},
			success : function(
					response) {
				if (response.result === "false") {
					// 중복된 아이디일 경우
					alert('이미 사용 중인 아이디입니다.');
				} else {
					// 사용 가능한 아이디일 경우
					alert('사용 가능한 아이디입니다.');
					// 아이디 입력란을 읽기 전용으로 설정
					$("#idDuplicatedCheck").prop("disabled",true); // idDuplicatedCheck 버튼을 비활성화
					$('#userId').prop('readonly',true);
				}
			},
			error : function(
					xhr,
					status,
					error) {
				// 오류 발생 시 처리
				console
						.error(error);
				alert('중복 확인 중 오류가 발생했습니다.');
			}
		});
	});
	$("#emailDuplicatedCheck").click(function() {
		
		const email = $("#email").val(); // 입력된 이메일 값 가져오기
		const emailField = document.getElementById('email');
		
		if (emailField.value.trim() === '') {
			alert('이메일은 필수 입력 값입니다.');
			return;
		}

		// 이메일 유효성 검사
		if (!emailRegex.test(emailField.value)) {
			alert('이메일이 유효하지 않습니다.');
			return;
		}

		// AJAX를 통한 중복 확인 요청
		$.ajax({
			method : "POST",
			url : "duplicatedCheck",
			data : {
				email : email
			},
			success : function(
					response) {
				if (response.result === "false") {
					// 중복된 이메일인 경우
					alert('이미 사용 중인 이메일입니다.');
				} else {
					// 사용 가능한 이에일인 경우
					alert('사용 가능한 이메일입니다.');
					// 이메일 입력란을 읽기 전용으로 설정
					$("#emailDuplicatedCheck").prop("disabled",true); // idDuplicatedCheck 버튼을 비활성화
					$('#email').prop('readonly',true);
				}
			},
			error : function(
					xhr,
					status,
					error) {
				// 오류 발생 시 처리
				console
						.error(error);
				alert('중복 확인 중 오류가 발생했습니다.');
			}
		});
	});
});

// 초기 로드 시 일 수 옵션 업데이트
updateDayOptions();

// 생년월일 필드 값 변경 이벤트 추가
document.getElementById('birthYear').addEventListener(
		'change', updateDayOptions);
document.getElementById('birthMonth').addEventListener(
		'change', updateDayOptions);

// 일 수 옵션 업데이트 함수
function updateDayOptions() {
	const year = parseInt(document
			.getElementById('birthYear').value);
	const month = parseInt(document
			.getElementById('birthMonth').value);
	const daySelect = document
			.getElementById('birthDay');

	// 월별 최대 일 수 계산
	const maxDays = calculateMaxDays(year, month);

	// 일 수 옵션 업데이트
	daySelect.innerHTML = ''; // 기존 옵션 제거

	// 선택 옵션 추가
	const defaultOption = document
			.createElement('option');
	defaultOption.value = '';
	defaultOption.textContent = '선택';
	defaultOption.disabled = true;
	defaultOption.selected = true;
	daySelect.appendChild(defaultOption);

	// 나머지 일 수 옵션 추가
	for (let day = 1; day <= maxDays; day++) {
		const option = document.createElement('option');
		option.value = day < 10 ? '0' + day : day
				.toString(); // 일 수를 두 자리 숫자로 포맷팅
		option.textContent = option.value; // 옵션 텍스트 설정
		daySelect.appendChild(option);
	}
}

// 월별 최대 일 수 계산 함수
function calculateMaxDays(year, month) {
	const thirtyOneDayMonths = [ 1, 3, 5, 7, 8, 10, 12 ];
	const thirtyDayMonths = [ 4, 6, 9, 11 ];

	if (thirtyOneDayMonths.includes(month)) {
		return 31;
	} else if (thirtyDayMonths.includes(month)) {
		return 30;
	} else if (month === 2) {
		// 윤년 체크
		return ((year % 4 === 0 && year % 100 !== 0) || year % 400 === 0) ? 29
				: 28;
	}

	return 0; // 잘못된 월이 입력된 경우
}

function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            const roadAddr = data.roadAddress; // 도로명 주소 변수
            const jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postcode').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("addr1").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("addr2").value = jibunAddr;
            }
        }
    }).open();
}

document.getElementById('userPasswd').addEventListener('input', validatePassword);
document.getElementById('checkUserPasswd').addEventListener('input', validatePassword);

function validatePassword() {
    const password = document.getElementById('userPasswd').value;
    const confirmPassword = document.getElementById('checkUserPasswd').value;

    if (password === confirmPassword) {
        document.getElementById('pwConfirmMsg').textContent = '비밀번호가 일치합니다.';
        document.getElementById('pwConfirmMsg').style.color = 'green';
    } else {
        document.getElementById('pwConfirmMsg').textContent = '비밀번호가 일치하지 않습니다.';
        document.getElementById('pwConfirmMsg').style.color = 'red';
    }
}