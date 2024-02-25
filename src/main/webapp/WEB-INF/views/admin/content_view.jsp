<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AJAX MySQL Table Query1</title>
<link rel="stylesheet" type="text/css" href="./css/style.css"> <!-- style.css 파일을 불러옴 -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

</head>
<body>

<form action="modify" method="post">
    <div id="container">
        <div id="result"></div>
        <div id="text">
            <table>
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
                    <td><input type="text" id="proName" value="${content_view.proName}"></td>
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
                    <td><input type="file" id="proImage1">
                    <div id="imagePreview"></div></td>
                </tr>
                <tr>
                    <th>현재<br>이미지</th>
                    <td><input type="text" id="proImage2" size="30" value="${content_view.proImage2}" readonly="readonly"></td>
                </tr>
                 <tr>
                    <th>이미지</th>
                    <td><input type="file" id="proImage3">
                    <div id="imagePreview2"></div></td>
                </tr>
                <tr>
                    <th>현재<br>이미지</th>
                    <td><input type="text" id="proImage4" size="30" value="${content_view.proImage3}" readonly="readonly"></td>
                </tr>
                 <tr>
                    <th>이미지</th>
                    <td><input type="file" id="proImage5">
                    <div id="imagePreview3"></div></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="수정" id="submitBtn">
            <input type="submit"  value="삭제" id="delBtn">
        </div>
    </div>
    </form>
    
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
        $('#proImage3').change(function(event) {
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
                $('#proImage2').hide();
            };
            if (file) {
                reader.readAsDataURL(file);
            } else {
                // 파일이 선택되지 않은 경우 미리보기 이미지 제거 및 현재 이미지 텍스트 보이기
                var imagePreview = document.getElementById('imagePreview2');
                imagePreview.innerHTML = '';
                $('#proImage2').show();
            }
        });
    });

            $(document).ready(function() {
                // 파일 선택(input) 요소의 변경 이벤트 리스너 등록
                $('#proImage5').change(function(event) {
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
                        $('#proImage4').hide();
                    };
                    if (file) {
                        reader.readAsDataURL(file);
                    } else {
                        // 파일이 선택되지 않은 경우 미리보기 이미지 제거 및 현재 이미지 텍스트 보이기
                        var imagePreview = document.getElementById('imagePreview3');
                        imagePreview.innerHTML = '';
                        $('#proImage4').show();
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
                }
            });
        });

        
        
        
    </script>
</body>
</html>