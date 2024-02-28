<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- ServletContext를 사용하여 업로드 경로를 가져옴 --%>
<%
    request.setCharacterEncoding("UTF-8");
    ServletContext context = request.getServletContext();
    String uploadPath = context.getRealPath("/images");
%>
<!DOCTYPE html>
<html>
<head>
    <title>MakUSwag</title>
    <script type="text/javascript">
        function insertno() {
            // 필수 입력 필드의 값을 가져오기
            var noCategory = document.getElementById("board_category").value;
            var noTitle = document.getElementById("subject").value;
            var noContent = document.getElementById("content").value;
            // 값이 비어있는지 확인
            if (noCategory === "" || noTitle === "" || noContent === "") {
                // 비어있는 필드가 있을 경우 알림창으로 오류 메시지 표시
                alert("모든 필드를 입력하세요.");
                return false; // 폼 제출 중지
            }
            // 폼을 직접 제출
            document.getElementById("boardWriteForm").submit();
        }
    </script>
    <!-- CSS -->
    <link rel="stylesheet"
          href="//img.echosting.cafe24.com/editors/froala/3.2.2/css/froala_editor.pkgd.min.css?vs=2402071282">
    <link rel="stylesheet"
          href="//img.echosting.cafe24.com/editors/froala/css/themes/ec_froala.css?vs=2402071282">
    <link rel="stylesheet" href="./css/notice.css">
    <link rel="stylesheet" href="./css/style1.css">
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
        if (FroalaEditor.PLUGINS
            && FroalaEditor.PLUGINS.url)
            delete FroalaEditor.PLUGINS.url; // ECHOSTING-518735
    </script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body class="nav-expended">
<div class="sidebar-wrapper">
    <%@ include file="../include/sidebar.jsp" %>
</div>
<%@ include file="../admin/ProductInserthead.jsp" %>
<!-- ============================== [[ Body section]] ==============================-->
<div class="site-main">
    <div class="container">
        <!-- ============================== [[ Sidebar section]] ==============================-->
        <!-- ============================== [[ Body section]] ==============================-->
        <div class="main">
            <!-- 여기서부터 작성 -->
            <div class="xans-element- xans-board xans-board-writepackage board ">
                <div class="xans-element- xans-board xans-board-title board-header ">
                    <h3>
                        <font color="#555555">Q&A</font>
                    </h3>
                </div>
                <form id="boardWriteForm" name="insertnoForm" action="noWriteSubmit"
                      method="post" target="_self" enctype="multipart/form-data">
                    <input id="board_no" name="board_no" value="5" type="hidden"/>
                    <input id="product_no" name="product_no" value="0" type="hidden"/>
                    <input id="move_write_after" name="move_write_after"
                           value="/board/free/list.html?board_no=5" type="hidden"/>
                    <input id="cate_no" name="cate_no" value="" type="hidden"/>
                    <input id="bUsePassword" name="bUsePassword" value="" type="hidden"/>
                    <input id="order_id" name="order_id" value="" type="hidden"/>
                    <input id="is_post_checked" name="is_post_checked" value=""
                           type="hidden"/>
                    <input id="isExceptBoardUseFroalaImg"
                           name="isExceptBoardUseFroalaImg" value="" type="hidden"/>
                    <input id="isGalleryBoard" name="isGalleryBoard" value=""
                           type="hidden"/>
                    <input id="a5de8f588ce99" name="a5de8f588ce99"
                           value="90c5c2c59257572aaad9896dc0760aa1" type="hidden"/>
                    <div class="xans-element- xans-board xans-board-write post-editor ">
                        <div class="form-group">
                            <div class="form-row">
                                <div class="form-block">
                                    <div class="form-field subject">
                                        <div class="field-label">제목</div>
                                        <select id="board_category" name="noCategory">
                                            <option value="공지">공지</option>
                                        </select><input id="subject" name="noTitle"
                                                         class="inputTypeText"
                                                         placeholder="제목을 입력하세요" maxLength="125"
                                                         type="text"/>
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
                                        <textarea style="width: 100%;" name="noContent" id="content"
                                                  class="ec-fr-never-be-duplicated"></textarea>
                                        <input type="hidden" id="content_hidden"
                                               fw-filter="isSimplexEditorFill" fw-label="내용"
                                               value="EC_FROALA_INSTANCE"/>
                                        <!-- Run Froala Script -->
                                        <script type="text/javascript" src="./js/write.js"></script>
                                    </div>
                                    <div class="field-label">첨부파일</div>
                                    <input name="noImage" id="noImage" type="file">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-action">
                        <input type="button" class="button primary-button" value="SUBMIT"
                               name="noInsert" onclick="insertno()">
                    </div>
                </form>
            </div>
            <!-- 여기까지 Swag~ -->
            <!-- ============================== [[ Body section]] ==============================-->
            <!-- =============================  [[ Footer section ]]  ============================= -->
        </div>
    </div>
</div>
<!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>
