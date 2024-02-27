<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.springlec.base.model.UserDto"%>
<%
    Object userObject = session.getAttribute("user");

    if (userObject != null && userObject instanceof UserDto) {
        // Regular user is logged in
        UserDto user = (UserDto) userObject;

%>
<script type="text/javascript">
            alert('<%= user.getName() + "님의 아이디는 " + user.getUserId() + " 입니다."%> ');
            window.location.href = '<%= "login" %>';
</script>
<%
    } else {
    	response.sendRedirect("./status/error");
    }
%>
