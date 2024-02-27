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
/* 네모로 변경할 스타일 */
body {
    font-family: 'Avenir Next','KoPub Dotum',sans-serif;
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

.xans-element- .pagination li a {
    display: block;
    padding: 5px 10px;
    background-color: white;
    border: 1px solid black;
    cursor: pointer;
}

.xans-element- .pagination li a.active {
    font-weight: bold;
}

.xans-element- .pagination li a:hover {
    background-color: lightgray;
}

.tile .product-info {
    font-size: 11px;
    margin-top: 12px;
}

</style>
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


            <!-- 여기서 부터 작성 -->
            <div class="main">

                <!-- 여기서 부터 작성 -->
            <div class="xans-element- xans-product xans-product-menupackage catalog-header ">
            <div class= "xans-element- xans-product xans-product-headcategory category-title">
            <h2>All-in-one</h2>
            </div>
            <div class="catalog-nav">
                <div class="xans-element- xans-product xans-product-headcategory categories">
                    <span class="item">
                        <a href="#">All</a>
                    </span>    
                    <span style="display: ;" class="xans-element- xans-product xans-product-displaycategory item  xans-record-">
                        <a href="#">Jump Suit</a>
                    </span>
                    <span style="display: ;" class="xans-element- xans-product xans-product-displaycategory item  xans-record-">
                        <a href="#">Overalls</a>
                    </span>
                </div> 
            </div>
        </div>
        <div class="xans-element- xans-product xans-product-normalpackage catalog">
    <div class="xans-element- xans-product xans-product-listnormal">
        <div class="product-tiles">
            <c:forEach items="${listPerPage}" var="dto">
                <div class="tile xans-record-">
                    <a href="allinone_detail?product=${dto.proName}">  
                        <div class="product-image">
                            <img src="${pageContext.request.contextPath}/images/admin/${dto.proImage1}" class="primary-image" alt="${dto.proName}">
                            <img src="${pageContext.request.contextPath}/images/admin/${dto.proImage2}" class="secondary-image" alt="${dto.proName}">
                        </div>
                        <div class="product-name"><span style="font-size:12px;color:#555555;">${dto.proName}</span></div>
                        <div class="product-price" data-price-was="" data-price-now="${dto.proPrice}" data-stock=""></div>
                        <div class="product-info"></div>
                        <ul class="xans-element- xans-product xans-product-listitem product-meta">
                            <li class="xans-record-"><span style="font-size:12px;color:#555555;">Free / 1 Color</span></li>
                            <li class="xans-record-"><span style="font-size:12px;color:#555555;">${dto.proPrice}원</span><span id="span_product_tax_type_text" style=""></span></li>
                        </ul>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<div class="xans-element- xans-product xans-product-normalpaging pagination" style= "margin-left: 48%; align-content: center" >
    <ul style="text-align: center;">
        <c:forEach begin="1" end="${totalPages}" varStatus="status">
            <li style="display: inline-block;"><a href="?page=${status.index}" class="nav-button ${status.index == currentPage ? 'bold;' : 'normal;'}" style="font-weight: ${status.index == currentPage ? '700;' : '200;'}">${status.index}</a></li>
        </c:forEach>
    </ul>
</div>

<script>

$('.bestseller-tiles').slick({
    arrows: false,
    dots: true,
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3,
    responsive: [
    {
        breakpoint: 1200,
        settings: {
            slidesToShow: 2,
            slidesToScroll: 2
        }
    }
    ]
});

function priceNumber(number) {
    var parts = number.toString().split(".");
        parts[0] = parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    return parts.join(".");
}

$(document).ready(function(){

    $('.tile').each(function(){
        
        // Product Price

        var raw_price = Math.floor($(this).find('.product-price').attr('data-price-now')),
            price = priceNumber(raw_price),
            raw_price_was = $(this).find('.product-price').attr('data-price-was'),
            price_was = priceNumber(Math.floor(raw_price_was)),
            stock = $(this).find('.product-price').attr('data-stock');
            
        if ($(this).find('.product-meta li').length > 2) {
            price_was = price;
            price = $(this).find('.product-meta li:last-child span').text().replace('원', '');
        }
        
        // if (price == price_was || price_was == 0 || !raw_price_was) {
        if (price == price_was || price_was == 0) {
            $(this).find('.product-price').html('<span class="price-now">' + price + ' KRW</span>');
        } else {    
            $(this).find('.product-price').html('<span class="price-was">' + price_was + '</span><span class="price-now">' + price + ' KRW</span>');
        }
        
        // Product Info
        
        var info = $(this).find('.product-meta li:eq(0) > span').text();
        $(this).find('.product-info').text(info);
        
    });

});

</script>
                

                <%@ include file="../include/footer.jsp"%>

            </div>
        </div>
    </div>
    <!-- =============================  [[ Footer section ]]  ============================= -->

</body>
</html>
