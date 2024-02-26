<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<%
// session4는 인증키용
HttpSession session4 = request.getSession();
// 세션에 저장된 인증키를 담아줌
String authenticationKey = (String) session4.getAttribute("authentication");
%>
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
					<form id="checkEmail_form" name="" action="findId" method="get">

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
									<input type="hidden" id="authenticationKey" value="<%=authenticationKey%>">
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
				document.getElementById('checkEmail_form').addEventListener('submit', function (e) {
			        e.preventDefault(); // 기본 동작 중단
					const keyField = document.getElementById('key');
					const userKey = keyField.value.trim();
					const authenticationKey = document.getElementById('authenticationKey').value;
			
					// 인증키 비교
					if (userKey === authenticationKey) {
				        this.submit();
					} else {
						alert('인증키를 다시 입력하세요.');
						return;
					}
			        // 유효성 검사 통과 시 폼 제출
			    });
				
				// Enter 키 이벤트 리스너 등록
				document.addEventListener('keydown', function(e) {
					if (e.key === 'Enter') {
						const keyField = document.getElementById('key');
						const userKey = keyField.value.trim();
						// 값이 비어 있는지 확인
						if (userKey === '') {
							alert('인증키를 입력하세요.');
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