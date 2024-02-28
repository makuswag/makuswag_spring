<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	   <%// ServletContext를 사용하여 업로드 경로를 가져옴
   request.setCharacterEncoding("UTF-8");
   ServletContext context = request.getServletContext();
   String uploadPath = context.getRealPath("/images"); 
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${noTitle }Q&A - MakUSwag</title>
<script>
    function confirmDelete(noSeq) {
        if (confirm("삭제 하시겠습니까?")) {
            window.location.href = "noDelete?noSeq=${content_view.noSeq}"
        } else {
            // 사용자가 "아니오"를 선택한 경우 아무 작업도 수행하지 않습니다.
        }        
    }
    
    function UpdateQna(noSeq){
    	if(confirm("수정 하시겠습니까?")){
    		window.location.href = "noUpdate?noSeq=${content_view.noSeq}"
    	}else{
    		// 사용자가 "아니오"를 선택한 경우 아무 작업도 수행 하지 않습니다.
    	}
    }
</script>
   <link rel="stylesheet" href="./css/notice.css">
   <link rel="stylesheet" href="./css/style1.css">
<link rel="icon" href="./images/CompanyLogo.png"> <!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
</head>
    <div class="sidebar-wrapper">
        <%@ include file="../include/sidebar.jsp" %>
    </div>
	<%@ include file="../admin/ProductInserthead.jsp" %>
<body class="nav-expended">
	<!-- ============================== [[ Header  section]] ==============================-->



	<!-- ============================== [[ Header  section]] ==============================-->

	<!-- ============================== [[ Sidebar  section]] ==============================-->
	<div class="site-main">
		<div class="container">


			<!-- ============================== [[ Sidebar  section]] ==============================-->

			<!-- ============================== [[ Body  section]] ==============================-->

			<div class="main">

				<!-- 여기서 부터 작성 -->
				<div class="board">
				<div class="xans-element- xans-board xans-board-title board-header ">
				<h3 onclick="window.history.go(-1); return false;" style="cursor: pointer;"><font color="#555555">NOTICE</font></h3>
				</div>
						<div class="xans-element- xans-board xans-board-read ">
							<div class="post-header">
											<h3 class = "number" >${content_view.noTitle }</h3>
											<div class="post-meta">
												<span class="date">${content_view.noDate }</span>
											</div>
										</div>
							<div class="post-content">
											<div class="content">
												<div class="images"></div>
												 <div class="article"><div class="fr-view fr-view-article"><p>${content_view.noContent }</p><br></div></div>
												<div><img src="${pageContext.request.contextPath}/images/board/${content_view.noImage}" width="100" height="100"></div>
											</div>
										</div>
							<div class="post-footer">
											<span class=""><a href="#" onclick="confirmDelete(${noSeq})" class="button" style="color:#0e3773;"><span>삭제</span></a></span>
								            <span class=""><a href="#" onclick="UpdateQna(${noSeq})" class="button" style="color:#0e3773;"><span>수정</span></a></span>
										</div>
							</div>
				
				
				
				
				
				<!-- 여기까지 작성 -->

			<!-- ============================== [[ Body  section]] ==============================-->

			<!-- =============================  [[ Footer section ]]  ============================= -->	

			</div>
		</div>
	</div>
</div>
	<!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>