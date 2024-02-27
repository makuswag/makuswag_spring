<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.springlec.base.model.UserDto"%>
<link rel="stylesheet" href="./css/modal.css">
<%
    Object userObject = session.getAttribute("user");
    if (userObject != null && userObject instanceof UserDto) {
        // Regular user is logged in
        UserDto user = (UserDto) userObject;
%>
<!-- 모달 창 HTML -->
<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <!-- 아이디와 비밀번호 정보 표시 -->
        <p><%= user.getName() %>님의 비밀번호는 <%= user.getUserPw() %>입니다.</p>
        <br>
        <p>비밀번호를 변경하시겠습니까?</p>
        <button onclick="handleYes()">Yes</button>
        <button onclick="handleNo()">No</button>
    </div>
</div>
<script type="text/javascript">
    // 유효성 검사 통과 시 모달 창 열기
    openModal();

    // Function to handle "Yes" click
    function handleYes() {
        // Open modal here or perform other actions
        alert('비밀번호 변경을 시작합니다.');
        // 여기에 비밀번호 변경 로직 추가
    }

    function handleNo() {
    	
        alert('로그인 화면으로 돌아갑니다.');
        window.location.href = '<%= "login" %>';
    }
	// 모달 열기 함수
	function openModal() {
	    // 모달 창 표시
	    document.getElementById('myModal').style.display = 'block';
	}
	
	//모달 닫기 함수
	function closeModal() {
	    // 모달 창 숨기기
	    document.getElementById('myModal').style.display = 'none';
	    handleNo();
}
</script>
<%
    } else {
        response.sendRedirect("./status/error");
    }
%>

