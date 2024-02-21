<%@page import="java.util.ArrayList"%>
<%@page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
body, html {
    height: 100%;
    margin: 0;
    padding: 0;
}

.chart-container {
    width: 100%;
    height: 80vh; /* 부모 요소의 80% 높이를 사용할 수도 있습니다. */
}

.canvas-container {
    width: 100%;
    height: 100%;
}

canvas {
    width: 100%;
    height: 100%;
}
</style>
</head>
<body>
<div>
    <canvas id="myChart"></canvas>
</div>
<%
    ArrayList<String> labels2 = (ArrayList<String>) session.getAttribute("labels2");
    ArrayList<Integer> data3 = (ArrayList<Integer>) session.getAttribute("data3");
  
%>

<script>
    // 세션에서 가져온 labels와 data 데이터가 null인지 확인
    // JSON 형식의 데이터를 JavaScript 변수에 할당
    
    // JSON 형식의 데이터를 JavaScript 변수에 할당
    const labels = JSON.parse('<%= new Gson().toJson(labels2) %>');
    const data = JSON.parse('<%= new Gson().toJson(data3) %>');

    // 차트 생성
    const ctx = document.getElementById('myChart');
    new Chart(ctx, {
        type: 'line',
        data: {
            labels: labels, // 과목명으로 labels 설정
            datasets: [{
                label: '월 매출',
                data: data, // 점수로 data 설정
                borderWidth: 1
            }]
        },
        options: {
        	maintainAspectRatio: true,
            scales: {
                y: {
                    beginAtZero: true, // y축 기준값을 0으로 설정
                    stepSize: 5 // y축 간격을 5로 설정
                    
                }
            }
        }
    });
</script>
</body>
</html>