<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<div class="product-tiles">
					<div class="tile xans-record-">
						<a href="/product/next-short-yasang/526/category/24/display/1/">
							<c:forEach items="${productlist }" var="dto" varStatus="loop">
								<div class="product-image">
									<img
										src="${pageContext.request.contextPath}/images/product/${dto.proImage1}"
										class="primary-image" alt="NEXT SHORT YASANG"> 
									<img
										src="${pageContext.request.contextPath}/images/product/${dto.proImage2}"
										class="secondary-image" alt="NEXT SHORT YASANG">
								</div>
								<div class="product-name">
									<span style="font-size: 12px; color: #555555;">${dto.proName }</span>
								</div>
								<div class="product-price" data-price-was="" data-price-now=""
									data-stock=""></div>
								<div class="product-info"></div>
								<ul
									class="xans-element- xans-product xans-product-listitem product-meta">
									<li class=" xans-record-"><span
										style="font-size: 12px; color: #555555;">${dto.proColor }/${proGender }
									</span></li>
									<li class=" xans-record-"><span
										style="font-size: 12px; color: #555555;">${dto.proPrice }</span><span
										id="span_product_tax_type_text" style=""> </span></li>
								</ul>
						</a>
					</div>
					</c:forEach>
					<div style="text-align: center;">

						<c:if test="${currentPage > 1}">
							<a href="review.do?page=${currentPage - 1}"
								style="display: inline-block; margin: 10px;">&nbsp;이전</a>
						</c:if>

						<c:forEach items="${pageList}" var="page">
							<c:choose>
								<c:when test="${page == currentPage}">
									<span
										style="display: inline-block; margin: 10px; font-weight: bold;">&nbsp;${page}</span>
								</c:when>
								<c:otherwise>
									<a href="review.do?page=${page}"
										style="display: inline-block; margin: 10px;">&nbsp;${page}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>

						<c:if test="${currentPage < totalPage}">
							<a href="review.do?page=${currentPage + 1}"
								style="display: inline-block; margin: 10px;">&nbsp;다음</a>
						</c:if>
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