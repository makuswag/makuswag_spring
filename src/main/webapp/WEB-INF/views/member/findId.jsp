<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="stylesheet" href="./css/login.css">
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
				<div class="entry-page">
					<form id="findIdEmail_form" name="" action="findIdEmail" method="post">

						<div class="xans-element- xans-member xans-member-login login ">
							<div class="login-header">
								<h2 style="text-align: center;">아이디 찾기</h2>
							</div>
							<fieldset>
								<legend>아이디 찾기</legend>
								<div class="form-field">
									<label for="name">이름</label> <input id="name" name="name"
										class="inputTypeText" placeholder="" value="" type="text" required>
									<label for="email">Email</label> <input id="email" name="email"
										class="inputTypeText" placeholder="가입 당시 이메일을 작성하여 주세요." value="" type="email" required>
								</div>
								<br> <br> <br>
								<div class="login-footer">
									<div class="login-actions">
										<input type="submit" value="조회" class="primary-button"
											style="margin: 0 auto;">
									</div>
								</div>
							</fieldset>
						</div> 
					</form>
					
				</div>
				<script type="text/javascript" src="./js/findId.js"></script>
				
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