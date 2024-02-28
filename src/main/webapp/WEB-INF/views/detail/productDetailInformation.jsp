<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productDetailInformation</title>
<!-- Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
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
<link rel="stylesheet" href="./css/productDetailInformation.css">
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
				<div class="single-product">

					<div
						class="xans-element- xans-product xans-product-image product-images">
						<div class="slide ">
							가나
							<img
								src="${pageContext.request.contextPath}/images/admin/${allinone_detail.proImage1}"
								class="primary-image" alt="${detailDto.proName}">
						</div>
						<div class="slide ">
							<img
								src="${pageContext.request.contextPath}/images/admin/${allinone_detail.proImage2}"
								class="primary-image" alt="${detailDto.proName}">
						</div>
						<div class="slide ">
							<img
								src="${pageContext.request.contextPath}/images/admin/${allinone_detail.proImage3}"
								class="primary-image" alt="${detailDto.proName}">
						</div>
					</div>
				</div>
				<div class="product-essential" style="top: 15%;">

					<div
						class="xans-element- xans-product xans-product-detail product-info sidebar">
						<div class="product-name">
							<h2>${allinone_detail.proName}</h2>
						</div>
						<div class="product-price" data-price-was="0.00"
							data-price-now="68000" data-stock>
							<span class="price-now">${allinone_detail.proPrice}KRW<br>
							<br>
							<br></span>
						</div>
						<div class="product-description"
							style="margin-left: -40px; margin-top: 0px !important;">

							<span
								style="font-size: 12px; color: #555555; line-height: 1; padding-left: 40px;">

								${allinone_detail.proIntroduction } </span>
							<div class="more-info"
								style="margin-left: 35px; padding-left: 10px;">
								<span class="sizeguide-button"
									style="display: inline-block; margin-right: 10px;">Size
									Guide</span> <span class="checklist-button"
									style="display: inline-block;">Check List</span>
							</div>
						</div>


					</div>
					<div
						class="xans-element- xans-product xans-product-detaildesign product-meta">
						<ul>
							<li class=" xans-record-"><li class=" xans-record-">
                                    <span
								style="font-size:12px;color:#008BCC;font-weight:bold;"></span>
                                </li>	
                            </ul>
                        </div>
                        <div
						class="xans-element- xans-product xans-product-action product-actions"
						id="productActions" style="margin-top: -20px;">
						    <span class="primary-button sold-out displaynone">
						        <span>SOLD OUT</span>
						    </span>
						    <span class="primary-button buy-now displaynone">
						        <span>BUY NOW</span>
						    </span>
</div>
                    </div>
</div>

                </div>
				

				
								<!-- 여기까지 작성 --> <!-- ============================== [[ Body  section]] ==============================-->

				<!-- =============================  [[ Footer section ]]  ============================= -->

				<%@ include file="../include/footer.jsp"%>

			
							</div>
		</div>
	</div>
	<!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>