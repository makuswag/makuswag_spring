<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYPAGE</title>
<script src="/MakUSwag2.5/js/mypageList.js"></script>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
<link rel="icon" href="./images/CompanyLogo.png">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<!-- jQuery UI -->
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/base/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<!-- 한국어 지역화  나중에 추가하기-->
<!-- 스타일 -->
<link rel="stylesheet" href="./css/calender.css">
<script>
$( function() {
  // 현재 날짜 설정
  var today = new Date();
  // 한국어 지역화 설정
  $.datepicker.setDefaults( $.datepicker.regional[ "ko" ] );

  // Datepicker를 적용할 input 요소를 선택하고 datepicker() 메서드를 호출하여 달력을 활성화합니다.
  $( "#datepicker" ).datepicker({
    // 달력의 형식을 한국식으로 지정합니다.
    dateFormat: 'yy-mm-dd',
    // 오늘 날짜 표시
    showButtonPanel: true,
    // 달력 아이콘 설정
    showOn: "button",
    buttonImage: "https://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
    buttonImageOnly: true,
    buttonText: "Select date",
    // 다음/이전 버튼 텍스트 설정
    nextText: "다음 달",
    prevText: "이전 달",
    // 요일 표시 설정
    dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
    // 월 이름 설정
    monthNamesShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
    // 년도 선택 가능 (1920년부터 시작)
    changeYear: true,
    yearRange: '1920:' + today.getFullYear(),
    // 월 선택 가능
    changeMonth: true,
    // 현재 날짜 이후 선택 불가
    maxDate: today
  });
} );
</script>

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
				<div class="my-account">

					<div class="local-nav">
						<div class="nav-title">
							<h2>
								<a href="/myshop/index.html">My Page</a>
							</h2>
						</div>
						<div class="nav-items">
							<a href="myPage.do" class="nav-item selected">Orders</a>
							<a href="/member/modify.html" class="nav-item">My Info</a>
						</div>
					</div>

					<div class="account-header">
						<h4>Orders</h4>
					</div>

					<form method="GET" id="OrderHistoryForm" name="OrderHistoryForm">
						<div
							class="xans-element- xans-myshop xans-myshop-orderhistoryhead account-toolbar ">
							<div class="search-order">
								<fieldset>
									<legend>검색기간설정</legend>
									<div class="period">
										<a href="#none" days="00">오늘</a> <a href="#none" days="07">1주일</a>
										<a href="#none" days="30">1개월</a> <a href="#none" days="90">3개월</a>
										<a href="#none" days="180">6개월</a>
									</div>
									<div class="date-range">
										<input id="history_start_date" name="history_start_date"
											class="fText hasDatepicker"  size="10"
											value="2000-11-17" type="text">
										<button type="button" class="ui-datepicker-trigger">
											<img
												src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif"
												alt="..." title="...">
										</button>
										<span class="range-mark">~</span><input id="history_end_date"
											name="history_end_date" class="fText hasDatepicker"
											readonly="readonly" size="10" value="2025-02-15" type="text">
										<button type="button" class="ui-datepicker-trigger">
											<img
												src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif"
												alt="..." title="...">
										</button>
									</div>
									<input type="text" id="datepicker">
									<span class="primary-button" id="searchButton"
										onclick="searchData()">조회</span>
									<!-- 									<input  class="primary-button" id="searchButton" type="submit" value="조회" onclick="searchData()" >
 -->
								</fieldset>
							</div>
						</div>
						<input id="mode" name="mode" value="" type="hidden"> <input
							id="term" name="term" value="" type="hidden">
					</form>
					<div>
						<div class="table-list order-list">



							<div class="xans-element- xans-board xans-board-list qna-list">

								<div class="list-item xans-record-">
									<a  class="post-link"> <span
										class="number1">주문번호</span> <span class="number1">상품명</span><span
										class="number1">수량</span> <span class="number1">가격</span><span
										class="number1">적립포인트</span><span class="number1">주문일자</span>
									</a>
								</div>
								<!-- 데이터 리스트 불러오는 ajax -->
								<div id="result"></div>

							</div>

						</div>


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