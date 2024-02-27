<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>review</title>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="icon" href="./images/CompanyLogo.png">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->

<style>
.title-range {
	display: inline-flex;
	vertical-align: middle;
	margin-right: 15px;
}
</style>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="./js/accordion.js"></script>

</head>
<body class="nav-expended">
    <!-- ============================== [[ Header  section]] ==============================-->

    <%@ include file="../include/header.jsp"%>

    <!-- ============================== [[ Header  section]] ==============================-->

    <!-- ============================== [[ Sidebar  section]] ==============================-->
    <div class="site-main">
        <div class="container">

            <%@ include file="../include/sidemenu.jsp"%>

            <!-- ============================== [[ Sidebar  section]] ==============================-->

            <!-- ============================== [[ Body  section]] ==============================-->

            <div class="main">

                <!-- 여기서 부터 작성 -->

                <div class="board">
                    <div class="xans-element- xans-board xans-board-title board-header ">

                        <h3>
                            <font color="#555555">&nbsp;&nbsp;REVIEW</font>
                        </h3>
                    </div>
                    <div class="wrap">

                        <!-- 검색 결과를 표시할 영역 (초기에는 숨겨둠) 이거로 검색했을때 데이터를 업데이트 시킬꺼-->
                        <div id="searchResults" style="display: none;"></div>
                        <!-- 아코디언 메뉴 -->
                        <ul class="accordion-list">
                            <!-- 아코디언 이름,  -->
                            <c:forEach items="${reviewlist}" var="dto" varStatus="loop">
                                <li class="accordion-item"><a href="#" class="accordion-link"> <!-- 글씨체 -->
                                        <div class="accordion-name">

                                            <span class="date">${dto.revDate}</span>
                                            <div class="title-range">
                                                <img src="${pageContext.request.contextPath}/images/product/${dto.proImage1}"
                                                    border="0" alt="" width=58px>
                                                     <span>${dto.proName}<br>${dto.revTitle}</span>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="accordion-desc">
                                        <span class="title">${dto.revContent}</span>
                                        <!-- 이미지가  있으면  출력한다-->
                                </li>
                            </c:forEach>
                        </ul>
                        <!-- 세션에 담은 페이지수 출력부분 pageList만큼 반복한다-->
                        <div style="text-align: center;">

                            <c:if test="${currentPage > 1}">
                                <a href="review.do?page=${currentPage - 1}" style="display: inline-block; margin: 10px;">&nbsp;이전</a>
                            </c:if>

                            <c:forEach items="${pageList}" var="page">
                                <c:choose>
                                    <c:when test="${page == currentPage}">
                                        <span style="display: inline-block; margin: 10px; font-weight: bold;">&nbsp;${page}</span>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="review.do?page=${page}" style="display: inline-block; margin: 10px;">&nbsp;${page}</a>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>

                            <c:if test="${currentPage < totalPage}">
                                <a href="review.do?page=${currentPage + 1}" style="display: inline-block; margin: 10px;">&nbsp;다음</a>
                            </c:if>
                        </div>
                    </div>
                </div>

                <div class="xans-element- xans-board xans-board-buttonlist board-admin-actions  ">
                </div>

                <!-- 여기까지 작성 -->

                <!-- ============================== [[ Body  section]] ==============================-->

                <!-- =============================  [[ Footer section ]]  ============================= -->
            </div>
            <%@ include file="../include/footer.jsp"%>
        </div>
    </div>
    <!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>
