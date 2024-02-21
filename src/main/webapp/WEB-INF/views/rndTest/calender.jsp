<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar Example</title>
<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- jQuery UI -->
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/base/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<!-- 한국어 지역화 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/i18n/jquery-ui-i18n.min.js"></script>
<!-- 스타일 -->
<link rel="stylesheet" href="./css/calender.css">
</head>
<body>
<h2>날짜 선택:</h2>
<input type="text" id="datepicker">

<script>
$( function() {
  // 현재 날짜 설정
  var today = new Date();
  // 한국어 지역화 설정
  $.datepicker.setDefaults( $.datepicker.regional[ "ko" ] );

  // Datepicker를 적용할 input 요소를 선택하고 datepicker() 메서드를 호출하여 달력을 활성화합니다.
  $( "#datepicker" ).datepicker({
    // 달력의 형식을 한국식으로 지정합니다.
    dateFormat: 'yy-mm-dd',
    // 오늘 날짜 표시
    showButtonPanel: true,
    // 달력 아이콘 설정
    showOn: "button",
    buttonImage: "https://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
    buttonImageOnly: true,
    buttonText: "Select date",
    // 다음/이전 버튼 텍스트 설정
    nextText: "다음 달",
    prevText: "이전 달",
    // 요일 표시 설정
    dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
    // 월 이름 설정
    monthNamesShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
    // 년도 선택 가능 (1920년부터 시작)
    changeYear: true,
    yearRange: '1920:' + today.getFullYear(),
    // 월 선택 가능
    changeMonth: true,
    // 현재 날짜 이후 선택 불가
    maxDate: today
  });
} );
</script>

</body>
</html>
