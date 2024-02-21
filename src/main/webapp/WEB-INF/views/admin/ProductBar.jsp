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
    height: 80vh; /* 차트 컨테이너의 높이 설정 */
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
	
    ArrayList<String> labels4 = (ArrayList<String>) session.getAttribute("labels4");
    ArrayList<Integer> data5 = (ArrayList<Integer>) session.getAttribute("data5"); 
  
%>

<script>
    // JSON 형식의 데이터를 JavaScript 변수에 할당
    const labels = JSON.parse('<%= new Gson().toJson(labels4) %>');
    const data = JSON.parse('<%= new Gson().toJson(data5) %>');

    // 차트 생성
    const ctx = document.getElementById('myChart');
    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels, // 제품 이름을 라벨로 설정
            datasets: [{
                label: '상품 재고량', // 데이터셋의 라벨 설정
                data: data, // 제품별 총 수량을 데이터로 설정
                backgroundColor: 'rgba(54, 162, 235, 0.5)', // 막대 색상 설정
                borderColor: 'rgba(54, 162, 235, 1)', // 막대 테두리 색상 설정
                borderWidth: 1 // 막대 테두리 두께 설정
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true // y 축의 값이 0부터 시작하도록 설정
                }
            }
        }
    });
</script>
</body>
</html>