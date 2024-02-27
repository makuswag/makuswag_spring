<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AJAX MySQL Table Query1</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"> <!-- Font Awesome CDN 추가 -->
    <style>
    @media screen and (max-width: 768px) {
    /* 화면 폭이 작을 때 */
    #result {
        display: block;
        overflow-x: hidden;
        width: calc(100% - 50px);
        max-height:500px;
        overflow-y: auto;
       	margin-top:10%;
        margin-left: 50px;
       
         /* 위에서 10% 떨어지도록 설정 */
        /* 위에 올 수 있도록 설정 */
    }
    #b {
        display: none; /* 화면이 작을 때 숨김 */
    }
}

/* 화면 폭이 769px 이상일 때 */
@media screen and (min-width: 769px) {
    #result {
        display: block;
        margin-left: 70px;
        width: 65%;
        max-height: 500px;
        overflow-y: auto;
        
        margin-top: 10%;
        position: absolute; /* 겹치도록 설정 */
         /* 위에서 10% 떨어지도록 설정 */
    }
    #b {
        position: absolute; /* 겹치도록 설정 */
        right: 3%; /* 오른쪽 여백 설정 */
        width: auto;
        max-height: 500px;
        overflow-y: auto;
        margin-top: 10%;
        margin-left: 0;
        
    }
}
#imagePreview {
    width: 100px; /* 미리보기 컨테이너 고정 너비 */
    height: 100px; /* 미리보기 컨테이너 고정 높이 */
    overflow: auto; /* 이미지가 컨테이너를 벗어나면 스크롤 표시 */
    margin: auto; /* 가운데 정렬 */
}

#imagePreview img {
    max-width: 100%; /* 이미지 너비를 최대 100%로 설정 */
    max-height: 100%; /* 이미지 높이를 최대 100%로 설정 */
    display: block; /* 블록 요소로 설정하여 중앙 정렬을 위한 margin을 적용하기 위해 */
    margin: auto; /* 가로 중앙 정렬을 위해 */
}

#imagePreview2,
#imagePreview3 {
    width: 100px; /* 미리보기 컨테이너 고정 너비 */
    height: 100px; /* 미리보기 컨테이너 고정 높이 */
    overflow: auto; /* 이미지가 컨테이너를 벗어나면 스크롤 표시 */
    margin: auto; /* 가운데 정렬 */
}

#imagePreview2 img,
#imagePreview3 img {
    max-width: 100%; /* 이미지 너비를 최대 100%로 설정 */
    max-height: 100%; /* 이미지 높이를 최대 100%로 설정 */
    display: block; /* 블록 요소로 설정하여 중앙 정렬을 위한 margin을 적용하기 위해 */
    margin: auto; /* 가로 중앙 정렬을 위해 */
}    
 #searchForm {
            position: sticky;
            top: 30%;
            margin-left:70px;
            z-index: 999;
            padding: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }    
          

        
        /* 기존 스타일 */
        a {
            text-decoration: none; /* 밑줄 제거 */
            color: inherit; /* 기본 색상으로 설정 */
        }

        a:hover {
            color: inherit; /* 호버 시 색상 변경하지 않음 */
        }
    </style>
    <script>
    // 화면 폭에 따라 링크 활성화/비활성화 함수
    function toggleLink() {
        var proSeqLinks = document.querySelectorAll('#result a'); // proSeq 링크 모두 선택
        var isSmallScreen = window.innerWidth <= 768; // 화면 폭이 768px 이하인지 확인

        proSeqLinks.forEach(function(link) {
            // 화면이 축소된 경우
            if (isSmallScreen) {
                link.removeAttribute('href'); // 링크 href 속성 제거하여 비활성화
            } else { // 화면이 확장된 경우
                link.setAttribute('href', 'content_view?proSeq=' + link.innerText); // 링크 href 속성 추가하여 활성화
            }
        });
    }

    // 페이지 로드 시 toggleLink 함수 호출
    window.addEventListener('load', toggleLink);

    // 화면 크기가 변경될 때 toggleLink 함수 호출
    window.addEventListener('resize', toggleLink);
</script>
    <script>
        // JavaScript 코드는 동일하게 유지됩니다.
    </script>
</head>
<body>
    <form action="listQuery4" method="post" id="searchForm">
        <select name="query" id="query">
            <option value="proSeq">번호</option> 
            <option value="proCategory">카테고리</option>
            <option value="proName" selected="selected">제품이름</option>
            <option value="proGender">성별</option>
            <option value="proColor">색상</option> <!-- 새로운 옵션 추가 -->
            <option value="proDate">등록/수정일</option>
        </select>&nbsp;&nbsp;&nbsp;
        <input type="text" name="content" id="content" size="20"> <!-- 텍스트 필드는 기본적으로 보이도록 설정 -->
        <input type="text" name="content" id="datepicker" size="20" style="display: none;"> <!-- display 속성으로 숨김 -->
        <i id="proDate-icon" class="far fa-calendar-alt" style="display: none;"></i> <!-- display 속성으로 숨김 -->
        <input type="submit" value="검색">  
    </form>
 <div class="table-container">
   <table id="result" cellpadding="0" cellspacing="4" border="4">
        <tr>
            <th bgcolor="#808080" width="50px" style="text-align: center;" >번호</th>
            <th bgcolor="#808080" width="150px" style="text-align: center;" >카테고리</th>
            <th bgcolor="#808080" width="150px" style="text-align: center;">이름</th>
            <th bgcolor="#808080" width="50px" style="text-align: center;">성별</th>
            <th bgcolor="#808080" width="450px" style="text-align: center;">제품소개</th>
            <th bgcolor="#808080" width="100px" style="text-align: center;">색상</th>
            <th bgcolor="#808080" width="50px" style="text-align: center;">수량</th>
            <th bgcolor="#808080" width="100px" style="text-align: center;">가격</th>
            <th bgcolor="#808080" style="font-size: 14px; width:130px; text-align: center">등록/수정일</th>
            <th bgcolor="#808080" style="font-size: 14px; width:130px; text-align: center">이미지1</th>
            <th bgcolor="#808080" style="font-size: 14px; width:130px; text-align: center">이미지2</th>
            <th bgcolor="#808080" style="font-size: 14px; width:130px; text-align: center">이미지3</th>
        </tr>
        <c:set var="cnt" value="0"/>
        <c:forEach items="${list}" var="dto">
            <tr>
                <td style="text-align: center;"><a href="content_view?proSeq=${dto.proSeq}">${dto.proSeq}</a></td>
                <td style="text-align: center;">${dto.proCategory}</td>
                <td style="text-align: center;">${dto.proName}</td>
                <td style="text-align: center;">${dto.proGender}</td>
                <td style="text-align: center;">${dto.proIntroduction}</td>
                <td style="text-align: center;">${dto.proColor}</td>
                <td style="text-align: center;">${dto.proQty}</td>
                <td style="text-align: center;">
                    <fmt:formatNumber value="${dto.proPrice}" pattern="#,###"/>
                </td>
                <td style="text-align: center;">${dto.proDate}</td>
                <td style="text-align: center;"><img src="${pageContext.request.contextPath}/images/admin/${dto.proImage1}?reload=1" alt="" style="width: 40%; height: auto; object-fit: contain;"></td>
                <td style="text-align: center;"><img src="${pageContext.request.contextPath}/images/admin/${dto.proImage2}?reload=1" alt="" style="width: 40%; height: auto; object-fit: contain;"></td>
                <td style="text-align: center;"><img src="${pageContext.request.contextPath}/images/admin/${dto.proImage3}?reload=1" alt="" style="width: 40%; height: auto; object-fit: contain;"></td>
            </tr>
            <c:set var="cnt" value="${cnt=cnt+1 }"/>
        </c:forEach>
    </table>
    </div>
    
    <!-- content_view.jsp의 내용 시작 -->
    <div class="table-container">
    <form action="modify" method="post" enctype="multipart/form-data">
     <input type="hidden" name="proSeq" value="${content_view.proSeq}">
    <div id="container">
        <div id="result"></div>
        <div id="text">
            <table border="4" id="b">
                <tr>
                <th>제품번호</th>
                    <td><input type="text" id="proSeq" value="${content_view.proSeq}" readonly="readonly" size="5"></td>
                </tr>
                <tr>    
             <th>카테고리</th>
                <td>
                    <select id="Category" name="Category">
                    	<option value="default">선택하세요</option>
                        <option value="BEST 100">BEST 100</option>
                        <option value="All-in-one">All-in-one</option>
                        <option value="Outer">Outer</option>
                        <option value="Top(short sleeve)">Top(short sleeve)</option>
                        <option value="Top(long sleeve)">Top(long sleeve)</option>
                        <option value="Bottoms">Bottoms</option>
                        <option value="Bags">Bags</option>
                        <option value="Accessories">Accessories</option>
                        <option value="Shoes">Shoes</option>
                        <option value="Woman only">Woman only</option>
                        <!-- 다른 카테고리 옵션들 -->
                    </select>
                    <input type="text" id="proCategory" name="proCategory" value="${content_view.proCategory}"  size="14" readonly="readonly" >
                </td>
                </tr>
                <tr>
                    <th>제품이름</th>
                    <td><input type="text" id="proName" name="proName" value="${content_view.proName}"></td>
                </tr>
                <tr>
                    <th>성별</th>
                <td>
                    <select id="Gender" name="Gender" >
                    	<option value="default">선택하세요</option>
                    	<option value="공용">공용</option>
                        <option value="남">남</option>
                        <option value="여">여</option>
                        <!-- 다른 카테고리 옵션들 -->
                    </select>
                    <input type="text" id="proGender"  name="proGender" value="${content_view.proGender}" size="5" readonly="readonly">
                </td>
                </tr>
                <tr>
                    <th>수량</th>
                <td>
                    <select id="quantity" name="quantity" >
                    <option value="default">선택하세요</option>
                        <% for (int i = 1; i <= 1000; i++) { %>
                            <option value="<%= i %>"> <%= i %> </option>
                        <% } %>
                    </select>
                    <!-- 텍스트 필드 추가 -->
                    <input type="text" id="proQty" name="proQty" size="5" value="${content_view.proQty}" readonly="readonly" > ea
                </td>
                </tr>
                <tr>
                	<th>제품소개</th>
                	<td><textarea id="proIntroduction" name="proIntroduction" >${content_view.proIntroduction}</textarea>
                </td>
                </tr>
                <tr>
                    <th>가격</th>
                    <td><input type="text" id="proPrice" name="proPrice" value="${content_view.proPrice}"></td>
                </tr>
                <tr>
                     <th>색상</th>
                <td>
                
                	<select id="Color" name="Color" >
                    	<option value="default">선택하세요</option>
                        <option value="Red">Red</option>
                        <option value="Blue">Blue</option>
                        <option value="Black">Black</option>
                        <option value="Beige">Beige</option>
                        <option value="Gray">Gray</option>
                        <option value="White">White</option>
                        <option value="Skyblue">Skyblue</option>
                        <option value="Darkblue">Darkblue</option>
                        <!-- 다른 카테고리 옵션들 -->
                    </select>
                
                    <input type="text" id="proColor" name="proColor" value="${content_view.proColor}" readonly="readonly" size="10">
                </td>
                </tr>
                <tr>
                    <th>현재<br>이미지</th>
                    <td><input type="text" id="proImage" size="30" value="${content_view.proImage1}" readonly="readonly"></td>
                </tr>
                 <tr>
                    <th>이미지</th>
                    <td><input type="file" id="proImage1" name="proImage1">
                    <div id="imagePreview"></div></td>
                </tr>
                <tr>
                    <th>현재<br>이미지</th>
                    <td><input type="text" id="proImage4" size="30" value="${content_view.proImage2}" readonly="readonly"></td>
                </tr>
                 <tr>
                    <th>이미지</th>
                    <td><input type="file" id="proImage2" name="proImage2">
                    <div id="imagePreview2"></div></td>
                </tr>
                <tr>
                    <th>현재<br>이미지</th>
                    <td><input type="text" id="proImage5" size="30" value="${content_view.proImage3}" readonly="readonly"></td>
                </tr>
                 <tr>
                    <th>이미지</th>
                    <td><input type="file" id="proImage3" name="proImage3">
                    <div id="imagePreview3"></div></td>
                </tr>
                <tr>
    				<td colspan="2" style="text-align: center;">
        				<input type="submit" value="수정" id="submitBtn">
        				<input type="submit" value="삭제" id="delBtn">
    				</td>
				</tr>
            </table>

        </div>
    </div>
    </form>
    </div>
    
    <!-- content_view.jsp의 내용 끝 -->
    
    <script>
    $(document).ready(function() {
        // 파일 선택(input) 요소의 변경 이벤트 리스너 등록
        $('#proImage1').change(function(event) {
            var file = event.target.files[0]; // 선택된 파일 가져오기

            // FileReader 객체 생성
            var reader = new FileReader();

            reader.onload = function(event) {
                var imageUrl = event.target.result; // 이미지 URL 가져오기
                var imageElement = document.createElement('img'); // img 요소 생성
                imageElement.src = imageUrl; // 이미지 URL 설정

                // 미리보기 엘리먼트에 이미지 추가
                var imagePreview = document.getElementById('imagePreview');
                imagePreview.innerHTML = ''; // 기존의 미리보기 삭제
                imagePreview.appendChild(imageElement); // 미리보기 엘리먼트에 이미지 추가

                // 파일이 선택되었으므로 현재 이미지 텍스트 숨기기
                $('#proImage').hide();
            };
            

            // 파일 읽기 시작
            if (file) {
                reader.readAsDataURL(file);
            } else {
                // 파일이 선택되지 않은 경우 미리보기 이미지 제거 및 현재 이미지 텍스트 보이기
                var imagePreview = document.getElementById('imagePreview');
                imagePreview.innerHTML = '';
                $('#proImage').show();
            }
        });
    });
    $(document).ready(function() {
        // 파일 선택(input) 요소의 변경 이벤트 리스너 등록
        $('#proImage2').change(function(event) {
            var file = event.target.files[0]; // 선택된 파일 가져오기

            // FileReader 객체 생성
            var reader = new FileReader();

            reader.onload = function(event) {
                var imageUrl = event.target.result; // 이미지 URL 가져오기
                var imageElement = document.createElement('img'); // img 요소 생성
                imageElement.src = imageUrl; // 이미지 URL 설정

                // 미리보기 엘리먼트에 이미지 추가
                var imagePreview = document.getElementById('imagePreview2');
                imagePreview.innerHTML = ''; // 기존의 미리보기 삭제
                imagePreview.appendChild(imageElement); // 미리보기 엘리먼트에 이미지 추가

                // 파일이 선택되었으므로 현재 이미지 텍스트 숨기기
                $('#proImage4').hide();
            };
            if (file) {
                reader.readAsDataURL(file);
            } else {
                // 파일이 선택되지 않은 경우 미리보기 이미지 제거 및 현재 이미지 텍스트 보이기
                var imagePreview = document.getElementById('imagePreview2');
                imagePreview.innerHTML = '';
                $('#proImage4').show();
            }
        });
    });

            $(document).ready(function() {
                // 파일 선택(input) 요소의 변경 이벤트 리스너 등록
                $('#proImage3').change(function(event) {
                    var file = event.target.files[0]; // 선택된 파일 가져오기

                    // FileReader 객체 생성
                    var reader = new FileReader();

                    reader.onload = function(event) {
                        var imageUrl = event.target.result; // 이미지 URL 가져오기
                        var imageElement = document.createElement('img'); // img 요소 생성
                        imageElement.src = imageUrl; // 이미지 URL 설정

                        // 미리보기 엘리먼트에 이미지 추가
                        var imagePreview = document.getElementById('imagePreview3');
                        imagePreview.innerHTML = ''; // 기존의 미리보기 삭제
                        imagePreview.appendChild(imageElement); // 미리보기 엘리먼트에 이미지 추가

                        // 파일이 선택되었으므로 현재 이미지 텍스트 숨기기
                        $('#proImage5').hide();
                    };
                    if (file) {
                        reader.readAsDataURL(file);
                    } else {
                        // 파일이 선택되지 않은 경우 미리보기 이미지 제거 및 현재 이미지 텍스트 보이기
                        var imagePreview = document.getElementById('imagePreview3');
                        imagePreview.innerHTML = '';
                        $('#proImage5').show();
                    }
                });
            });
</script>
    <script>
    $(document).ready(function() {
        // proName 입력 필드의 키 입력 이벤트 핸들러
        $("#proName").on("input", function() {
            // 입력값에서 특수 문자를 필터링하여 제거한 후 다시 입력 필드에 넣어줌
            var filteredValue = $(this).val().replace(/[^\w\sㄱ-ㅎㅏ-ㅣ가-힣]/gi, '');
            $(this).val(filteredValue);
        });
    });

        // 테이블 결과 영역의 높이를 조절하는 함수
        function adjustResultHeight() {
            var windowHeight = $(window).height();
            var searchContainerHeight = $('#searchContainer').outerHeight();
            var resultHeight = windowHeight - searchContainerHeight;
            $('#result').css('max-height', resultHeight + 'px');
        }
        $(document).ready(function() {
            // '성별' 선택 상자의 변경 이벤트 리스너 등록
            $('#Gender').change(function() {
                // 선택된 옵션의 값 가져오기
                var selectedOption = $(this).val();
                
                // 선택된 값이 'default'인 경우
                if (selectedOption === 'default') {
                    // 텍스트 필드를 비움
                    $('#proGender').val('');
                } else {
                    // 선택된 값으로 텍스트 필드 설정
                    $('#proGender').val(selectedOption);
                }
            });
        });
        $(document).ready(function() {
            // '성별' 선택 상자의 변경 이벤트 리스너 등록
            $('#Category').change(function() {
                // 선택된 옵션의 값 가져오기
                var selectedOption = $(this).val();
                
                // 선택된 값이 'default'인 경우
                if (selectedOption === 'default') {
                    // 텍스트 필드를 비움
                    $('#proCategory').val('');
                } else {
                    // 선택된 값으로 텍스트 필드 설정
                    $('#proCategory').val(selectedOption);
                }
            });
        });
        $(document).ready(function() {
            // '성별' 선택 상자의 변경 이벤트 리스너 등록
            $('#quantity').change(function() {
                // 선택된 옵션의 값 가져오기
                var selectedOption = $(this).val();
                
                // 선택된 값이 'default'인 경우
                if (selectedOption === 'default') {
                    // 텍스트 필드를 비움
                    $('#proQty').val('');
                } else {
                    // 선택된 값으로 텍스트 필드 설정
                    $('#proQty').val(selectedOption);
                }
            });
        });
        $(document).ready(function() {
            // '성별' 선택 상자의 변경 이벤트 리스너 등록
            $('#Gender').change(function() {
                // 선택된 옵션의 값 가져오기
                var selectedOption = $(this).val();
                
                // 선택된 값이 'default'인 경우
                if (selectedOption === 'default') {
                    // 텍스트 필드를 비움
                    $('#proGender').val('');
                } else {
                    // 선택된 값으로 텍스트 필드 설정
                    $('#proGender').val(selectedOption);
                }
            });
        });
        $(document).ready(function() {
            // '성별' 선택 상자의 변경 이벤트 리스너 등록
            $('#Color').change(function() {
                // 선택된 옵션의 값 가져오기
                var selectedOption = $(this).val();
                
                // 선택된 값이 'default'인 경우
                if (selectedOption === 'default') {
                    // 텍스트 필드를 비움
                    $('#proColor').val('');
                } else {
                    // 선택된 값으로 텍스트 필드 설정
                    $('#proColor').val(selectedOption);
                }
            });
        });
        $(document).ready(function() {
            // 입력 필드의 값을 콤마로 변환하는 함수
            function addCommas(input) {
                // 콤마가 포함된 문자열을 생성하여 반환
                return input.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
            }

            // 입력 필드의 값을 콤마 없이 숫자만 남기는 함수
            function removeCommas(input) {
                // 입력값에서 모든 콤마를 제거하고 반환
                return input.replace(/,/g, "");
            }

            // 입력 필드의 값을 감시하여 콤마를 추가하고 숫자 이외의 입력을 방지하는 이벤트 핸들러
            $("#proPrice").on("input", function() {
                // 입력값이 0으로 시작하는지 확인하여 0으로 시작하면 0을 제거하고 콤마를 추가하여 변환한 후 다시 입력 필드에 넣어줌
                var inputValue = removeCommas($(this).val());
                if (inputValue.startsWith("0")) {
                    inputValue = inputValue.substring(1); // 시작 값이 0이면 0을 제거
                }
                $(this).val(inputValue === "" ? "" : addCommas(inputValue)); // 빈 문자열인 경우 그대로 유지
            });

            // 입력 필드의 키 입력 이벤트 핸들러
            $("#proPrice").on("keypress", function(event) {
                // 입력된 키의 Unicode 값을 가져옴
                var charCode = event.which || event.keyCode;

                // 입력된 키가 숫자(0-9)가 아닌 경우와 백스페이스(8) 키를 제외한 경우 입력을 허용하지 않음
                if (charCode < 48 || charCode > 57 || charCode === 8) {
                    // 입력 이벤트 기본 동작을 중지하여 숫자 이외의 입을 방지하고 에러 메시지 표시
                    event.preventDefault();
                    $("#proPriceError").text("숫자만 입력할 수 있습니다.");
                }
            });
        });
        $(document).ready(function() {
            // proName 입력 필드의 키 입력 이벤트 핸들러
            $("#proPrice").on("input", function() {
                // 입력값에서 한글을 필터링하여 제거한 후 다시 입력 필드에 넣어줌
                var filteredValue = $(this).val().replace(/[ㄱ-ㅎㅏ-ㅣ가-힣]/gi, '');
                $(this).val(filteredValue);
            });
        });
       
        $(document).ready(function() {
            // 수정 버튼 클릭 시 이벤트 리스너 등록
            $('#submitBtn').click(function() {
                // 각 필드의 값 가져오기
                var proName = $('#proName').val();
                var proGender = $('#proGender').val();
                var proCategory = $('#proCategory').val();
                var proQty = $('#proQty').val();
                var proPrice = $('#proPrice').val();
                var proColor = $('#proColor').val();

                
                // 값이 비어 있는지 확인 (나머지 필드가 모두 null이고, proImage나 proImage1이 모두 null일 경우에만 오류 메시지 표시)
                if ((proCategory === '' || proName === '' || proGender === '' || proQty === '' || proPrice === '' || proColor === '')) {
                    // 오류 메시지 표시
                    alert('모든 필드를 입력하세요.');
                    event.preventDefault();
                }
            });
        });

        
        
        
    </script>
</body>
</html>
