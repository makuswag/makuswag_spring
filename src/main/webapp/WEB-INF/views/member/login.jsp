<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="stylesheet" href="./css/login.css">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
<link rel="icon" href="./images/CompanyLogo.png">
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
				<div class="entry-page">
					<form id="member_form" name="" action="whologin" method="post">

						<div class="xans-element- xans-member xans-member-login login ">
							<div class="login-header">
								<h2 style="text-align: center;">LOGIN</h2>
							</div>
							<fieldset>
								<legend>회원로그인</legend>
								<div class="form-field">
									<label for="userId">ID</label> <input id="userId" name="userId"
										fw-filter="isFill" fw-label="아이디" fw-msg=""
										class="inputTypeText" placeholder="" value="" type="text"
										required>
								</div>
								<div class="form-field">
									<label for="userPasswd">PASSWORD</label> <input id="userPasswd"
										name="userPasswd"
										fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="패스워드"
										fw-msg="" autocomplete="off" value="" type="password" required>
								</div>
								<div class="login-footer">
									<div class="login-extras">
										<a href="idEmail">아이디 찾기</a> <a href="passwdEmail">비밀번호
											찾기</a>
									</div>
									<div class="login-actions">
										<input type="submit" value="Login" class="primary-button"
											style="margin: 0 auto;">
										<!-- <a href="#none" class="primary-button"
											onclick="MemberAction.login('member_form'); return false;"><span>Login</span></a> -->
										<a href="agree" class="primary-button"><span>Join</span></a>
									</div>
								</div>
							</fieldset>
						</div>
					</form>

				</div>
				<script>
					// 아이디 유효성 검사 정규식
					const idRegex = /^[a-z0-9]{4,16}$/;

					// 비밀번호 유효성 검사 정규식
					const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{4,16}$/;

					document.getElementById('member_form').addEventListener('submit',function(e) {
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
				</script>

				<!-- 여기까지 작성 -->

				<!-- ============================== [[ Body  section]] ==============================-->

				<!-- =============================  [[ Footer section ]]  ============================= -->

				<%@ include file="../include/footer.jsp"%>

			</div>
		</div>
	</div>
	<!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>