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
					<input id="idDuplCheck" name="idDuplCheck" value="" type="hidden">
					 <input
						id="display_agree_privacy_required_check_flag"
						name="display_agree_privacy_required_check_flag" value="T"
						type="hidden"> <input
						id="display_agree_information_check_flag"
						name="display_agree_information_check_flag" value="F"
						type="hidden"> <input
						id="display_agree_consignment_check_flag"
						name="display_agree_consignment_check_flag" value="F"
						type="hidden"> <input
						id="display_agree_privacy_optional_check_flag"
						name="display_agree_privacy_optional_check_flag" value="F"
						type="hidden"> <input
						id="display_flag_marketing_consent_check"
						name="display_flag_marketing_consent_check" value="F"
						type="hidden"> <input id="display_flag_check_user_defined"
						name="display_flag_check_user_defined" value="F" type="hidden">
					<input id="is_display_register_name"
						name="is_display_register_name" value="T" type="hidden"> <input
						id="display_required_name" name="display_required_name" value="T"
						type="hidden"> 
					<input id="is_display_register_eng_name"
						name="is_display_register_eng_name" value="F" type="hidden">
					<input id="display_required_name_en"
						name="display_required_name_en" value="F" type="hidden"> <input
						id="passwd_type" name="passwd_type" value="A" type="hidden">
					<input id="is_display_register_addr"
						name="is_display_register_addr" value="F" type="hidden"> <input
						id="is_display_register_addr2" name="is_display_register_addr2"
						value="F" type="hidden"> <input id="__addr1"
						name="__addr1" value="" type="hidden"> <input
						id="__city_name" name="__city_name" value="" type="hidden">
					<input id="__state_name" name="__state_name" value="" type="hidden">
					<input id="__isRuleBasedAddrForm" name="__isRuleBasedAddrForm"
						value="F" type="hidden"> <input
						id="address_direct_input_check" name="address_direct_input_check"
						value="F" type="hidden"> <input
						id="display_required_address" name="display_required_address"
						value="F" type="hidden"> <input
						id="display_required_address2" name="display_required_address2"
						value="F" type="hidden"> <input
						id="is_display_register_mobile" name="is_display_register_mobile"
						value="T" type="hidden"> <input id="display_required_cell"
						name="display_required_cell" value="T" type="hidden"> <input
						id="display_register_mobile" name="display_register_mobile"
						value="T" type="hidden"> <input
						id="use_checking_mobile_number_duplication"
						name="use_checking_mobile_number_duplication" value="F"
						type="hidden"> <input id="isMobileVerify"
						name="isMobileVerify" value="F" type="hidden"> <input
						id="is_display_register_phone" name="is_display_register_phone"
						value="F" type="hidden"> <input
						id="display_required_phone" name="display_required_phone"
						value="F" type="hidden"> <input
						id="display_register_phone" name="display_register_phone"
						value="T" type="hidden"> <input
						id="is_display_password_hint" name="is_display_password_hint"
						value="F" type="hidden"> <input id="required_is_sms_flag"
						name="required_is_sms_flag" value="F" type="hidden"> <input
						id="required_is_news_mail_flag" name="required_is_news_mail_flag"
						value="T" type="hidden"> <input
						id="is_display_register_birthday"
						name="is_display_register_birthday" value="T" type="hidden">
					<input id="display_required_is_birthday"
						name="display_required_is_birthday" value="T" type="hidden">
					<input id="display_required_sex" name="display_required_sex"
						value="T" type="hidden"> <input id="nick_name_flag"
						name="nick_name_flag" value="F" type="hidden"> <input
						id="nick_name_confirm" name="nick_name_confirm" value="F"
						type="hidden"> <input id="display_required_nick_name_flag"
						name="display_required_nick_name_flag" value="F" type="hidden">
					<input id="is_display_register_wedding"
						name="is_display_register_wedding" value="F" type="hidden">
					<input id="display_required_is_wedding_anniversary"
						name="display_required_is_wedding_anniversary" value="F"
						type="hidden"> <input
						id="is_display_register_life_partner"
						name="is_display_register_life_partner" value="F" type="hidden">
					<input id="display_required_is_life_partner"
						name="display_required_is_life_partner" value="F" type="hidden">
					<input id="is_display_bank" name="is_display_bank" value="F"
						type="hidden"> <input
						id="display_required_bank_account_no"
						name="display_required_bank_account_no" value="F" type="hidden">
					<input id="display_required_job" name="display_required_job"
						value="F" type="hidden"> <input
						id="display_required_job_class" name="display_required_job_class"
						value="F" type="hidden"> <input
						id="display_required_school" name="display_required_school"
						value="F" type="hidden"> <input
						id="display_required_interest" name="display_required_interest"
						value="F" type="hidden"> <input
						id="display_required_region" name="display_required_region"
						value="T" type="hidden"> <input
						id="display_required_internet" name="display_required_internet"
						value="F" type="hidden"> <input
						id="display_required_child" name="display_required_child"
						value="F" type="hidden"> <input id="display_required_car"
						name="display_required_car" value="F" type="hidden"> <input
						id="display_required_earning" name="display_required_earning"
						value="F" type="hidden"> <input
						id="display_required_reco_id" name="display_required_reco_id"
						value="F" type="hidden"> <input id="display_required_add1"
						name="display_required_add1" value="F" type="hidden"> <input
						id="display_required_add2" name="display_required_add2" value="F"
						type="hidden"> <input id="display_required_add3"
						name="display_required_add3" value="F" type="hidden"> <input
						id="display_required_add4" name="display_required_add4" value="F"
						type="hidden"> <input id="returnUrl" name="returnUrl"
						value="/member/join_result.html" type="hidden"> <input
						id="sUseCountryNumberFlag" name="sUseCountryNumberFlag" value="T"
						type="hidden"> <input id="sUseSeparationNameFlag"
						name="sUseSeparationNameFlag" value="F" type="hidden"> <input
						id="is_use_checking_join_info" name="is_use_checking_join_info"
						value="F" type="hidden">

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
											<td><input id="member_id" name="member_id"
												fw-filter="isFill&amp;isFill&amp;isMin[4]&amp;isMax[16]&amp;isIdentity"
												fw-label="아이디" fw-msg="" class="inputTypeText"
												placeholder="" value="" type="text">
												<a href="#none" class="field-button" onclick=""
														id="postBtn">중복확인</a><br>
												<div class="form-description">
													<span id="idMsg"></span>
												</div></td>
										</tr>
										<tr>
											<th scope="row">비밀번호</th>
											<td><input id="passwd" name="passwd"
												fw-filter="isFill&amp;isMin[4]&amp;isMax[16]"
												fw-label="비밀번호" fw-msg="" autocomplete="off" maxlength="16"
												0="disabled" value="" type="password">
												<div class="form-description"></div></td>
										</tr>
										<tr>
											<th scope="row">비밀번호 확인</th>
											<td><input id="user_passwd_confirm"
												name="user_passwd_confirm"
												fw-filter="isFill&amp;isMatch[passwd]" fw-label="비밀번호 확인"
												fw-msg="비밀번호가 일치하지 않습니다." autocomplete="off" maxlength="16"
												0="disabled" value="" type="password">
												<div class="form-description">
													<span id="pwConfirmMsg"></span>
												</div></td>
										</tr>
										<tr>
											<th scope="row" id="nameTitle">이름</th>
											<td><span id="nameContents"><input type="text"
													name="name" id="name" maxlength="20"></span></td>
										</tr>
										<tr class="">
											<th scope="row">주소 <img
												src="//img.echosting.cafe24.com/skin/base/common/ico_required_blue.gif"
												class="displaynone" alt="필수"></th>
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
												<span
												id="emailMsg"></span></td>
										</tr>
									</tbody>
								</table>
								<table border="1" summary="" class="account-add-info">
									<caption>회원 추가정보</caption>
									<tbody>
										<tr class="">
											<th scope="row">성별</th>
											<td><input id="is_sex0" name="is_sex" fw-filter="isFill"
												fw-label="성별" fw-msg="" value="M" type="radio"
												autocomplete="off" checked="checked"> <label
												for="is_sex0">남자</label> <input id="is_sex1" name="is_sex"
												fw-filter="isFill" fw-label="성별" fw-msg="" value="F"
												type="radio" autocomplete="off"> <label
												for="is_sex1">여자</label></td>
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

							

							<div id="ec_shop_member_confirm-infolayer"
								class="joinConfirm ec-base-layer ">



								<div class="header">
									<h3>가입 정보 확인</h3>
								</div>
								<div class="content">
									<p>아직 회원가입이 완료되지 않았으니, 작성하신 내용을 확인하신 후에 가입을 완료해 주세요.</p>
									<div class="ec-base-table">
										<table border="1" summary="">
											<caption>가입 정보 확인</caption>
											<colgroup>
												<col style="width: 130px;">
												<col style="width: auto;">
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">아이디</th>
													<td><span id="ec_shop_member_confirm_field-member_id"></span></td>
												</tr>
												<tr>
													<th scope="row" id="ec_shop_member_confirm-name_title">이름</th>
													<td id="ec_shop_member_confirm-name_contents"></td>
												</tr>
												<tr class="">
													<th scope="row">주소</th>
													<td><span id="ec_shop_member_confirm_field-postcode1"></span><br>
														<span id="ec_shop_member_confirm_field-addr1"></span> <span
														id="ec_shop_member_confirm_field-addr2"></span></td>
												</tr>
												<tr class="">
													<th scope="row">휴대전화</th>
													<td><span id="ec_shop_member_confirm_field-mobile"></span></td>
												</tr>
												<tr>
													<th scope="row">이메일</th>
													<td><span id="ec_shop_member_confirm_field-email1"></span>@<span
														id="ec_shop_member_confirm_field-email2"></span></td>
												</tr>
												<tr class="">
													<th scope="row">성별</th>
													<td><span id="ec_shop_member_confirm_field-is_sex"></span></td>
												</tr>
												<tr class="">
													<th scope="row">생년월일</th>
													<td><span id="ec_shop_member_confirm_field-birth_year"></span><span>/</span><span
														id="ec_shop_member_confirm_field-birth_month"></span><span>/</span><span
														id="ec_shop_member_confirm_field-birth_day"></span> <span
														class="">(<span
															id="ec_shop_member_confirm_field-is_solar_calendar"></span>)
													</span></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="ec-base-button">
									<a href="#none" class="btnSubmitFix sizeS"
										id="ec_shop_confirm-checkingjoininfo_action">회원가입</a> <a
										href="#none" class="btnNormalFix sizeS"
										onclick="CheckingJoinInfoLayerClose()">닫기</a>
								</div>
								<a href="#none" class="close"><img
									src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif"
									alt="닫기" onclick="CheckingJoinInfoLayerClose()"></a>
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
						&nbsp;&nbsp;&nbsp;
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