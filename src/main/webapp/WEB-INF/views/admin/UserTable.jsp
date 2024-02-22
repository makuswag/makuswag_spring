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


</style>

<script>
    $( function() {
        $( "#datepicker" ).datepicker();
        $( "#birthday-icon" ).click(function() {
            $( "#datepicker" ).datepicker("show");
        });
        // 생년월일 옵션 선택 시에만 캘린더 보이도록 설정
        $( "#query" ).change(function() {
            if ($(this).val() === "birthday") {
                $( "#datepicker" ).show();
                $( "#birthday-icon" ).show();
            } else {
                $( "#birthday-icon" ).hide();
            }
        });
    } );
</script>

</head>
<body>

<form action="listQuery" method="post">
    <select name="query" id="query">
        <option value="userId">아이디</option> 
        <option value="name">이름</option>
        <option value="address" selected="selected">주소</option>
        <option value="phone">전화번호</option>
        <option value="email">전자우편</option>
        <option value="gender">성별</option>
        <option value="birthday">생년월일</option> <!-- 새로운 옵션 추가 -->
    </select>&nbsp;&nbsp;&nbsp;
    <input type="text" name="content" id="datepicker" size="20" style="display: none;"> <!-- display 속성으로 숨김 -->
    <i id="birthday-icon" class="far fa-calendar-alt" style="display: none;"></i> <!-- display 속성으로 숨김 -->
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
