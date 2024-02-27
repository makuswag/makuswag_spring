<%@page import="java.util.List"%>
<%@page import="com.springlec.base.model.AdminDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Gender Chart</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <div class="chart-container">
        <div class="canvas-container">
            <canvas id="myChart"></canvas>
        </div>
    </div>

    <script>
        // 성별 비율 데이터
        var malePercentage = <%= request.getAttribute("malePercentage") %>;
        var femalePercentage = <%= request.getAttribute("femalePercentage") %>;

        var ctx = document.getElementById('myChart').getContext('2d');
        new Chart(ctx, {
            type: 'pie',
            data: {
                labels: ['남자', '여자'],
                datasets: [{
                    label: '성별 비율',
                    data: [malePercentage, femalePercentage],
                    backgroundColor: [
                        'rgba(54, 162, 235, 0.5)',
                        'rgba(255, 99, 132, 0.5)'
                    ],
                    borderColor: [
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 99, 132, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: true,
                        position: 'top'
                    },
                    tooltips: {
                        enabled: false
                    },
                    title: {
                        display: true,
                        text: 'Gender ratio of registrants',
                        position: 'top'
                    }
                }
            }
        });
    </script>
</body>
</html>
