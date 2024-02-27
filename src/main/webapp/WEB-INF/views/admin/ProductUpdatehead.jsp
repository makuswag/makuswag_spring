<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/3624917c4f.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/style1.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <script src="./js/main.js" defer></script>
</head>
<body>


<header>
    <nav class="navbar">
        <div class="navbar__logo">
            
            <a href="manager1">
    <img src="./images/CompanyLogo.png" alt="로고" style="width: 82.2px; margin-top:45.2px; margin-left: 38.5px;">
</a>
        </div>
                <ul class="navbar__menu">
            <li><a href="manager1">회원관리</a></li>
            <li><a href="productmanager">상품관리</a></li>
            <li><a href="totalmanager">매출</a></li>
            <li><a href="#">게시판관리</a></li>
            <li><a href="logout.do">로그아웃</a></li>
            
        </ul>
        <ul class="navbar__links">
            <li><a href="https://www.youtube.com/channel/UCNzODSZC2sraPyh4lDMQhpQ?view_as=subscriber"><i class="fab fa-youtube"></i></a></li>
            <li><a href="https://www.instagram.com/faderoom_official/"><i class="fab fa-instagram"></i></a></li>
        </ul>

        <a href="#" class="navbar__toggleBtn"><i class="fas fa-bars"></i></a>
    </nav>
</header>

</body>
</html>
