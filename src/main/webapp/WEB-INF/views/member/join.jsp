<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="./css/join.css">
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="icon" href="./images/CompanyLogo.png">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
</head>
<body class="nav-expended">
	<!-- ============================== [[ Header  section]] ==============================-->

	<%@ include file="../include/header.jsp"%>

	<!-- ============================== [[ Header  section]] ==============================-->

	<!-- ============================== [[ Sidebar  section]] ==============================-->
	<div class="site-main">
		<div class="container">

			<%@ include file="../include/sidemenu.jsp"%>

			<!-- ============================== [[ Sidebar  section]] ==============================-->

			<!-- ============================== [[ Body  section]] ==============================-->

			<div class="main">

				<!-- 여기서 부터 작성 -->

				<form id="joinForm" name="joinForm"
					action="/exec/front/Member/join/" method="post">
					<!-- 분류 -->
					<div class="xans-element- xans-member xans-member-join entry-page">
						<div class="signup-form">
							<div class="form-header">
								<h3>Sign Up</h3>
							</div>

							<div class="form-group ">
								<table border="1" summary="" class="account-info">
									<caption>회원 기본정보</caption>
									<tbody>
										<tr>
											<th scope="row">아이디</th>
											<td><input id="userId" name="userId"
												fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity"
												fw-label="아이디" fw-msg="" class="inputTypeText"
												placeholder="" value="" type="text" required>
												<button class="field-button" type="button"
													id="checkUserIdDuplicate">
													<span class="css-nytqmg e4nu7ef1">중복확인</span>
												</button>
												<br>
												<div class="form-description">
													<span id="idMsg"></span>
												</div></td>
										</tr>
										<tr>
											<th scope="row">비밀번호</th>
											<td><input id="userPasswd" name="userPasswd"
												fw-filter="isFill&amp;isMin[4]&amp;isMax[16]"
												fw-label="비밀번호" fw-msg="" autocomplete="off" maxlength="16"
												0="disabled" value="" type="password" required>
												<div class="form-description"></div></td>
										</tr>
										<tr>
											<th scope="row">비밀번호 확인</th>
											<td><input id="checkUserPasswd"
												name="checkUserPasswd"
												fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="비밀번호 확인"
												fw-msg="비밀번호가 일치하지 않습니다." autocomplete="off" maxlength="16"
												0="disabled" value="" type="password" required>
												<div class="form-description">
													<span id="pwConfirmMsg"></span>
												</div></td>
										</tr>
										<tr>
											<th scope="row" id="name">이름</th>
											<td><span id="nameContents"><input type="text"
													name="name" id="name" maxlength="10" required></span></td>
										</tr>
										<tr class="">
											<th scope="row">주소 <img
												src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
												alt="필수"></th>
											<td>
												<div class="address-fieldset">
													<input id="postcode1" name="postcode1"
														fw-filter="isLengthRange[1][14]" fw-label="우편번호1"
														fw-msg="" class="inputTypeText" placeholder=""
														readonly="readonly" maxlength="14" value="" type="text" required>
													<button class="field-button" type="button"
													id="address">
													<span class="css-nytqmg e4nu7ef1">우편번호</span>
													</button><br> 
														<input id="addr1"
														name="addr1" fw-filter="" fw-label="주소" fw-msg=""
														class="inputTypeText" placeholder="기본 주소"
														readonly="readonly" value="" type="text" required><br>
													<input id="addr2" name="addr2" fw-filter="" fw-label="주소"
														fw-msg="" class="inputTypeText" placeholder="나머지 주소"
														value="" type="text" required>
												</div>
											</td>
										</tr>
										<tr class="">
											<th scope="row">휴대전화</th>
											<td>
												<div class="phone-fieldset">
													<span class="select-field">
														<select id="mobile1" name="mobile1" fw-filter="isNumber&amp;isFill"
															fw-label="휴대전화" fw-alone="N" fw-msg="">
																<option value="010">010</option>
																<option value="011">011</option>
																<option value="016">016</option>
																<option value="017">017</option>
																<option value="018">018</option>
																<option value="019">019</option>
														</select></span>
														-
														<input id="mobile2" name="mobile2" maxlength="4"
														fw-filter="isNumber&amp;isFill" fw-label="휴대전화"
														fw-alone="N" fw-msg="" placeholder="" value="" type="text" required>
														-
														<input
														id="mobile3" name="mobile3" maxlength="4"
														fw-filter="isNumber&amp;isFill" fw-label="휴대전화"
														fw-alone="N" fw-msg="" placeholder="" value="" type="text" required>
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row">이메일</th>
											<td><input id="email" name="email"
												fw-filter="isFill&amp;isEmail" fw-label="이메일" fw-alone="N"
												fw-msg="" placeholder="" value="" type="text" required> <a
												href="#none" class="field-button" onclick="" id="postBtn">중복확인</a><br>
												<span id="emailMsg"></span></td>
										</tr>
									</tbody>
								</table>
								
								<table border="1" summary="" class="account-add-info">
									<caption>회원 추가정보</caption>
									<tbody>
										<tr class="">
											<th scope="row">성별</th>
											<td><input id="M" name="gender" fw-filter="isFill"
												fw-label="성별" fw-msg="" value="M" type="radio"
												autocomplete="off" checked="checked"> <label for="M">남자</label>
												<input id="F" name="gender" fw-filter="isFill" fw-label="성별"
												fw-msg="" value="F" type="radio" autocomplete="off">
												<label for="F">여자</label></td>
										</tr>
										<tr class="">
											<th scope="row">생년월일</th>
											<td>
												<span class="select-field">
												<select id="birthYear" name="birthYear" fw-filter="isFill"
											            fw-label="생년월일" fw-msg="" class="inputTypeText" required>
											        <option value="" disabled selected>선택</option>
											        <option value="" disabled>-----</option>
											        <c:forEach var="year" begin="1920" end="2024">
											            <option value="${year}">${year}</option>
											        </c:forEach>
											    </select>
												</span>
												년 
												<span class="select-field">
												<select id="birthMonth" name="birthMonth" fw-filter="isNumber&amp;isFill"
										            fw-label="생년월일" fw-alone="N" fw-msg="" class="inputTypeText" required>
											        <option value="" disabled selected>선택</option>
											        <option value="" disabled>-----</option>
											        <c:forEach var="month" begin="01" end="12">
											            <option value="${month < 10 ? '0' + month : month}">${month}</option>
											        </c:forEach>
											    </select>
												</span>
												월 
												<span class="select-field">
												<select id="birthDay" name="birthDay" fw-filter="isFill" fw-label="생년월일" 
													fw-msg="" class="inputTypeText" required>
											        <option value="" disabled selected>선택</option>
											        <option value="" disabled>-----</option>
											        <c:forEach var="day" begin="1" end="31">
											            <option value="${day < 10 ? '0' + day : day}">${day}</option>
											        </c:forEach>
											    </select>
												</span>
												일
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</form>
				<script>
					$('#addr1').attr('placeholder', '기본 주소');
					$('#addr2').attr('placeholder', '나머지 주소');
				</script>
				<script>
				 // 생년월일 필드 값 변경 이벤트 리스너 추가
			    document.getElementById('birthYear').addEventListener('change', updateDayOptions);
			    document.getElementById('birthMonth').addEventListener('change', updateDayOptions);

			    // 일 수 옵션 업데이트 함수
			    function updateDayOptions() {
			        const year = parseInt(document.getElementById('birthYear').value);
			        const month = parseInt(document.getElementById('birthMonth').value);
			        const daySelect = document.getElementById('birthDay');

			        // 월별 최대 일 수 계산
			        const maxDays = calculateMaxDays(year, month);

			        // 일 수 옵션 업데이트
			        daySelect.innerHTML = ''; // 기존 옵션 제거

			        // 선택 옵션 추가
			        const defaultOption = document.createElement('option');
			        defaultOption.value = '';
			        defaultOption.textContent = '선택';
			        defaultOption.disabled = true;
			        defaultOption.selected = true;
			        daySelect.appendChild(defaultOption);

			        // 나머지 일 수 옵션 추가
			        for (let day = 1; day <= maxDays; day++) {
			            const option = document.createElement('option');
			            option.value = day < 10 ? '0' + day : day.toString(); // 일 수를 두 자리 숫자로 포맷팅
			            option.textContent = option.value; // 옵션 텍스트 설정
			            daySelect.appendChild(option);
			        }
			    }

			    // 월별 최대 일 수 계산 함수
			    function calculateMaxDays(year, month) {
			        const thirtyOneDayMonths = [1, 3, 5, 7, 8, 10, 12];
			        const thirtyDayMonths = [4, 6, 9, 11];

			        if (thirtyOneDayMonths.includes(month)) {
			            return 31;
			        } else if (thirtyDayMonths.includes(month)) {
			            return 30;
			        } else if (month === 2) {
			            // 윤년 체크
			            return ((year % 4 === 0 && year % 100 !== 0) || year % 400 === 0) ? 29 : 28;
			        }

			        return 0; // 잘못된 월이 입력된 경우
			    }

			    // 초기 로드 시 일 수 옵션 업데이트
			    updateDayOptions();
				
				// 아이디 유효성 검사 정규식
				const idRegex = /^[a-z0-9]{4,16}$/;

				// 비밀번호 유효성 검사 정규식
				const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{4,16}$/;
				
				// 이름 유효성 검사 정규식
				const nameCheck = /^[가-힣a-zA-Z]{1,10}$/;
				
			    // 핸드폰 유효성 검사 정규식
			    const regex1 = "\\d{3}"; // 처음 세 자리 숫자를 나타내는 정규식
			    const regex2 = "\\d{3,4}"; // 중간 세~네 자리 숫자를 나타내는 정규식
			    const regex3 = "\\d{4}"; // 마지막 네 자리 숫자를 나타내는 정규식
			    
				// 이메일 유효성 검사 정규식
			    const emailRegex = /^[a-z0-9]+@[a-z]+\.[a-z]{2,3}$/;

				document.getElementById('member_form').addEventListener('submit', function(e) {
					e.preventDefault(); // 기본 동작 중단

					// 아이디와 비밀번호 입력값 가져오기
					const idField = document.getElementById('userId');
					const pwField = document.getElementById('userPasswd');
					const checkUserPasswd = document.getElementById('checkUserPasswd');
					const nameField = document.getElementById('name');
					const emailField = document.getElementById('email');
					const mobileField1 = document.getElementById('mobile1').value;
					const mobileField2 = document.getElementById('mobile2').value;
					const mobileField3 = document.getElementById('mobile3').value;

					// 전체 핸드폰 번호를 구성
					const phone = `${mobileField1}-${mobileField2}-${mobileField3}`;
					
					// 전체 생일을 구성
					const birthday = `${birthdayField1}-${birthdayField2}-${birthdayField3}`;
					
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
					
					if (!nameCheck.test(nameField.value)) {
			            alert('이름을 제대로 입력해주세요.');
			            return;
			        }
			        
			        // 핸드폰1 유효성 검사
			        if (!regex1.test(mobileField1)) {
			            alert('유효한 핸드폰 번호를 입력해주세요.');
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
			        
					// 유효성 검사 통과 시 폼 제출
					this.submit();
				});

				// Enter 키 이벤트 리스너 등록
				document.addEventListener('keydown', function(e) {
					if (e.key === 'Enter') {
						// 아이디와 비밀번호 필드 값 가져오기
						const idField = document.getElementById('userId');
						const pwField = document.getElementById('userPasswd');
						const checkUserPasswd = document.getElementById('checkUserPasswd');
						const nameField = document.getElementById('name');
			            const emailField = document.getElementById('email');
			            const mobileField1 = document.getElementById('mobile1');
						const mobileField2 = document.getElementById('mobile2');
						const mobileField3 = document.getElementById('mobile3');
			            const birthdayField1 = document.getElementById('birthYear');
						const birthdayField2 = document.getElementById('birthMonth');
						const birthdayField3 = document.getElementById('birthDay');

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
			            
			            if (mobileField1.value.trim() === '') {
			                alert('핸드폰 번호는 필수 입력 값입니다.');
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
				    $('#checkUserIdDuplicate').click(function(e) {
				    	e.preventDefault(); // 기본 동작 중단
				    	
				        const userId = $('#userId').val(); // 입력된 아이디 값 가져오기
				        const idField = document.getElementById('userId');
				        
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
							success : function(response) {
								if(response.result === "false"){
				                    // 중복된 아이디일 경우
				                    alert('이미 사용 중인 아이디입니다.');
								}
								else {
				                    // 사용 가능한 아이디일 경우
				                    alert('사용 가능한 아이디입니다.');
				                    // 아이디 입력란을 읽기 전용으로 설정
									$("#idDuplicatedCheck").prop("disabled", true); // idDuplicatedCheck 버튼을 비활성화
				                    $('#userId').prop('readonly', true);
								}
							},
				            error: function(xhr, status, error) {
				                // 오류 발생 시 처리
				                console.error(error);
				                alert('중복 확인 중 오류가 발생했습니다.');
				            }
				        });
				    });
				});
				</script>
				<!-- 여기까지 작성 -->

				<div class="login-actions">
					<div class="ec-base-button">
						<a href="identity" class="primary-button"
							onclick="checkAction(event)"><span>가입 하기</span></a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="/" class="primary-button"><span>가입
								취소</span></a>
					</div>
				</div>

				<!-- ============================== [[ Body  section]] ==============================-->

				<!-- =============================  [[ Footer section ]]  ============================= -->

				<%@ include file="../include/footer.jsp"%>

			</div>
		</div>
	</div>
	<!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>