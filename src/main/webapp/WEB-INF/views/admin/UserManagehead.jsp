
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
<style>

html,
body {
    height: 120%;
    margin: 0;
    padding: 0;
     z-index: 2; 

}



.frame-container iframe {
    width: 45%;
    height: auto;
    border: none;
    z-index: 2;
}

.frame-container iframe:nth-child(2) {
    margin-left: 5%; /* Gender.jsp와의 간격 조절 */
    z-index: 2; /* z-index 적용 */
}




.spacing {
    height: 10px;
    z-index: 2; /* z-index 적용 */
}

.content {
    display: flex;
    justify-content: center;
    align-items: center;
    background: linear-gradient(180deg, rgba(228, 220, 207, 1) 0%, rgba(245, 240, 187, 1) 38%, rgba(125, 157, 156, 1) 100%);
    height: calc(100% + 100px); /* header 높이 고려하여 계산 */
    z-index: 2; /* z-index 적용 */
}

.frame-container {
    display: flex;
    justify-content: space-between;
    width: 80%;
    height: 100%;
    z-index: 2;
}


.check {
    margin-top: -50%; /* 버튼을 위로 이동 */
    margin-left: 10%;
    width: 20%;
    justify-content: space-around;
    z-index: 2; /* z-index 적용 */
}


        }
    </style>
</head>
<body>


<header>
    <nav class="navbar">
        <div class="navbar__logo">
            
            <a href="manager.do">
    <img src="./images/CompanyLogo.png" alt="로고" style="width: 82.2px; margin-top:45.2px; margin-left: 38.5px;">
</a>
        </div>
                <ul class="navbar__menu">
            <li><a href="manager.do">회원관리</a></li>
            <li><a href="productmanager.do">상품관리</a></li>
            <li><a href="totalmanager.do">매출</a></li>
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

<div class="content">

    <div class="frame-container" >
        <iframe src="day" frameborder="0" style="width: 60%; margin-top: 50px;z-index: 3;"></iframe>
        <iframe src="chart" frameborder="0" style="position: absolute; left: calc(70% - 70px); width: calc(20% - 30px); height: 50%; margin-top: 90px;"></iframe>
    </div>
    <iframe src="table" frameborder="0" style="position: absolute; width: 90%; height: 45%; margin: 600px auto 5px; align-items: center; z-index: 9999;"></iframe>
</div>



</body>
</html>
