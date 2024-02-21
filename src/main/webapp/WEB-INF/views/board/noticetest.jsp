<%@page import="com.javalec.dto.NoticeDtoPJH"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NOTICE</title>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="icon" href="./images/CompanyLogo.png">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="./js/accordion.js"></script>


<script>
window.onload=function(){
	init();
}	
	
function init() {
	paging();
	productNum();
	questNum();
}

//제품현황 Header 알림표시
function productNum() {
	
	$.ajax({
		type : "POST",
		url : "adminProductNum.do",
		success : function(response){
			document.getElementById('productNum').innerText = response
		},
		 error:function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

//문의 진행중 갯수 Header 알림표시
function questNum() {
	
	$.ajax({
		type : "POST",
		url : "notice.do",
		success : function(response){
			document.getElementById('questNum').innerText = response
		},
		 error:function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}
	
function paging(pageNum) {
	
	//pageNum이 null일 때 처리
	if(pageNum == null ){
		pageNum = "1";
	}
	
	$.ajax({
		type : "POST",
		url : "notice.do",
		data : {pageNum : pageNum},
		success : function(response){
			createPaging(response)
		},
		 error:function(request, status, error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}


function createPaging(data) {
	
	document.getElementById("result").innerHTML = "";
	//페이지 번호 보여주기 위해 div태그 생성
	let rownumber = data.total - data.index_no;	//행번호
	let index_no = data.index_no;	//행번호
	let lastPage = data.lastPage;
	let div = "<div>";
	
	//데이터 조회하기 위해 테이블 생성
	let table = "<table id='listTable' class='table-style'>";
	table += "<tr><th>행번호</th><th>상품명</th><th>입고갯수</th><th>재고갯수</th><th>상태</th></tr>"
	
	//데이터가 없을 때 처리
	if(data.length == 0) {
		table += "<tr><td colspan='6'></td></tr>";
	}
	
	//이중 for문으로 페이징처리와 해당 페이지에 데이터 조회를 동시에 처리
	for(let j= 1; j <= lastPage; j++){
		
		for(let i=0; i < data.productList.length; i++){ //=> 범위를 0~9까지 계속 10개씩 가져오는 것이 아니라, data 길이만큼씩 보여주게 해야된다잇!!
			
			calc = data.productList[i].pstock - data.productList[i].stock;
			let backgroundColor = calc <=100 ? "pink" : "";
			
			table += "<tr style='background-color : "+backgroundColor+"'>" +
						"<td style='text-align:center'>" + rownumber +"</td>" +
						"<td style='text-align:left'>" + data.productList[i].pname +"</td>" +
						"<td style='text-align:center'>" + data.productList[i].pstock +"</td>" +
						"<td style='text-align:center'>" + calc +"</td>" +
						"<td style='text-align:center'>" + data.productList[i].status +"</td>" +
						"<td hidden style='width:0px;'>" + data.productList[i].productid +"</td>" +
					"</tr>" 
					rownumber--;
					
			
		}
		table += "</table>"
		div += "<button onclick='paging("+j+")'>"+j+"</button> ";
		
	}
		$("#paging").html(div);
	$("#result").html(table);
	
	// 텍스트 제거
    var tableElement = document.getElementById("listTable");
    var nextSibling = tableElement.nextSibling;
    while (nextSibling) {
        var nextElement = nextSibling.nextSibling;
        nextSibling.parentNode.removeChild(nextSibling);
        nextSibling = nextElement;
    }
}	
	function submitSearchForm12() {
		console.log("버튼이 클릭되었습니다!");
		// 검색어 입력란의 값을 가져옴
		var searchInput = document.getElementById("search").value;
		var searchDate = document.getElementById("search_date").value;
		var searchKey = document.getElementById("search_key").value;
		console.log(searchInput+searchDate+searchKey);
		
		window.location.href = notice.do;
		
		
	}
</script>




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
							<font color="#555555">&nbsp;&nbsp;NOTICE</font>
						</h3>
						<div class="wrap">


							<!-- 검색 결과를 표시할 영역 (초기에는 숨겨둠) 이거로 검색했을때 데이터를 업데이트 시킬꺼-->
							<div id="searchResults" style="display: none;"></div>
							<!-- 아코디언 메뉴 -->
							<ul class="accordion-list">
								<!-- 아코디언 이름,  -->
								<c:forEach items="${list}" var="dto" varStatus="loop">
									<li class="accordion-item"><a href="#"
										class="accordion-link">
											<div class="accordion-name">
												<span class="number">${dto.noCategory}</span> <span
													class="title">${dto.noTitle}</span> <span class="views1">조회수</span>
												<span class="date">${dto.noDate.substring(0, 10)}</span>
											</div>
									</a>
										<div class="accordion-desc">
											<span class="title">${dto.noContent}</span>
											<!-- 이미지가  있으면  출력한다-->
											<c:if test="${not empty dto.noImage}">
												<span> <img
													src="${pageContext.request.contextPath}/images/${dto.noImage}"
													width="756px" height="945px">
												</span>
											</c:if>
								</c:forEach>

							</ul>
							<!-- 세션에 담은 페이지수 출력부분 pageList만큼 반복한다-->
							<div style="text-align: center;">

								<c:if test="${currentPage > 1}">
									<a href="notice.do?page=${currentPage - 1}"
										style="display: inline-block; margin: 10px;">&nbsp;이전</a>
								</c:if>

								<c:forEach items="${pageList}" var="page">
									<c:choose>
										<c:when test="${page == currentPage}">
											<span
												style="display: inline-block; margin: 10px; font-weight: bold;">&nbsp;${page}</span>
										</c:when>
										<c:otherwise>
											<a href="notice.do?page=${page}"
												style="display: inline-block; margin: 10px;">&nbsp;${page}</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>

								<c:if test="${currentPage < totalPage}">
									<a href="notice.do?page=${currentPage + 1}"
										style="display: inline-block; margin: 10px;">&nbsp;다음</a>
								</c:if>
							</div>




						</div>
					</div>

					<div
						class="xans-element- xans-board xans-board-search board-search-form ">
						<fieldset>
							<select id="search_date" name="search_date">
								<option value="week">일주일</option>
								<option value="month">한달</option>
								<option value="month3">세달</option>
								<option value="all">전체</option>
							</select> <select id="search_key" name="search_key">
								<option value="subject">제목</option>
								<option value="content">내용</option>
							</select> <input id="search" name="search" class="inputTypeText"
								placeholder="검색어를 입력하세요" value="" type="text" /> <a
								onclick="submitSearchForm12()" href="notice.do"
								class="search-button"></a>


						</fieldset>
					</div>
					<div
						class="xans-element- xans-board xans-board-buttonlist board-admin-actions  ">
						<a href="/noticeWrite.do" class="primary-button "><span>WRITE</span></a>
					</div>




					<!-- 여기까지 작성 -->

					<!-- ============================== [[ Body  section]] ==============================-->

					<!-- =============================  [[ Footer section ]]  ============================= -->

					<%@ include file="../include/footer.jsp"%>

				</div>
			</div>
		</div>
		<!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>