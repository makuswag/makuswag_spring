<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA - Mak U Swag</title>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="icon" href="./images/CompanyLogo.png">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
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
					<div
						class="xans-element- xans-board xans-board-title board-header ">
						<h3>
							<font color="#555555">Q&A</font>
						</h3>
					</div>
					<div
						class="xans-element- xans-board xans-board-listpackage board-list ">
						<div class="xans-element- xans-board xans-board-list qna-list">
							<c:forEach items="${QnaList}" var="dto" varStatus="loop">
								<div class="list-item xans-record-">
									<a href="qnaContent_view?qnaSeq=${dto.qnaSeq}"
										class="post-link"> <span class="number">${dto.qnaSeq}</span>
										<span class="title">${dto.qnaCategory}</span> <span class="date">${dto.userId}</span>
									</a>
								</div>
							</c:forEach>
						</div>
					</div>
					<div
						class="xans-element- xans-board xans-board-empty message displaynone "></div>
					<div style="text-align: center;">
						<c:if test="${currentPage > 1}">
							<a href="qna_view?page=${currentPage - 1}"
								style="display: inline-block; margin: 10px;">&nbsp;이전</a>
						</c:if>

						<c:forEach begin="${startPage}" end="${endPage}" var="pageNum">
							<c:choose>
								<c:when test="${pageNum == currentPage}">
									<span
										style="display: inline-block; margin: 10px; font-weight: bold;">&nbsp;${pageNum}</span>
								</c:when>
								<c:otherwise>
									<a href="qna_view?page=${pageNum}"
										style="display: inline-block; margin: 10px;">&nbsp;${pageNum}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>

						<c:if test="${currentPage < totalPage}">
							<a href="qna_view?page=${currentPage + 1}"
								style="display: inline-block; margin: 10px;">&nbsp;다음</a>
						</c:if>
					</div>

					<form id="boardSearchForm" action="qnaQuery" method="post"
						target="_top" enctype="multipart/form-data">
						<input id="board_no" name="board_no" value="5" type="hidden" /> <input
							id="page" name="page" value="1" type="hidden" /> <input
							id="board_sort" name="board_sort" value="" type="hidden" />
						<div
							class="xans-element- xans-board xans-board-search board-search-form ">
							<fieldset>
								<select id="search_key" name="search_key" fw-filter=""
									fw-label="" fw-msg="">
									<option value="subject">제목</option>
									<option value="content">내용</option>
									<option value="member_id">아이디</option>
								</select> 
									<input type = "text" name="content" fw-filter="" fw-label=""
									fw-msg="" class="inputTypeText" placeholder="" value=""
									type="text" /> <a href="#none" class="search-button"
									onclick="BOARD.form_submit('boardSearchForm');"></a>
							</fieldset>
						</div>
						<div
							class="xans-element- xans-board xans-board-buttonlist board-admin-actions  ">
							<!-- 로그인 여부에 따라 WRITE 버튼을 표시 또는 숨김 -->
							<c:choose>
								<c:when test="${sessionScope.user ne null}">
									<a href="qnaWrite_view" class="primary-button "><span>WRITE</span></a>
								</c:when>
								<c:otherwise>
									<!-- 비로그인 상태에서는 WRITE 버튼 숨김 -->
									<div style="display: none;"></div>
								</c:otherwise>
							</c:choose>
						</div>
					</form>
				</div>
				<!-- 여기까지 작성 -->
				<!-- ============================== [[ Body  section]] ==============================-->
				<!-- =============================  [[ Footer section ]]  ============================= -->
				<%@ include file="../include/footer.jsp"%>
			</div>
		</div>
	</div>
	<!-- =============================  [[ Footer section ]]  ============================= -->
	<script>
		// 페이지 로딩 후 실행되는 스크립트
		window.onload = function() {
			// 로그인 여부 확인
			var loggedIn = <c:out value="${sessionScope.user ne null}"/>;
			if (loggedIn) {
				// 로그인한 경우에만 작성자와 비교하는 스크립트를 실행
				var userId = "<c:out value="${sessionScope.user.userId}"/>";
				var listItems = document.querySelectorAll('.list-item');
				listItems
						.forEach(function(item) {
							var authorId = item.querySelector('.date').innerText
									.trim();
							if (authorId !== userId) {
								item.querySelector('.post-link')
										.addEventListener('click',
												function(event) {
													event.preventDefault();
													alert("접근 권한이 없습니다.");
												});
							}
						});
			} else {
				// 비로그인 상태에서는 모든 게시물을 클릭해도 접근 권한이 없음을 알림
				var listItems = document.querySelectorAll('.list-item');
				listItems.forEach(function(item) {
					item.querySelector('.post-link').addEventListener('click',
							function(event) {
								event.preventDefault();
								alert("로그인 후에 이용 가능합니다.");
							});
				});
			}
		}
		function searchQna() {
			var keyword = document.getElementById("search").value;
			var searchType = document.getElementById("search_type").value;
			var url = "qna_search?page=1&keyword="
					+ encodeURIComponent(keyword) + "&searchType=" + searchType;
			window.location.href = url;
		}
	</script>
</body>
</html>
