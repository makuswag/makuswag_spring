<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About us</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<link rel="stylesheet" href="./css/cardanimation.css" />
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="stylesheet" href="./css/about.css">
<link rel="icon" href="./images/CompanyLogo.png"> <!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
				
				<div class="about">
	
					<div class="manifesto">
						<span class="site-logo">
							<h1 style="text-align: center;">
								<a href="main.do">
									<img src="./images/CompanyLogo.png" alt="로고" class="logo-img" width="200px" height="100px">
								</a>
							</h1>
						</span>
						<br>
						<br>
						<br>
						<p>Mak U Swag은 가장 개인적인 공간에서 전개되는 캐주얼 셀렉샵입니다.</p>
						<p>단순 셀러로서가 아닌 인테리어, 디자인, 포토, 스타일링등 전체적인 조화를 추구하는 갤러리 스토어입니다.</p>
						<p>개인의 취향이 가득 담긴 공간으로 패션을 사랑하는 분들이라면 누구나 편하게 즐길 수 있습니다.</p>
						<br>
						<br>
						<br>
						
						<div class="about-photos">
							<img src="./images/about/about-photo-1.jpg" alt="1" width="1132px" height="754px" style="text-align: center;">&nbsp;
							<br>
							<img src="./images/about/about-photo-2.jpg" alt="2">&nbsp;
							<br>
							<img src="./images/about/about-photo-3.jpg" alt="3">&nbsp;
						</div>
						
						<!-- 크루 소개 -->
						<h1 style="text-align: center;">Crew</h1>
						<br>
						<br>
						
						<%@ include file="../include/cardanimation.jsp"%>
						<script type="text/javascript" src="./js/index.js"></script>
						<!-- 크루 소개 -->
						
						<br>
						<hr>
						<br>
						<br>
						<br>
						
						<!-- 카카오 지도 Api  -->
						
						<%@ include file="../include/kakaomap.jsp"%>
						
						<!-- 카카오 지도 Api  -->

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