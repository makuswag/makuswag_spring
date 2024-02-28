<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="./css/join.css">
<link rel="stylesheet" href="./css/login.css">
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="icon" href="./images/CompanyLogo.png">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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

					<!-- 분류 -->
					<div class="xans-element- xans-member xans-member-join entry-page">
						<div class="signup-form">
							<div class="form-header">
								<h3>Sign Up</h3>
							</div>
							<form id="sign_form" name="" action="sendInformation" method="post">
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
													id="idDuplicatedCheck">
													<span class="css-nytqmg e4nu7ef1">중복확인</span>
												</button> <br>
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
											<td><input id="checkUserPasswd" name="checkUserPasswd"
												fw-filter="isFill&amp;isMin[4]&amp;isMax[16]"
												fw-label="비밀번호 확인" fw-msg="비밀번호가 일치하지 않습니다."
												autocomplete="off" maxlength="16" 0="disabled" value=""
												type="password" required>
												<div class="form-description">
													<span id="pwConfirmMsg"></span>
												</div></td>
										</tr>
										<tr>
											<th scope="row">이름</th>
											<td><input type="text" name="name" id="name" maxlength="10" required></td>
										</tr>
										<tr class="">
											<th scope="row">주소 <img
												src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
												alt="필수"></th>
											<td>
												<div class="address-fieldset">
													<input id="postcode" name="postcode"
														fw-filter="isLengthRange[1][14]" fw-label="우편번호1"
														fw-msg="" class="inputTypeText" placeholder=""
														readonly="readonly" maxlength="14" value="" type="text"
														required>
													<button class="field-button" type="button" id="address" onclick="findAddr()">
														<span class="css-nytqmg e4nu7ef1">우편번호</span>
													</button>
													<br> <input id="addr1" name="addr1" fw-filter=""
														fw-label="주소" fw-msg="" class="inputTypeText"
														placeholder="기본 주소" readonly="readonly" value=""
														type="text" required><br>
														<input id="addr2"
														name="addr2" fw-filter="" fw-label="주소" fw-msg=""
														class="inputTypeText" placeholder="나머지 주소" value=""
														type="text" required>
												</div>
											</td>
										</tr>
										<tr class="">
											<th scope="row">휴대전화</th>
											<td>
												<div class="phone-fieldset">
													<span class="select-field"> <select id="mobile1"
														name="mobile1" fw-filter="isNumber&amp;isFill"
														fw-label="휴대전화" fw-alone="N" fw-msg="">
															<option value="010">010</option>
															<option value="011">011</option>
															<option value="016">016</option>
															<option value="017">017</option>
															<option value="018">018</option>
															<option value="019">019</option>
													</select></span> - <input id="mobile2" name="mobile2" maxlength="4"
														fw-filter="isNumber&amp;isFill" fw-label="휴대전화"
														fw-alone="N" fw-msg="" placeholder="" value="" type="text"
														required> - <input id="mobile3" name="mobile3"
														maxlength="4" fw-filter="isNumber&amp;isFill"
														fw-label="휴대전화" fw-alone="N" fw-msg="" placeholder=""
														value="" type="text" required>
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row">이메일</th>
											<td><input id="email" name="email"
												fw-filter="isFill&amp;isEmail" fw-label="이메일" fw-alone="N"
												fw-msg="" placeholder="" value="" type="text" required>
												<button class="field-button" type="button"
													id="emailDuplicatedCheck">
													<span class="css-nytqmg e4nu7ef1">중복확인</span>
												</button> <br>
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
											<td><span class="select-field"> <select
													id="birthYear" name="birthYear" fw-filter="isFill"
													fw-label="생년월일" fw-msg="" class="inputTypeText" required>
														<option value="" disabled selected>선택</option>
														<option value="" disabled>-----</option>
														<c:forEach var="year" begin="1920" end="2024">
															<option value="${year}">${year}</option>
														</c:forEach>
												</select>
											</span> 년 <span class="select-field"> <select id="birthMonth"
													name="birthMonth" fw-filter="isNumber&amp;isFill"
													fw-label="생년월일" fw-alone="N" fw-msg=""
													class="inputTypeText" required>
														<option value="" disabled selected>선택</option>
														<option value="" disabled>-----</option>
														<c:forEach var="month" begin="01" end="12">
															<option value="${month < 10 ? '0' + month : month}">${month}</option>
														</c:forEach>
												</select>
											</span> 월 <span class="select-field"> <select id="birthDay"
													name="birthDay" fw-filter="isFill" fw-label="생년월일"
													fw-msg="" class="inputTypeText" required>
														<option value="" disabled selected>선택</option>
														<option value="" disabled>-----</option>
														<c:forEach var="day" begin="1" end="31">
															<option value="${day < 10 ? '0' + day : day}">${day}</option>
														</c:forEach>
												</select>
											</span> 일</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="login-actions">
								<div class="ec-base-button">
									<input type="submit" value="가입하기" class="primary-button">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
									<a href="/"	class="primary-button"><span>가입 취소</span></a>
								</div>
							</div>
						</form>
						
						<script type="text/javascript" src="./js/join.js"></script>
						<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
						</div>
					</div>
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