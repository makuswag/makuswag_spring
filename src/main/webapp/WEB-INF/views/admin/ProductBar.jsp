<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product Bar Chart</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <div class="chart-container">
        <canvas id="myChart"></canvas>
    </div>

    <%
        List<com.springlec.base.model.AdminDto> productList = (List<com.springlec.base.model.AdminDto>) request.getAttribute("productList");
        StringBuilder labels = new StringBuilder("[");
        StringBuilder data = new StringBuilder("[");
        for (com.springlec.base.model.AdminDto item : productList) {
            labels.append("\"").append(item.getProName()).append("\",");
            data.append(item.getTotalQty()).append(",");
        }
        labels.setCharAt(labels.length() - 1, ']');
        data.setCharAt(data.length() - 1, ']');
    %>

    <script>
        var labels = <%= labels.toString() %>;
        var data = <%= data.toString() %>;

        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                    label: 'Product inventory quantity',
                    data: data,
                    backgroundColor: 'rgba(54, 162, 235, 0.5)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
</body>
</html>
