
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


