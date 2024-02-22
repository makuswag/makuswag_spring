<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
 body {
            font-size: 14px; /* 기본 폰트 크기 */
        }
 @media screen and (max-width: 768px) {
            /* 화면 너비가 768px 이하일 때 적용되는 스타일 */
            /* 예시: 너비가 축소되면 폰트 크기를 줄입니다. */
            body {
                font-size: 14px;
            }
        }



* {
    z-index: 3;
}
#managerFrame {
    width: 100%;
    height: 100%;
}
</style>
</head>
<body>

<button id="DayButton">일별</button>
<button id="MonthButton">월별</button>
<button id="YearButton">연별</button>
<script>
    // 세션에서 가져온 labels와 data 데이터가 null인지 확인
    // JSON 형식의 데이터를 JavaScript 변수에 할당
    
    // JSON 형식의 데이터를 JavaScript 변수에 할당
    
    // 일별 버튼 클릭 이벤트 리스너
    document.getElementById('DayButton').addEventListener('click', function() {
        console.log('일별 버튼 클릭');
        // Manager.jsp에 있는 iframe의 src 변경
        const managerIframe = document.getElementById('managerFrame');
        if (managerIframe) {
            managerIframe.src = "Managerday";
        } else {
            console.error("Manager.jsp iframe을 찾을 수 없습니다.");
        }
    });
   
    // 월별 버튼 클릭 이벤트 리스너
    document.getElementById('MonthButton').addEventListener('click', function() {
        console.log('월별 버튼 클릭');
        // Manager.jsp에 있는 iframe의 src 변경
        const managerIframe = document.getElementById('managerFrame');
        if (managerIframe) {
            managerIframe.src = "ManagerMonth";
        } else {
            console.error("Manager.jsp iframe을 찾을 수 없습니다.");
        }
    });

    // 연별 버튼 클릭 이벤트 리스너
    document.getElementById('YearButton').addEventListener('click', function() {
        console.log('연별 버튼 클릭');
        // Manager.jsp에 있는 iframe의 src 변경
        const managerIframe = document.getElementById('managerFrame');
        if (managerIframe) {
            managerIframe.src = "ManagerYear";
        } else {
            console.error("Manager.jsp iframe을 찾을 수 없습니다.");
        }
    });
</script>

<iframe id="managerFrame" src="" frameborder="0" style="width: 100%; height: 500px;"></iframe>
</body>
</html>
