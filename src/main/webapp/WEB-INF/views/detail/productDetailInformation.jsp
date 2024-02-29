<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<!-- css파일 -->
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
							<img
								src="${pageContext.request.contextPath}/images/product/${productDetailInformation.proImage1}"
								class="primary-image"><br><br>
						</div>
						<div class="slide ">
							<img
								src="${pageContext.request.contextPath}/images/product/${productDetailInformation.proImage2}"
								class="primary-image""><br><br>
						</div>
						<div class="slide ">
							<img
								src="${pageContext.request.contextPath}/images/product/${productDetailInformation.proImage3}"
								class="primary-image""><br><br>
						</div>
					</div>
				</div>
				<div class="product-essential" style="top: 20%;">
				
					<div
						class="xans-element- xans-product xans-product-detail product-info sidebar">
						<div class="product-name">
							<h2>${productDetailInformation.proName}</h2>
						</div>
						<div class="product-price" data-price-was="0.00"
							data-price-now="68000" data-stock>
							<span class="price-now">${productDetailInformation.proPrice} KRW<br>
								<br> <br></span>
						</div>
						<div class="product-description"
							style=" margin-top: 0px !important;">

							<span
								style="font-size: 12px; color: #555555; line-height: 1;">

								<br>${productDetailInformation.proIntroduction } </span>
						</div>

					</div>
					<div
						class="xans-element- xans-product xans-product-detaildesign product-meta">
						<ul>
							<li class=" xans-record-">
							<li class=" xans-record-"><span
								style="font-size: 12px; color: #008BCC; font-weight: bold;"></span>
							</li>
						</ul>
					</div>
					<div
						class="xans-element- xans-product xans-product-action product-actions"
						id="productActions" style="margin-top: 80px;">
						<span class="primary-button sold-out displaynone"> <span>SOLD
								OUT</span>
						</span> <span class="primary-button buy-now displaynone"> <span>BUY
								NOW</span>
						</span>
					</div>
				</div>
			</div>

		</div>

		<!-- 팝업에 표시할 내용 -->
		<div class="popup-content"
			style="display: none; align-content: center;">
			
			<div class="close-button" onclick="closePopup()">X</div> <!-- 우측 상단에 닫기 버튼 -->
			<div class = "product-name">
			<h2>${productDetailInformation.proName}</h2><br><br>
			</div>
			<div
				class="xans-element- xans-product xans-product-option product-options xans-record-">
				<ul
					class="xans-element- xans-product xans-product-option xans-record-">
					<li>
						<div class="option-label"
							style="font-weight: 900; font-size: 18px; font-style: italic; font-family: 'Avenir Next', 'KoPub Dotum', sans-serif;">Colors</div>
						<div class="option-value">
							<span class="select-field"> <select id="colorSelect"
								style="width: 350px;"
								onchange="updateSelectedOption('colorSelect')">
									<option value="" selected>-[필수]색상을 선택해 주세요-</option>
									<option value="" disabled="disabled">---------------------</option>
									<!-- colors 변수를 반복하여 옵션을 추가 -->
									<c:forEach var="color" items="${colors}" varStatus="status">
										<option value="${color}">${color}</option>
									</c:forEach>
							</select>
							</span>
						</div>
					</li>
					<li><br>
						<div class="option-label"
							style="font-weight: 900; font-size: 18px; font-style: italic;">Size</div>
						<div class="option-value">
							<span class="select-field"> <select id="sizeSelect"
								style="width: 350px;"
								onchange="updateSelectedOption('sizeSelect')">
									<option value="" selected>-[필수]사이즈를 선택해 주세요-</option>
									<option value="" disabled="disabled">---------------------</option>
									<option value="FREE">FREE</option>
									<!-- 수정된 부분 -->
							</select><br>
							</span>
						</div></li>
				</ul>
			</div>
			
			
			
			
			
			
			
			
			
			<!-- 선택한 사이즈와 컬러를 표시할 영역 -->
			<div id="selectedSizeAndColor" style="margin-top: 20px;">
				<p id="selectedSize"></p>
				<p id="selectedColor"></p>
				<div class="purchase-action">
				<a class="primary-button buy-now" onclick="submitPurchaseForm()" ><span id="btnBuy">BUY NOW</span></a>
				<a href="#none" class="primary-button buy-now " onclick="product_submit(1, '/exec/front/order/basket/', this)"><span id="btnBuy">CART</span></a>
				</div>
			</div>
		</div>
<!-- 추후에 js파일로 이동시켜서 구현예정(지금 ${productDetailInformation.proQty}이 값을 js파일에서 받아오지 못해서 버튼 display함수가 먹히지 않음 -->
<!--*****************************************js코드*************************************************-->
<script>
//상품옵션 선택할때 (색상,옵션)밑의 updateSelectedLabel함수를 호출함
function updateSelectedOption(selectId) {
    var selectedColor = document.getElementById("colorSelect").value;
    var selectedSize = document.getElementById("sizeSelect").value;
    console.log("색상 값 확인",selectedColor,selectedSize);
    updateSelectedLabel(selectedColor, selectedSize); // 선택된 옵션에 따라 라벨 업데이트
}
//상품선택시,라벨을 업데이트 함
function updateSelectedLabel(selectedColor, selectedSize) {
    var colorText = (selectedColor !== "") ? selectedColor : "-[필수]색상을 선택해 주세요-";
    var sizeText = (selectedSize !== "") ? selectedSize : "-[필수]사이즈를 선택해 주세요-";
    
    document.getElementById("selectedColor").innerText = colorText;
    document.getElementById("selectedSize").innerText = sizeText;
    
    var label = document.getElementById("selectedSizeAndColor");
    if (colorText !== "-[필수]색상을 선택해 주세요-" && sizeText !== "-[필수]사이즈를 선택해 주세요-") {
        label.innerHTML = "<p>선택한 사이즈: " + sizeText + "</p><p>선택한 컬러: " + colorText + "</p>";
    } else {
        label.innerHTML = "";
    }
}
        var stockQuantity = ${productDetailInformation.proQty}; // 상품의 재고량
        console.log("상품수량(jsp페이지) :",stockQuantity);
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
//BUY NOW 버튼 클릭 시 모달 창 표시
$('.buy-now').on('click', function() {
    var overlay = document.createElement('div');
    overlay.classList.add('overlay');
    document.body.appendChild(overlay);

    var popup = document.createElement('div');
    popup.classList.add('popup');

    // 팝업에 내용을 추가하는 부분 수정
    var popupContent = $('.popup-content').html();
    popup.innerHTML = popupContent;

    // 모달 창에 추가
    document.body.appendChild(popup);

    // 요소를 추가한 직후에 클래스를 추가하여 애니메이션 효과 시작
setTimeout(function() {
    overlay.classList.add('show');
    popup.classList.add('show');
    // 팝업이 표시된 후에 값을 가져옴
    var productName = '${productDetailInformation.proName}';
    document.getElementById('selectedSize').innerText = '선택된 사이즈: ';
    document.getElementById('selectedColor').innerText = '선택된 컬러: ' + productName;
}, 100); // 0.1초 후에 애니메이션 시작 // 0.1초 후에 애니메이션 시작
});

function submitPurchaseForm() {
    var form = document.createElement('form');
    form.method = 'POST';
    form.action = 'productPurchaseSubmit'; // 해당 URL로 변경

    // 필요한 input 등을 form에 추가
    // ...

    document.body.appendChild(form);
    form.submit();
 // "구매 완료되었습니다." 알림 추가
    alert('구매 완료되었습니다.');
}    
function closePopup() {
    var overlay = document.querySelector('.overlay');
    var popup = document.querySelector('.popup');

    // 오버레이와 팝업을 숨깁니다.
    overlay.classList.remove('show');
    popup.classList.remove('show');

    // 오버레이와 팝업을 제거합니다.
    overlay.parentNode.removeChild(overlay);
    popup.parentNode.removeChild(popup);
}

document.querySelector('.close-button').addEventListener('click', function() {
    closePopup();
});



</script>
<!--*****************************************js코드*************************************************-->

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