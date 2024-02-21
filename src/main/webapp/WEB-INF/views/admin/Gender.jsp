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
    width: 120%;
    height: 80vh; /* 차트 컨테이너의 높이 설정 */
    margin-right: 20px;
    margin-left: -10%;
    
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
    ArrayList<String> labels1 = (ArrayList<String>) session.getAttribute("labels1");
    ArrayList<Integer> data1 = (ArrayList<Integer>) session.getAttribute("data1"); 
    ArrayList<Integer> data2 = (ArrayList<Integer>) session.getAttribute("data2");
  
    // JSON 형식으로 데이터를 만듭니다.
    String jsonData = new Gson().toJson(data1);
    String jsonData2 = new Gson().toJson(data2);
%>

<script>
    // JSON 형식의 데이터를 JavaScript 변수에 할당
    const labels1 = <%= new Gson().toJson(labels1) %>;
    const data1 = <%= jsonData %>;
    const data2 = <%= jsonData2 %>;

    // 성별 비율을 계산하여 데이터셋 생성
    const total = data1[1] + data2[0]; // 전체 인원 수 계산
    const malePercentage = (data1[1] / total) * 100; // 남성 비율 계산
    const femalePercentage = (data2[0] / total) * 100; // 여성 비율 계산

    // 차트 생성
    const ctx = document.getElementById('myChart');
    new Chart(ctx, {
        type: 'pie',
        data: {
            labels: ['남자', '여자'], // 세션에서 가져온 라벨 설정
            datasets: [{
                label: '성별 비율',
                data: [malePercentage, femalePercentage], // 비율 데이터 입력
                backgroundColor: [
                    'rgba(54, 162, 235, 0.5)',
                    'rgba(255, 99, 132, 0.5)'
                ],
                borderColor: [
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 99, 132, 1)'
                ],
                borderWidth: 1 // 선 제거
            }]
        },
        options: {
            maintainAspectRatio: 2,
            plugins: {
                legend: {
                    // 위치 설정 등 legend 옵션 추가
                },
                tooltips: {
                    enabled: false // 도구 팁 제거
                },
                title: {
                    display: true,
                    text: '가입자 성별 비율', // 제목 추가
                    position: 'top' // 제목 위치 설정
                }
            },
            scales: {
                x: {
                    display: false // x축 라벨과 축 라인 제거
                },
                y: {
                    display: false // y축 라벨과 축 라인 제거
                }
            }
        }
    });
</script>
</body>
</html>