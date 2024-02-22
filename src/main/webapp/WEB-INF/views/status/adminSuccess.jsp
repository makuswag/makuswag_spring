<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.springlec.base.model.UserDto"%>%>
<%
    Object userObject = session.getAttribute("user");

    if (userObject != null && userObject instanceof UserDto) {
        // Regular user is logged in
        UserDto user = (UserDto) userObject;

        // Check if the user's name contains "대표"
%>
        <script type="text/javascript">
            alert('환영합니다, <%= user.getName()+"님" %>!');
            window.location.href = '<%= "manager" %>';
        </script>
<%
    } else {
        response.sendRedirect("./status/error");
    }
%>