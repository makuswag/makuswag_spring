<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.springlec.base.model.UserDto"%>
<%
    Object userObject = session.getAttribute("user");

    if (userObject != null && userObject instanceof UserDto) {
        // Regular user is logged in
        UserDto user = (UserDto) userObject;

        // Check if the user's name contains "회원"
%>
        <script type="text/javascript">
            alert('<%= user.getName()+"님의 비밀번호가 변경 되었습니다." %>!');
            window.location.href = '<%= "login" %>';
        </script>
<%
    } else {
    	response.sendRedirect("./status/error");
    }
%>