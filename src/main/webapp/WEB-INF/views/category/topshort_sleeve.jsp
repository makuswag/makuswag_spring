<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>topshort_sleeve</title>
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
						<h2>TOP(SHORT SLEEVE)</h2>
					</div>
				</div>
				<div class="product-tiles">
					<c:forEach items="${productlist}" var="dto" varStatus="loop">
						<div class="tile xans-record-">
							<a href="productDetailInformation?proName=${dto.proName }">
								<div class="product-image">
									<img
										onmouseout="this.src = '${pageContext.request.contextPath}/images/product/${dto.proImage1}'"
										onmouseover="this.src = '${pageContext.request.contextPath}/images/product/${dto.proImage2}'"
										src="${pageContext.request.contextPath}/images/product/${dto.proImage1}"
										class="primary-image" alt="${dto.proName } "> &nbsp
								</div>
								<div class="product-name">
									<span style="font-size: 12px; color: #555555;">${dto.proName}</span>
								</div>
								<div class="product-price" data-price-was="" data-price-now=""
									data-stock="">
									<span style="font-size: 12px; color: #555555;">${dto.proColor}
										/ ${dto.proGender}</span>
									</li>
								</div>
								<div class="product-info">
									<span style="font-size: 12px; color: #555555;">${dto.proPrice}</span><span
										id="span_product_tax_type_text" style=""> </span>
								</div>
								<ul
									class="xans-element- xans-product xans-product-listitem product-meta">
									<li class=" xans-record-">
									<li class=" xans-record-"></li>
								</ul>
							</a>
						</div>
					</c:forEach>
				</div>

				<div style="text-align: center;">
					<c:if test="${currentPage > 1}">
						<a href="topshort_sleeve?page=${currentPage - 1}"
							style="display: inline-block; margin: 10px;">&nbsp;이전</a>
					</c:if>

					<c:forEach begin="${startPage}" end="${endPage}" var="pageNum">
						<c:choose>
							<c:when test="${pageNum == currentPage}">
								<span
									style="display: inline-block; margin: 10px; font-weight: bold;">&nbsp;${pageNum}</span>
							</c:when>
							<c:otherwise>
								<a href="topshort_sleeve?page=${pageNum}"
									style="display: inline-block; margin: 10px;">&nbsp;${pageNum}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<c:if test="${currentPage < totalPage}">
						<a href="topshort_sleeve?page=${currentPage + 1}"
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