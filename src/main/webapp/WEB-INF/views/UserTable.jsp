<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX MySQL Table Query1</title>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
#searchContainer {
    position: fixed;
    top: 0;
    left: 0;
    width: 70%;
    background-color: linear-gradient(180deg, rgba(228, 220, 207, 1) 0%, rgba(245, 240, 187, 1) 38%, rgba(125, 157, 156, 1) 100%);
    padding: 10px;
    z-index: 2;
    margin-top: 1%;
}

#result {
    margin-top: 50%;
    overflow-y: auto;
    max-height: calc(100vh - 200px);
    width: 70%;
    margin: 0 auto 0;
    padding: 0;
    box-sizing: border-box;
}

#result table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 4%;
}

#result th, #result td {
    border: 1px solid #dddddd;
    padding: 8px;
    text-align: center;
}

#result th {
    background-color: #f2f2f2;
}

#result td {
    background-color: #ffffff;
}

#result tr:nth-child(even) {
    background-color: #f2f2f2;
}
</style>
</head>
<body>
    <div id="searchContainer">
        <input type="text" id="name" placeholder="성명 입력">
         <input type="text" id="joinDatepicker" placeholder="가입날짜 선택">
        <input type="text" id="leaveDatepicker" placeholder="탈퇴날짜 선택">
        <button id="queryButton">검색</button>
    </div>
    <div id="result"></div>
    <script src="js/queryTable.js"></script>
    <script>
        $(function() {
        	 $("#joinDatepicker").datepicker(); // 가입날짜 캘린더 초기화
             $("#leaveDatepicker").datepicker(); // 탈퇴날짜 캘린더 초기화

            // 검색 버튼 클릭 시 결과 영역의 높이를 조절
            $('#queryButton').click(function() {
                adjustResultHeight();
            });

            // 페이지 로드 시 테이블 결과 영역의 높이를 조절
            adjustResultHeight();

            // 윈도우 크기가 변경될 때 테이블 결과 영역의 높이를 다시 조절
            $(window).resize(adjustResultHeight);
        });

        // 테이블 결과 영역의 높이를 조절하는 함수
        function adjustResultHeight() {
            var windowHeight = $(window).height();
            var searchContainerHeight = $('#searchContainer').outerHeight();
            var resultHeight = windowHeight - searchContainerHeight;
            $('#result').css('max-height', resultHeight + 'px');
        }
    </script>
</body>    
</html>