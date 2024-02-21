<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색</title>
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

				<form id="searchForm" name="" action="/"
					method="post" target="_self" enctype="multipart/form-data">
					<input id="view_type" name="view_type" value="" type="hidden">
					<input id="supplier_code" name="supplier_code" value=""
						type="hidden">
					<div
						class="xans-element- xans-search xans-search-form search-container ">
						<div class="search-form">
							<fieldset>
								<legend>상품검색</legend>
								<span class="select-field"><select id="search_type"
									name="search_type" fw-filter="" fw-label="상품검색" fw-msg="">
										<option value="product_name">상품명</option>
										<option value="product_code">상품코드</option>
										<option value="ma_product_code">자체상품코드</option>
										<option value="manu_name">제조사</option>
										<option value="prd_model">모델명</option>
										<option value="prd_brand">브랜드명</option>
										<option value="prd_trand">트랜드명</option>
								</select></span> <input id="keyword" name="keyword" fw-filter=""
									fw-label="상품명/제조사" fw-msg="" class="inputTypeText"
									placeholder="" size="15" value="" type="text">
								<button type="submit" class="primary-button">
									<span>Search</span>
								</button>
							</fieldset>
						</div>
						<div class="no-results ">
							<p><h1>검색하지 말라니깐~!!</h1></p>
						</div>
					</div>
				</form>




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