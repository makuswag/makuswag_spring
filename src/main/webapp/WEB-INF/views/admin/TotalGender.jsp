<%@page import="java.util.List"%>
<%@page import="com.springlec.base.model.AdminDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Total Gender Chart</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <div class="chart-container">
        <canvas id="myChart"></canvas>
    </div>

    <%
        // totalgenderList에서 각 성별의 총 구매 가격을 가져와서 labels와 data 배열에 저장
        List<AdminDto> totalgenderList = (List<AdminDto>) request.getAttribute("totalgenderList");
        StringBuilder labels = new StringBuilder();
        StringBuilder data = new StringBuilder();

        for (AdminDto dto : totalgenderList) {
            labels.append("'").append(dto.getProGender()).append("',");
            data.append(dto.getTotal_pPrice()).append(",");
        }
    %>

    <script>
        // labels와 data 배열을 JavaScript 변수로 변환
        const labels = [<%= labels %>];
        const data = [<%= data %>];

        // 차트 생성
        const ctx = document.getElementById('myChart').getContext('2d');
        new Chart(ctx, {
            type: 'pie',
            data: {
                labels: labels,
                datasets: [{
                    label: 'Total Purchase Price by Gender',
                    data: data,
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.5)',
                        'rgba(54, 162, 235, 0.5)',
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
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
                    title: {
                        display: true,
                        text: 'Gender ratio of buyers'
                    }
                }
            }
        });
    </script>
</body>
</html>
