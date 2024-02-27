<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AJAX MySQL Table Query1</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"> <!-- Font Awesome CDN 추가 -->
    <style>
         #searchForm {
            position: sticky;
            top: 0;
            z-index: 999;
            padding: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }    
    </style>
<script>
$(function() {
    $("#datepicker").datepicker({
        dateFormat: 'yy-mm-dd', // 날짜 형식을 년-월-일로 설정
        onSelect: function(dateText) { // 날짜를 선택할 때 이벤트 처리
            $("#content").val(dateText); // 선택한 날짜를 content 필드에 설정
        }
    });
    $("#active-datepicker").datepicker({
        dateFormat: 'yy-mm-dd', // 날짜 형식을 년-월-일로 설정
        onSelect: function(dateText) { // 날짜를 선택할 때 이벤트 처리
            $("#content").val(dateText); // 선택한 날짜를 content 필드에 설정
        }
    });
    $("#deactive-datepicker").datepicker({
        dateFormat: 'yy-mm-dd', // 날짜 형식을 년-월-일로 설정
        onSelect: function(dateText) { // 날짜를 선택할 때 이벤트 처리
            $("#content").val(dateText); // 선택한 날짜를 content 필드에 설정
        }
    });

    // 각 캘린더 아이콘 클릭 시 해당 캘린더 필드만 표시되도록 설정
    $("#birthday-icon").click(function() {
        $("#datepicker").datepicker("show");
    });

    $("#active-icon").click(function() {
        $("#active-datepicker").datepicker("show");
    });

    $("#deactive-icon").click(function() {
        $("#deactive-datepicker").datepicker("show");
    });

    // 옵션 선택 시에만 캘린더 보이도록 설정
    $("#query").change(function() {
        if ($(this).val() === "birthday") {
            $("#datepicker").show();
            $("#birthday-icon").show();
            $("#active-datepicker").hide();
            $("#active-icon").hide();
            $("#deactive-datepicker").hide();
            $("#deactive-icon").hide();
            $("#content").hide();
        } else if ($(this).val() === "active") {
            $("#datepicker").hide();
            $("#birthday-icon").hide();
            $("#active-datepicker").show();  
            $("#active-icon").show();  
            $("#deactive-datepicker").hide();
            $("#deactive-icon").hide();
            $("#content").hide(); // 수정된 부분
        } else if ($(this).val() === "deactive") {
            $("#datepicker").hide();
            $("#birthday-icon").hide();
            $("#active-datepicker").hide();
            $("#active-icon").hide();
            $("#deactive-datepicker").show();  
            $("#deactive-icon").show();  
            $("#content").hide(); // 수정된 부분
        } else {
            $("#datepicker").hide();
            $("#birthday-icon").hide();
            $("#active-datepicker").hide();
            $("#active-icon").hide();
            $("#deactive-datepicker").hide();
            $("#deactive-icon").hide();
            $("#content").show();
        }
    });
});
</script>
 


</head>
<body>
    <form action="listQuery" method="post" id="searchForm">
        <select name="query" id="query">
            <option value="userId">아이디</option> 
            <option value="name">이름</option>
            <option value="address" selected="selected">주소</option>
            <option value="phone">전화번호</option>
            <option value="email">전자우편</option>
            <option value="gender">성별</option>
            <option value="birthday">생년월일</option> <!-- 새로운 옵션 추가 -->
            <option value="active">가입일</option>
            <option value="deactive">탈퇴일</option>
        </select>&nbsp;&nbsp;&nbsp;
        <input type="text" name="content" id="content" size="20"> <!-- 텍스트 필드는 기본적으로 보이도록 설정 -->
        <input type="text" name="content" id="datepicker" size="20" style="display: none;"> <!-- display 속성으로 숨김 -->
        <input type="text" name="content" id="active-datepicker" size="20" style="display: none;"> <!-- display 속성으로 숨김 -->
        <input type="text" name="content" id="deactive-datepicker" size="20" style="display: none;"> <!-- display 속성으로 숨김 -->
        <i id="birthday-icon" class="far fa-calendar-alt" style="display: none;"></i> <!-- display 속성으로 숨김 -->
        <i id="active-icon" class="far fa-calendar-alt" style="display: none;"></i> <!-- display 속성으로 숨김 -->
        <i id="deactive-icon" class="far fa-calendar-alt" style="display: none;"></i> <!-- display 속성으로 숨김 -->
        <input type="submit" value="검색">  
    </form>
	<br><br>
   <table id="result" cellpadding="0" cellspacing="4" border="4" style="max-width: 100%; width: 100%; max-height: 500px; overflow-y: auto; z-index: 9999;">
		<tr>
			<th bgcolor="#808080" width="150px" style="text-align: center;" >아이디</th>
			<th bgcolor="#808080" width="100px" style="text-align: center;">이름</th>
			<th bgcolor="#808080" width="300px" style="text-align: center;">주소</th>
			<th bgcolor="#808080" width="200px" style="text-align: center;">전화번호</th>
			<th bgcolor="#808080" width="200px" style="text-align: center;">전자우편</th>
			<th bgcolor="#808080" width="50px" style="text-align: center;">성별</th>
			<th bgcolor="#808080" width="150px" style="text-align: center;">생년월일</th>
			<th bgcolor="#808080" style="font-size: 14px; width:130px; text-align: center">가입일</th>
			<th bgcolor="#808080" style="font-size: 14px; width:130px; text-align: center">탈퇴일</th>
		</tr>
		<c:set var="cnt" value="0"/>
		<c:forEach items="${list}" var="dto">
		<tr>
			<td style="text-align: center;">${dto.userId}</td>
			<td style="text-align: center;">${dto.name}</td>
			<td style="text-align: center;">${dto.address}</td>
			<td style="text-align: center;">${dto.phone}</td>
			<td style="text-align: center;">${dto.email}</td>
			<td style="text-align: center;">${dto.gender}</td>
			<td style="text-align: center;">${dto.birthday}</td>
			<td style="text-align: center;">${dto.active}</td>
			<td style="text-align: center;">${dto.deactive}</td>
		</tr>
		<c:set var="cnt" value="${cnt=cnt+1 }"/>
		</c:forEach>
	</table>

</body>
</html>
