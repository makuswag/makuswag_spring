<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Product Details</h1>

<div>
    <h2>Product Name: ${detailDto.proName}</h2>
    <p>Product Price: ${detailDto.proPrice}원</p>
    <!-- 기타 제품 정보들을 여기에 추가 -->
</div>
</body>
</html>