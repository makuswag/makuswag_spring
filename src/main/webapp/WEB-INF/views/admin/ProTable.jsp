<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

$(document).ready(function() {
    // 카테고리 옵션 변경 시 동작
    $('#query').change(function() {
        var selectedOption = $(this).val(); // 선택된 옵션의 값 가져오기

        // 새로운 콤보박스 생성
        if (selectedOption === "proCategory") {
            // 콤보박스 옵션
            var options = ['BEST 100', 'All-in-One', 'Outer','Top(short sleeve)','Top(long sleeve)','Bottoms','Bags','Accessories','Shoes','Woman only']; // 적절한 옵션 값으로 변경해야 합니다.

            // 기존 콤보박스 삭제
            $('#categoryDropdown').remove();

            // 새로운 콤보박스 생성
            var dropdown = $('<select id="categoryDropdown"></select>');
            for (var i = 0; i < options.length; i++) {
                dropdown.append($('<option></option>').attr('value', options[i]).text(options[i]));
            }

            // 콤보박스가 텍스트 상자에 선택된 값 설정
            dropdown.change(function() {
                $('#content').val($(this).val());
            });

            // 콤보박스 추가
            $('#query').after(dropdown);

            // 콤보박스에 첫 번째 옵션을 텍스트 필드에 자동으로 설정
            $('#content').val(options[0]);
        } else {
            // 카테고리 옵션이 아닌 경우 콤보박스 제거
            $('#categoryDropdown').remove();
            $('#content').val(''); // 텍스트 상자의 값 제거
        }
        
    });
});

$(function() {
    $("#datepicker").datepicker({
        dateFormat: 'yy-mm-dd', // 날짜 형식을 년-월-일로 설정
        onSelect: function(dateText) { // 날짜를 선택할 때 이벤트 처리
            $("#content").val(dateText); // 선택한 날짜를 content 필드에 설정
        }
    });

    // 각 캘린더 아이콘 클릭 시 해당 캘린더 필드만 표시되도록 설정
    $("#proDate-icon").click(function() {
        $("#datepicker").datepicker("show");
    });

    // 옵션 선택 시에만 캘린더 보이도록 설정
    $("#query").change(function() {
        if ($(this).val() === "proDate") {
            $("#datepicker").show();
            $("#proDate-icon").show();
            $("#content").hide();
        } else {
            $("#datepicker").hide();
            $("#proDate-icon").hide();
            $("#content").show();
        }
    });
});
</script>



</head>
<body>

    <form action="listQuery2" method="post" id="searchForm">
        <select name="query" id="query">
            <option value="proCategory">카테고리</option> 
            <option value="proName">이름</option>
            <option value="proGender" selected="selected">성별</option>
            <option value="proColor">색상</option>
            <option value="proPrice">가격</option> <!-- 새로운 옵션 추가 -->
            <option value="proDate">등록/수정일</option>
        </select>&nbsp;&nbsp;&nbsp;
        <input type="text" name="content" id="content" size="20"> <!-- 텍스트 필드는 기본적으로 보이도록 설정 -->
        <input type="text" name="content" id="datepicker" size="20" style="display: none;"> <!-- display 속성으로 숨김 -->
        <i id="proDate-icon" class="far fa-calendar-alt" style="display: none;"></i> <!-- display 속성으로 숨김 -->
        <input type="submit" value="검색">  
    </form>
	<br><br>
   <table id="result" cellpadding="0" cellspacing="4" border="4" style="max-width: 100%; width: 100%; max-height: 500px; overflow-y: auto; z-index: 9999;">
		<tr>
			<th bgcolor="#808080" width="150px" style="text-align: center;" >카테고리</th>
			<th bgcolor="#808080" width="150px" style="text-align: center;">이름</th>
			<th bgcolor="#808080" width="50px" style="text-align: center;">성별</th>
			<th bgcolor="#808080" width="450px" style="text-align: center;">제품소개</th>
			<th bgcolor="#808080" width="100px" style="text-align: center;">색상</th>
			<th bgcolor="#808080" width="50px" style="text-align: center;">수량</th>
			<th bgcolor="#808080" width="100px" style="text-align: center;">가격</th>
			<th bgcolor="#808080" style="font-size: 14px; width:130px; text-align: center">등록/수정일</th>
			<th bgcolor="#808080" style="font-size: 14px; width:130px; text-align: center">이미지1</th>
			<th bgcolor="#808080" style="font-size: 14px; width:130px; text-align: center">이미지2</th>
			<th bgcolor="#808080" style="font-size: 14px; width:130px; text-align: center">이미지3</th>
		</tr>
		<c:set var="cnt" value="0"/>
		<c:forEach items="${list}" var="dto">
		<tr>
			<td style="text-align: center;">${dto.proCategory}</td>
			<td style="text-align: center;">${dto.proName}</td>
			<td style="text-align: center;">${dto.proGender}</td>
			<td style="text-align: center;">${dto.proIntroduction}</td>
			<td style="text-align: center;">${dto.proColor}</td>
			<td style="text-align: center;">${dto.proQty}</td>
			<td style="text-align: center;">
    <fmt:formatNumber value="${dto.proPrice}" pattern="#,###"/>
</td>
			<td style="text-align: center;">${dto.proDate}</td>
			<td style="text-align: center;"><img src="${pageContext.request.contextPath}/images/admin/${dto.proImage1}" alt="" style="width: 40%; height: auto; object-fit: contain;"></td>
			<td style="text-align: center;"><img src="${pageContext.request.contextPath}/images/admin/${dto.proImage2}" alt="" style="width: 40%; height: auto; object-fit: contain;"></td>
			<td style="text-align: center;"><img src="${pageContext.request.contextPath}/images/admin/${dto.proImage3}" alt="" style="width: 40%; height: auto; object-fit: contain;"></td>
		</tr>
		<c:set var="cnt" value="${cnt=cnt+1 }"/>
		</c:forEach>
	</table>

</body>

</html>
