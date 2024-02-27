<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>outer</title>
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

				<div
					class="xans-element- xans-product xans-product-menupackage catalog-header ">
					<div
						class="xans-element- xans-product xans-product-headcategory category-title ">
						<h2>Outer</h2>
					</div>
					<div class="catalog-nav">
						<div
							class="xans-element- xans-product xans-product-headcategory categories ">
							<span class="item"> <a
								href="/product/list.html?cate_no=24">All</a>
							</span> <span style="display:;"
								class="xans-element- xans-product xans-product-displaycategory item  xans-record-"><a
								href="/category/jackets-jumper/29/">Jackets & Jumper</a> </span> <span
								style="display:;"
								class="xans-element- xans-product xans-product-displaycategory item  xans-record-"><a
								href="/category/coats/30/">Coats</a> </span> <span style="display:;"
								class="xans-element- xans-product xans-product-displaycategory item  xans-record-"><a
								href="/category/blazers/31/">Blazers</a> </span> <span
								style="display:;"
								class="xans-element- xans-product xans-product-displaycategory item  xans-record-"><a
								href="/category/cardigan/42/">Cardigan</a> </span> <span
								style="display:;"
								class="xans-element- xans-product xans-product-displaycategory item  xans-record-"><a
								href="/category/vest/92/">Vest</a> </span>
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