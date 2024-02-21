<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AAA Page</title>
</head>
<body>

<h1>AAA Page</h1>

<c:forEach items="${list}" var="dto">
    <div>
        <p>상품명: ${dto.proName}</p>
        <p>가격: ${dto.proPrice}</p>
        <img src="${pageContext.request.contextPath}/images/${dto.proImage1}" alt="상품 이미지">
    </div>
</c:forEach>

</body>
</html>