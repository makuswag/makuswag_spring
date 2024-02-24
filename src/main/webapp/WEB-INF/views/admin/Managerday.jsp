
<%@page import="com.springlec.base.model.AdminDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manager Day</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <canvas id="myChart"></canvas>

    <%
    List<AdminDto> managerDayList = (List<AdminDto>) request.getAttribute("managerDayList");
    %>

    <script>
        var labels = [];
        var data = [];
        <%for (AdminDto dto : managerDayList) {%>
            labels.push("<%= dto.getDay() %>"); 
            data.push(<%= dto.getCount() %>); // dto.getCount()는 카운트를 가져오는 메서드입니다.
        <% } %>

        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                    label: 'Daily registration date',
                    data: data,
                    backgroundColor: 'rgba(54, 162, 235, 0.5)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                maintainAspectRatio: false,
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
