<%@page import="com.google.gson.Gson"%>
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
<div class="chart-container">
    <div class="canvas-container">
        <canvas id="myChart"></canvas>
    </div>
</div>

<%
    ArrayList<String> labels = (ArrayList<String>) session.getAttribute("labels");
    ArrayList<Integer> data = (ArrayList<Integer>) session.getAttribute("data");
  
%>
<script>
    const labels = JSON.parse('<%= new Gson().toJson(labels) %>');
    const data = JSON.parse('<%= new Gson().toJson(data) %>');

    // 차트 생성
    const ctx = document.getElementById('myChart');
    const chart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: labels, // 과목명으로 labels 설정
            datasets: [{
                label: '일 매출',
                data: data, // 점수로 data 설정
                borderWidth: 1
            }]
        },
        options: {
            maintainAspectRatio: true, // 차트 비율 유지
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
