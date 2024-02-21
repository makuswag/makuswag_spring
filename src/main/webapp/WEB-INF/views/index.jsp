<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>MakUSwag</title>
<!-- Bootstrap CSS -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="./css/slick.css">
<link rel="stylesheet" href="./css/slick2.css">
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
<link rel="icon" href="./images/CompanyLogo.png">
<script type="text/javascript" src="./js/slick.js"></script>
<style>
/* 네모로 변경할 스타일 */
.carousel-indicators li {
	border-radius: 0;
	width: 30px; /* 네모의 가로 길이 조절 */
	height: 10px; /* 네모의 세로 길이 조절 */
	background-color: #ddd; /* 네모의 배경색 */
	margin: 0 3px; /* 네모 간의 간격 조절 */
	cursor: pointer;
}

/* 활성화된 네모의 스타일 */
.carousel-indicators .active {
	border-radius: 0;
	width: 30px; /* 네모의 가로 길이 조절 */
	height: 10px; /* 네모의 세로 길이 조절 */
	background-color: #333; /* 활성화된 네모의 배경색 */
}
</style>
</head>
<body class="nav-expended">
	<!-- ============================== [[ Header  section]] ==============================-->

	<%@ include file="include/header.jsp"%>

	<!-- ============================== [[ Header  section]] ==============================-->

	<!-- ============================== [[ Sidebar  section]] ==============================-->
	<div class="site-main">
		<div class="container">

			<%@ include file="include/sidemenu.jsp"%>

			<!-- ============================== [[ Sidebar  section]] ==============================-->

			<!-- ============================== [[ Body  section]] ==============================-->


			<!-- 여기서 부터 작성 -->
			<div class="main">

				<!-- 여기서 부터 작성 -->
				<!-- 캐로셀 -->

				<%@ include file="include/carousel.jsp"%>

				<!-- 캐로셀 -->

				<!-- THE LATEST UPDATE -->

				<div class="main-section new-products">
					<div class="section-header">
						<h3><b>The Latest Update</b></h3>
						<h4><b>Unisex Clothes</b></h4>
					</div>
				</div>

				<!-- THE LATEST UPDATE -->

				<!-- BEST BANNER -->
				
				<div class="main-section sub-banner">
					<div class="banner-image" style="background-image: url('images/home/sub18.jpg');"></div>
				</div>
				
				<!-- BEST BANNER -->
				
				<!-- BEST OF THE WEEK -->
				
				<div class="main-section best-products">
					<div class="section-header">
						<h3><b>Best of the Week</b></h3>
					</div>
				</div>
				
				<!-- BEST OF THE WEEK -->
				
				<!-- ACC BANNER -->
				
				<div class="main-section sub-banner">
					<div class="banner-image" style="background-image: url('images/home/sub16.jpg');"></div>
				</div>
				
				<!-- ACC BANNER -->
				
				<!-- ACCESSORIES -->
				
				<div class="main-section accessories">
					<div class="section-header">
						<h3><b>Accessories you'll love</b></h3>
					</div>
				</div>
				
				<!-- ACCESSORIES -->
				
				
				<!-- 여기까지 Swag~ -->

				<!-- ============================== [[ Body  section]] ==============================-->

				<!-- =============================  [[ Footer section ]]  ============================= -->

				<%@ include file="include/footer.jsp"%>

			</div>
		</div>
	</div>
	<!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>
