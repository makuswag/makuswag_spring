<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타이틀을 작성하세요</title>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="icon" href="./images/CompanyLogo.png"> <!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
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
			<div class="css-1pjgd36 e744wfw6">
					<div class="css-82a6rk e744wfw3">
						<div class="css-jmalg e1uzxhvi6">
							<div class="css-176lya2 e1uzxhvi3">
								<input data-testid="input-box" id="email" name="email"
									placeholder="ex)makuswag@makuswag.com" type="text" required=""
									class="css-u52dqk e1uzxhvi2" value="">
							</div>
						</div>
					</div>
					
					<div class="css-1w0ksfz e744wfw2">
						<button class="css-ufulao e4nu7ef3" type="button" id="emailDuplicatedCheck">
							<span class="css-nytqmg e4nu7ef1">인증번호 발송</span>
						</button>
					</div>
				</div>
				
				<div class="css-1pjgd36 e744wfw6" id="Emailauthentication" style="display: none;">
					<div class="css-82a6rk e744wfw3">
						<div class="css-jmalg e1uzxhvi6">
							<div class="css-176lya2 e1uzxhvi3">
								<input data-testid="input-box" id="authentication" name="authentication"
									type="text" required="" placeholder="인증번호를 입력하세요"
									class="css-u52dqk e1uzxhvi2" value="">
								<input type="hidden" id="sysAuthentic">
							</div>
						</div>
						<span id="checkedEmail"></span>
					</div>
					
					<div class="css-1w0ksfz e744wfw2">
						<button class="css-ufulao e4nu7ef3" type="button" id="confirmCheck" onclick="checkAuthentication()">
							<span class="css-nytqmg e4nu7ef1">인증확인</span>
						</button>
					</div>
				</div>
				<script>
				$("#emailDuplicatedCheck").click(function() {
		
					let regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
					let wrongword = /\badmin\b/;
					let email = $("#email").val();
					
					
					if {
						$.ajax({
							method : "POST",
							url : "duplicatedCheck", /* 여기가 checkEmail로 감 */
							data : {
								email : email
							},
							success : function(response) {
								$("#emailDuplicatedCheck").prop("disabled", false); // idDuplicatedCheck 버튼을 비활성화
								if(response.result === "false"){
									let message = "인증번호를 발송하였습니다.";
									
									
									$("#sysAuthentic").val(response.authentication);
								}
							},
						})
					}
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