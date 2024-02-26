<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 인증</title>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="stylesheet" href="./css/login.css">
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
				<div class="entry-page">
					<form id="email_form" name="" action="checkEmail" method="post">

						<div class="xans-element- xans-member xans-member-login login ">
							<div class="login-header">
								<h2 style="text-align: center;">이메일을 입력하여 주세요</h2>
							</div>
							<fieldset>
								<legend>이메일 인증</legend>
								<div class="form-field">
									<label for="email">Email</label> <input id="email" name="email"
										class="inputTypeText" placeholder="ex)makuswag@makuswag.com" value="" type="email"
										required>
								</div>
								<br> <br> <br>
								<div class="login-footer">
									<div class="login-actions">
										<input type="submit" value="인증키 받기" class="primary-button"
											style="margin: 0 auto;">
									</div>
								</div>
							</fieldset>
						</div> 
					</form>
					
				</div>
				<script>
			    // 이메일 유효성 검사 정규식
			    const emailRegex = /^[a-z0-9]+@[a-z]+\.[a-z]{2,3}$/;
			
			    document.getElementById('email_form').addEventListener('submit', function (e) {
			        e.preventDefault(); // 기본 동작 중단
			
			        // 이메일 입력값 가져오기
			        const emailField = document.getElementById('email');
			        const errorMessage = document.getElementById('error-message');
			
			        // 이메일의 유효성 검사
			        if (!emailRegex.test(emailField.value)) {
			            alert('유효한 이메일 주소를 입력해주세요.');
			            return;
			        }
		            alert('메일을 발송합니다.');
					
			        // 유효성 검사 통과 시 폼 제출
			        this.submit();
			    });
			
			    // Enter 키 이벤트 리스너 등록
			    document.addEventListener('keydown', function (e) {
			        if (e.key === 'Enter') {
			            // 이메일 필드 값 가져오기
			            const emailField = document.getElementById('email');
			
			            // 값이 비어 있는지 확인하고 알림 창 띄우기
			            if (emailField.value.trim() === '') {
			                alert('이메일은 필수 입력 값입니다.');
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