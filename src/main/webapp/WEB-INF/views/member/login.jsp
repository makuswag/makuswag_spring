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
										<a href="agree" class="primary-button"><span>Join</span></a>
									</div>
								</div>
							</fieldset>
						</div>
					</form>
				
				</div>
				<script type="text/javascript" src="./js/login.js"></script>
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