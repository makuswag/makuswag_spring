<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.springlec.base.model.UserDto"%>
<link rel="stylesheet" href="./css/modal.css">
<%
    Object userObject = session.getAttribute("user");

    if (userObject != null && userObject instanceof UserDto) {
        // Regular user is logged in
        UserDto user = (UserDto) userObject;
        String userPw = user.getUserPw();
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
        <br>
        <br>
        <br>
        <!-- 비밀번호 변경 입력란 -->
        <form id="changePasswd_form" name="" action="changePasswd" method="post">
	       <div id="passwordChangeForm" style="display: none;">
	           <input type="password" id="currentPassword" placeholder="현재 비밀번호" required>
	           <input type="hidden" id="userPw" value="<%=userPw%>">
	           <br>
	           <input type="password" id="newPassword" placeholder="새로운 비밀번호" required>
	           <input type="hidden" id="newUserPw" name="newUserPw">
	           
	           <br>
	           <input type="password" id="confirmNewPassword" placeholder="새로운 비밀번호 확인" required>
	           <br>
	           
	           <span id="passwordMatchMessage"></span>
	           <br>
	           <br>
	           <input type="submit" value="변경" class="primary-button" style="margin: 0 auto;">
	       </div>
        </form>
    </div>
</div>
<script type="text/javascript" src="./js/userPw.js"></script>
<%
    } else {
        response.sendRedirect("./status/error");
    }
%>

