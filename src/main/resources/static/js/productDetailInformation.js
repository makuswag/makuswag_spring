//*****************productDetailInformation.jsp에서 아래의 jsv파일 중 ${productDetailInformation.proQty}값을불러오지 못해서 일시 중단 */
	
	console.log("상품 상세페이지 js 실행됨")

var stockQuantity = "${productDetailInformation.proQty}"; // 상품의 재고량
 		console.log("상품수량",stockQuantity)
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
        
        
//상품옵션 선택할때 (색상,옵션)밑의 updateSelectedLabel함수를 호출함
function updateSelectedOption(selectId) {
	console.log("상품 상세페이지 js 실행됨")
    var selectedColor = document.getElementById("colorSelect").value;
    var selectedSize = document.getElementById("sizeSelect").value;
    
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
    var productName = '${allinone_detail.proName}';
    document.getElementById('selectedSize').innerText = '선택된 사이즈: ';
    document.getElementById('selectedColor').innerText = '선택된 컬러: ' + productName;
}, 100); // 0.1초 후에 애니메이션 시작 // 0.1초 후에 애니메이션 시작
});