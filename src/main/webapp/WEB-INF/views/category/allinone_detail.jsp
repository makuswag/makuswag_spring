<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>MakUSwag</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Bootstrap JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./css/bootstrap.css">
    <link rel="stylesheet" href="./css/slick.css">
    <link rel="stylesheet" href="./css/slick2.css">
    <link rel="stylesheet" href="./css/all.css">
    <link rel="stylesheet" href="./css/all2.css">
    <!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
    <link rel="icon" href="./images/CompanyLogo.png">
    <script type="text/javascript" src="./js/slick.js"></script>
    <style>
    .product-name h2 {
    margin-bottom: 5px; /* 제목과 가격 사이의 간격을 조정합니다. */
    top:20px;
}

.product-price {
    margin-top: 5px; /* 가격과 다음 요소 사이의 간격을 조정합니다. */
    top:20px;
}
.product-images img {
    display: block;
    width: 100%;
    height: auto;
}
.product-description {
   position: relative;
   top:-50px;
}
        /* 네모로 변경할 스타일 */
        body {
            font-family: 'Avenir Next', 'KoPub Dotum', sans-serif;
            font-weight: 400;
            font-style: normal;
            line-height: 1.65;
        }

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

        .nav-button:hover {
            background-color: lightgray; /* 마우스를 올렸을 때 배경색 변경 */
            cursor: pointer; /* 커서 모양 변경 */
            font-weight: bold; /* 마우스를 올렸을 때 볼드체 스타일 적용 */
        }

        h2 {
            display: block;
            font-size: 1.5em;
            margin-block-start: 0.83em;
            margin-block-end: 0.83em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            font-weight: bold;
        }

        .tile .product-image {
            margin-bottom: 30px;
            position: relative;
            width: 100%;
            height: 0;
            padding-top: 125%;
            overflow: hidden;
        }

        .tile .product-image img {
            width: 100%;
            height: auto;
            position: absolute;
            top: 0;
            left: 0;
            transition: opacity 0.15s ease-out;
        }

        .tile .product-image .secondary-image, .tile:hover .product-image .primary-image {
            opacity: 0;
        }

        .xans-element- .pagination ul {
            text-align: center !important;
        }

        .xans-element- .pagination li {
            display: inline-block;
            margin-right: 5px;
        }


        .tile .product-info {
            font-size: 11px;
            margin-top: 12px;
        }

.product-essential {
    line-height: 1.4;
    width: 300px;
    position: fixed; /* 화면 상단에 고정 */
    top: -50px; /* 원하는 높이로 조정 */
    right: 50px; /* 원하는 위치로 조정 */
    font-weight: 700;
}
.product-essential .product-name h2, .product-essential .product-price {
    font-size: 18px;
}
.product-essential .product-description span:first-child {
    color: inherit !important;
    display: block;
    white-space: pre;
    margin-bottom: 20px;
}
.product-essential .product-description .more-info span {
    display: inline-block;
    cursor: pointer;
    text-transform: uppercase;
    font-size: 13px;
    margin-right: 7px;
}
.product-essential .product-description {
    color: #0e3773;
    margin: 50px 0;
}
.product-essential .product-description span:first-child {
    color: inherit !important;
    display: block;
    white-space: pre;
    
}
.product-description{
	margin-left: 200px;
	top: 100%;
	z-index: 100;

}


.single-product {
    position: relative;
    width: 50%;
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
			
			


<!--
    $category_page = /product/list.html
    $project_page = /product/project.html
    $jointbuy_page = /product/jointbuy.html
-->

<div class="single-product">

	<div class="xans-element- xans-product xans-product-image product-images">
	<div class="slide "><img src="${pageContext.request.contextPath}/images/admin/${allinone_detail.proImage1}" class="primary-image" alt="${detailDto.proName}"></div>
	<div class="slide "><img src="${pageContext.request.contextPath}/images/admin/${allinone_detail.proImage2}" class="primary-image" alt="${detailDto.proName}"></div>
	<div class="slide "><img src="${pageContext.request.contextPath}/images/admin/${allinone_detail.proImage3}" class="primary-image" alt="${detailDto.proName}"></div>
</div>
</div>
                <div class="product-essential"style="top: 15%;">
                
                    <div class="xans-element- xans-product xans-product-detail product-info sidebar">
                        <div class="product-name">
                            <h2>${allinone_detail.proName}</h2>
                        </div>
                        <div class="product-price" data-price-was="0.00" data-price-now="68000" data-stock>
                            <span class="price-now">${allinone_detail.proPrice}KRW<br><br><br></span>
                        </div>
                     <div class="product-description" style="margin-left: -40px; margin-top: 0px !important;">
                      
    <span style="font-size:12px;color:#555555; line-height: 1; padding-left: 40px;">

		${allinone_detail.proIntroduction }
    </span>
<div class="more-info" style="margin-left: 35px; padding-left: 10px; ">
    <span class="sizeguide-button" style="display: inline-block; margin-right: 10px;">Size Guide</span>
    <span class="checklist-button" style="display: inline-block;">Check List</span>
</div>
</div>


                        </div>
                        <div class="xans-element- xans-product xans-product-detaildesign product-meta">
                            <ul>
                                <li class=" xans-record-">
                                <li class=" xans-record-">
                                    <span style="font-size:12px;color:#008BCC;font-weight:bold;"></span>
                                </li>	
                            </ul>
                        </div>
                        <div class="xans-element- xans-product xans-product-action product-actions" id="productActions" style="margin-top: -20px;">
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

                <!-- 여기서 부터 작성 -->



                <%@ include file="include/footer.jsp"%>

</div>

        <!-- =============================  [[ Footer section ]]  ============================= -->
  <script>
        var stockQuantity = ${allinone_detail.proQty}; // 상품의 재고량
        var soldOutButton = document.querySelector('.sold-out');
        var buyNowButton = document.querySelector('.buy-now');

        // 재고량이 0 이하일 경우 "SOLD OUT" 표시
        if (stockQuantity <= 0) {
            soldOutButton.classList.remove('displaynone');
        } 
        // 재고량이 1 이상일 경우 "BUY NOW" 표시
        else {
            buyNowButton.classList.remove('displaynone');
        }
    </script>
    </body>
    </html>
