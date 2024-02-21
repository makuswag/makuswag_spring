<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 
	 * Description : quill 테스트 (출력페이지)
	 * 				
	 * Date : 2024.02.05 (월요일)
	 * Author : 박지환
	 * 
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QuilTest Page</title>
<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
</head>
<body>
<div id="display">
  <!-- 여기에 저장된 Quill 내용을 표시합니다. -->
</div>
<script>
  // 이전 페이지에서 저장한 quillContent 내용을 가져와서 출력
  var storedContent = localStorage.getItem('quillContent');
  //html코드 그대로 나오게 보여주는 코드(innerText)
  document.getElementById('display').innerText = storedContent;
//= 앞에부분은 html을 화면에보여주는 코드(innerHTML)이고 =뒤에 코드는 앞에서 가져온html 을 사용한다는거
  document.getElementById('display').innerHTML = storedContent;
</script>

</body>
</html>
