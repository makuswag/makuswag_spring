<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인증키</title>
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
					<form id="checkEmail_form" name="" action="memberJoin.do"
						method="post">

						<div class="xans-element- xans-member xans-member-login login ">
							<div class="login-header">
								<h2 style="text-align: center;">인증키를 입력하여 주세요.</h2>
							</div>
							<fieldset>
								<legend>인증번호</legend>
								<div class="form-field">
									<label for="key">인증키</label> <input id="key" name="key"
										class="inputTypeText" placeholder="" value="" type="text"
										required>
								</div>
								<br> <br> <br>
								<div class="login-footer">
									<div class="login-actions">
										<input type="submit" value="인증" class="primary-button"
											style="margin: 0 auto;">
									</div>
								</div>
							</fieldset>
						</div>
					</form>

				</div>
				<script>
					// 폼 제출 함수
					function submitForm() {
						// 이메일 필드 값 가져오기
						const keyField = document.getElementById('key');

						// 값이 비어 있는지 확인하고 알림 창 띄우기
						if (keyField.value.trim() === '') {
							alert('인증키를 입력하세요.');
							return;
						}

						// 폼 제출
						document.getElementById('checkEmail_form').submit();
					}

					// Enter 키 이벤트 리스너 등록
					document.addEventListener('keydown', function(e) {
						if (e.key === 'Enter') {
							// 폼 제출 함수 호출
							submitForm();
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