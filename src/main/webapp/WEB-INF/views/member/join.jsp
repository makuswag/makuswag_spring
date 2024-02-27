<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

				<form id="joinForm" name="joinForm" action="/exec/front/Member/join/" method="post">
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
												<a href="#none" class="field-button" onclick=""
														id="postBtn">중복확인</a><br>
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
											<td><input id="user_passwd_confirm"
												name="user_passwd_confirm"
												fw-filter="isFill&amp;isMatch[passwd]" fw-label="비밀번호 확인"
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
														readonly="readonly" maxlength="14" value="" type="text">
													<a href="#none" class="field-button" onclick=""
														id="postBtn">우편번호</a><br> <input id="addr1"
														name="addr1" fw-filter="" fw-label="주소" fw-msg=""
														class="inputTypeText" placeholder="기본 주소"
														readonly="readonly" value="" type="text"><br>
													<input id="addr2" name="addr2" fw-filter="" fw-label="주소"
														fw-msg="" class="inputTypeText" placeholder="나머지 주소"
														value="" type="text">
												</div>
											</td>
										</tr>
										<tr class="">
											<th scope="row">휴대전화</th>
											<td>
												<div class="phone-fieldset">
													<span class="select-field"><select id="mobile1"
														name="mobile[]" fw-filter="isNumber&amp;isFill"
														fw-label="휴대전화" fw-alone="N" fw-msg="">
															<option value="010">010</option>
															<option value="011">011</option>
															<option value="016">016</option>
															<option value="017">017</option>
															<option value="018">018</option>
															<option value="019">019</option>
													</select></span>-<input id="mobile2" name="mobile[]" maxlength="4"
														fw-filter="isNumber&amp;isFill" fw-label="휴대전화"
														fw-alone="N" fw-msg="" placeholder="" value="" type="text">-<input
														id="mobile3" name="mobile[]" maxlength="4"
														fw-filter="isNumber&amp;isFill" fw-label="휴대전화"
														fw-alone="N" fw-msg="" placeholder="" value="" type="text">
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row">이메일</th>
											<td><input id="email1" name="email1"
												fw-filter="isFill&amp;isEmail" fw-label="이메일" fw-alone="N"
												fw-msg="" placeholder="" value="" type="text"> 
												<a href="#none" class="field-button" onclick=""
														id="postBtn">중복확인</a><br> 
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
												autocomplete="off" checked="checked"> <label
												for="M">남자</label> <input id="F" name="gender"
												fw-filter="isFill" fw-label="성별" fw-msg="" value="F"
												type="radio" autocomplete="off"> <label
												for="F">여자</label></td>
										</tr>
										<tr class="">
											<th scope="row">생년월일</th>
											<td>
												<div class="birthday-fieldset">
													<input id="birth_year" name="birth_year" fw-filter="isFill"
														fw-label="생년월일" fw-msg="" class="inputTypeText"
														placeholder="" maxlength="4" value="" type="text">
													년 <input id="birth_month" name="birth_month"
														fw-filter="isFill" fw-label="생년월일" fw-msg=""
														class="inputTypeText" placeholder="" maxlength="2"
														value="" type="text"> 월 <input id="birth_day"
														name="birth_day" fw-filter="isFill" fw-label="생년월일"
														fw-msg="" class="inputTypeText" placeholder=""
														maxlength="2" value="" type="text"> 일
												</div>
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
				<!-- 여기까지 작성 -->

				<!-- ============================== [[ Body  section]] ==============================-->

				<!-- =============================  [[ Footer section ]]  ============================= -->
				<div class="login-actions">
					<div class="ec-base-button">
						<a href="identity" class="primary-button" onclick="checkAction(event)"><span>작성 완료</span></a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="/" class="primary-button"><span>가입 취소</span></a>
					</div>
				</div>
				<%@ include file="../include/footer.jsp"%>

			</div>
		</div>
	</div>
	<!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>