<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--quileditor http링  -->
<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">

</head>
<body>

<!-- Create the editor container -->
<div id="editor">
  <p>Hello World!</p>
  <p>Some initial <strong>bold</strong> text</p>
  <p><br></p>
</div>

<!-- Include the Quill library -->
<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>

<!-- Initialize Quill editor -->
<script>
  var quill = new Quill('#editor', {
    theme: 'snow'
  });
  //quil에 들어간 데이터를 ㅣ
  function saveAndMove() {
	  //quill에디터의값을 quillContent라는 이름으로 가져온다(html)(root가 뭐야)
	    var quillContent = quill.root.innerHTML;
	    // Quill 에디터에서 얻은 HTML 콘텐츠를 setItem 메서드를 사용하여 브라우저의 localStorage에 저장 이러면 quillContent라는 이름으로 저장됨
	    localStorage.setItem('quillContent', quillContent);
	    
	    window.location.href = 'quilTest(submit).jsp'; // 다음 페이지로 이동
	  }
	</script>
	
	<button onclick="saveAndMove()">확인</button>

</body>
</html>