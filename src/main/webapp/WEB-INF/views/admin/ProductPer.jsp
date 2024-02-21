<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pie Chart</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        .chart-container {
    width: 113%;
    height: 80vh; /* 차트 컨테이너의 높이 설정 */
    margin-right: 20px;
    margin-left: -10%;

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
    ArrayList<String> labels5 = (ArrayList<String>) session.getAttribute("labels5");
    ArrayList<Integer> data6 = (ArrayList<Integer>) session.getAttribute("data6"); 
%>

<script>
    // JSON 형식의 데이터를 JavaScript 변수에 할당
    const labels5 = <%= new Gson().toJson(labels5) %>;
    const data6 = <%= new Gson().toJson(data6) %>;

    // 전체 판매 갯수 계산
    const totalQuantity = data6.reduce((acc, cur) => acc + cur, 0);

    // 각 상품의 판매 비율 계산 및 퍼센트로 변환
    const percentages = data6.map(quantity => ((quantity / totalQuantity) * 100).toFixed(2) + '%');

    // 차트 생성
    const ctx = document.getElementById('myChart').getContext('2d');
    new Chart(ctx, {
        type: 'pie',
        data: {
            labels: labels5,
            datasets: [{
                label: '상품별 판매 비율',
                data: data6,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            responsive: false,
            plugins: {
                tooltip: {
                    callbacks: {
                        label: function(context) {
                            var label = context.label || '';
                            var value = context.parsed || 0;
                            var percentage = (value / totalQuantity) * 100;
                            percentage = parseFloat(percentage).toFixed(2);
                            return label + ': ' + value + ' (' + percentage + '%)';
                        }
                    }
                },
                title: {
                    display: true,
                    text: '상품별 판매 비율',
                    position: 'top'
                }
            }
        }
    });
</script>
</body>
</html>