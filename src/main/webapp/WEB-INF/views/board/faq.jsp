<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ - Mak U Swag</title>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="icon" href="./images/CompanyLogo.png">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="./js/accordion.js"></script>
</head>
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
						<font color="#555555">&nbsp;&nbsp;FAQ</font>
					</h3>
					</div>
					<div class="wrap">

						<!-- 아코디언 메뉴 -->
						<ul class="accordion-list">

							<c:forEach items="${FaqList}" var="dto" varStatus="loop">
								<li class="accordion-item"><a href="#"
									class="accordion-link">
										<div class="accordion-name">
											<span class="number">${dto.faqCategory}</span> <span
												class="title">${dto.faqTitle}</span>

										</div>
								</a>
									<div class="accordion-desc">
										<span>${dto.faqContent}</span>
									</div></li>
							</c:forEach>

						</ul>








					</div>
				</div>
			</div>


			<!-- 여기까지 작성 -->

			<!-- ============================== [[ Body  section]] ==============================-->

			<!-- =============================  [[ Footer section ]]  ============================= -->

			<%@ include file="../include/footer.jsp"%>

		</div>
	</div>
</div>
</body>
</html>