<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// ServletContext를 사용하여 업로드 경로를 가져옴
request.setCharacterEncoding("UTF-8");
ServletContext context = request.getServletContext();
String uploadPath = context.getRealPath("/images");
%>
<!DOCTYPE html>
<html>
<head>
<title>MakUSwag</title>
<script type="text/javascript">
	function insertQna() {
		let form = document.insertQnaForm;
		form.submit();
		return true;
	}
</script>
<!-- CSS -->
<link rel="stylesheet"
	href="//img.echosting.cafe24.com/editors/froala/3.2.2/css/froala_editor.pkgd.min.css?vs=2402071282">
<link rel="stylesheet"
	href="//img.echosting.cafe24.com/editors/froala/css/themes/ec_froala.css?vs=2402071282">
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="icon" href="./images/CompanyLogo.png">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
<!-- JavaScript -->
<script type="text/javascript"
	src="//img.echosting.cafe24.com/editors/froala/js/polyfill.min.js?vs=2402071282"></script>
<script type="text/javascript"
	src="//img.echosting.cafe24.com/editors/froala/3.2.2/js/froala_editor.pkgd.min.js?vs=2402071282"></script>
<script type="text/javascript"
	src="//img.echosting.cafe24.com/editors/froala/js/i18n/ko_KR.js?vs=2402071282"></script>

<script>
	if (FroalaEditor.PLUGINS && FroalaEditor.PLUGINS.url)
		delete FroalaEditor.PLUGINS.url; // ECHOSTING-518735
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
				<div class="xans-element- xans-board xans-board-writepackage board ">
					<div
						class="xans-element- xans-board xans-board-title board-header ">
						<h3>
							<font color="#555555">REVIEW</font>
						</h3>
					</div>
					<form id="boardWriteForm" name="insertReviewForm"
						action="reviewWriteSubmit" method="post" target="_self"
						enctype="multipart/form-data">
						<input id="board_no" name="board_no" value="5" type="hidden" /> <input
							id="product_no" name="product_no" value="0" type="hidden" /> <input
							id="move_write_after" name="move_write_after"
							value="/board/free/list.html?board_no=5" type="hidden" /> <input
							id="cate_no" name="cate_no" value="" type="hidden" /> <input
							id="bUsePassword" name="bUsePassword" value="" type="hidden" />
						<input id="order_id" name="order_id" value="" type="hidden" /> <input
							id="is_post_checked" name="is_post_checked" value=""
							type="hidden" /> <input id="isExceptBoardUseFroalaImg"
							name="isExceptBoardUseFroalaImg" value="" type="hidden" /> <input
							id="isGalleryBoard" name="isGalleryBoard" value="" type="hidden" />
						<input id="a5de8f588ce99" name="a5de8f588ce99"
							value="90c5c2c59257572aaad9896dc0760aa1" type="hidden" />

						<div
							class="xans-element- xans-board xans-board-write post-editor ">
							<!--
            $login_page_url = /member/login.html
            $deny_access_url = /index.html
        -->
							<div class="form-group">
								<div class="form-row">
									<div class="form-block">
										<div class="form-field subject">
											<div class="title-range">
												<img
													src="${pageContext.request.contextPath}/images/product/${reviewWriteDto.proImage1}"
													width="100" height="100"> <span>${reviewWriteDto.proName}<br>${dto.revTitle}</span>
											</div>
											<br>
											<br>
											<br>
											<div class="field-label">제목</div>
											<input id="subject" name="reviewTitle" class="inputTypeText"
												placeholder="제목을 입력하세요" maxLength="125" type="text" />
											<div class="checkbox"></div>
											<div class="checkbox"></div>
										</div>
									</div>
								</div>
								<div class="form-row">
									<div class="form-block">
										<div class="form-field post-textarea">
											<div class="field-label">내용</div>


											<!-- HTML -->
											<textarea style="width: 100%;" name="reviewContent"
												id="content" class="ec-fr-never-be-duplicated"></textarea>
											<input type="hidden" id="content_hidden"
												fw-filter="isSimplexEditorFill" fw-label="내용"
												value="EC_FROALA_INSTANCE" />

											<!-- Run Froala Script -->
											<script type="text/javascript" src="./js/write.js"></script>


										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-action">
							<input type="submit" class="button primary-button" value="SUBMIT"
								name="reviewInsert">
						</div>
					</form>
				</div>
				<!-- 여기까지 Swag~ -->

				<!-- ============================== [[ Body  section]] ==============================-->

				<!-- =============================  [[ Footer section ]]  ============================= -->

				<%@ include file="../include/footer.jsp"%>

			</div>
		</div>
	</div>
	<!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>
