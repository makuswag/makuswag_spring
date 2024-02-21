<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
<%
    String url_mysql = "jdbc:mysql://localhost/charttest?serverTimezone=Asia/Seoul&characterEncoding=utf-8&useSSL=false";
    String id_mysql = "root";
    String pw_mysql = "qwer1234";
    String query = "select subject, score from school";

    // 데이터를 저장할 ArrayList 생성
    ArrayList<String> labels = new ArrayList<>();
    ArrayList<Integer> data = new ArrayList<>();
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
        Statement stmt_mysql = conn_mysql.createStatement();
        ResultSet rs = stmt_mysql.executeQuery(query);

        // ResultSet에서 데이터 추출하여 ArrayList에 추가
        while (rs.next()) {
            labels.add(rs.getString(1));
            data.add(rs.getInt(2));
        }

        conn_mysql.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<div>
    <canvas id="myChart" width="600" height="600"></canvas>
</div>

<script>
    // JSP에서 받아온 labels와 data 데이터를 JavaScript 배열에 할당
    const labels = <%= new Gson().toJson(labels) %>;
    const data = <%= new Gson().toJson(data) %>;

    // 차트 생성
    const ctx = document.getElementById('myChart');
    new Chart(ctx, {
        type: 'pie',
        data: {
            labels: labels, // 과목명으로 labels 설정
            datasets: [{
                label: '# of Votes',
                data: data, // 점수로 data 설정
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
