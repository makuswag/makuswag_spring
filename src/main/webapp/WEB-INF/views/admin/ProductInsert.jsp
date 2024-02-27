<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Combo Box Example</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <style>
    @keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}
    	h3{
    	    margin-top: 12%; /* 수정된 부분: 헤딩의 상단 마진을 줄임 */
    	    margin-bottom: 5%; /* 수정된 부분: 헤딩의 하단 마진을 줄임 */
    	    margin-left: 15%;
    	}
    	body {
    	    height: 330vh;
    	    background-size: 100% 100%;
            background :   linear-gradient(180deg, rgba(228, 220, 207, 1) 0%, rgba(245, 240, 187, 1) 38%, rgba(125, 157, 156, 1) 100%);; /* 짝수 행의 배경색을 지정합니다. */
        }
        queryButton{
    	    margin-left: 15%;
    	}
        #textField,#genderText {
            text-align: center; /* 텍스트를 가운데 정렬합니다. */
        }
        input[type="text"] {
            text-align: center; /* 가운데 정렬 */
        }
        #imagePreview {
            margin-top: 10px; /* 파일 첨부란과 이미지 미리 보기 요소 간에 상단 여백 추가 */
        }
        table {
            border-collapse: collapse; /* 테이블 셀 경계를 병합하여 경계를 만듭니다. */
            width: 80%;
            height: 500px;
            margin: 0 auto;
            margin-top: 0%;
            margin-left: 15%;
            margin-bottom: 2%; /* 수정된 부분: 테이블의 하단 마진을 줄임 */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
#queryButton {
    margin-left: 15%; /* 원하는 위치로 버튼을 이동합니다. */
    margin-top: 5%; /* 버튼의 위쪽 여백을 설정합니다. */
    width: 20%;
    padding: 10px 20px; /* 내부 여백 설정 */
    border: none; /* 테두리 제거 */
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
    color: black; /* 글자색 설정 */
    text-align: center; /* 텍스트 가운데 정렬 */
    text-decoration: none; /* 텍스트에 밑줄 제거 */
    display: inline-block; /* 인라인 요소로 표시 */
    font-size: 16px; /* 글자 크기 설정 */
    transition-duration: 0.4s; /* 호버 효과의 전환 지속 시간 설정 */
    cursor: pointer; /* 커서 모양 설정 */
}
        th, td {
            border: none; /* 테이블 셀 경계를 없앰 */
            text-align: center; /* 텍스트를 가운데 정렬합니다. */
            padding: 10px;
            width: 20px;
        }
        th {
            background-color: #f2f2f2; /* 테이블 헤더 배경색을 지정합니다. */
        }
         tr:nth-child(even) {
            background-color: linear-gradient(180deg, rgba(228, 220, 207, 1) 0%, rgba(245, 240, 187, 1) 38%, rgba(125, 157, 156, 1) 100%);; /* 짝수 행의 배경색을 지정합니다. */
        }
        tr:hover {
            background-color: white;
        }
        .error-message {
            color: red; /* 빨간색으로 메시지 색상 지정 */
            font-size: 10px;
        }
        select {
            text-align: center;
        }
    </style>
</head>
<body>
    <h3 style="font-size: 30px;">제품 등록</h3>
    <form action="insert" method="post" enctype="multipart/form-data">
        <table>
            <tr>
                <td>Category:</td>
                <td>
                    <select id="proCategory" name="proCategory">
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
                </td>
            </tr>
        <tr>
    	<td>ProName:</td>
    	<td>
        	<input type="text" id="proName" name="proName" size="15">
        	<span id="errorMessage" class="error-message"></span>
   		</td>
		</tr>
            <tr>
                <td>Gender:</td>
                <td>
                    <select id="proGender" name="proGender">
                    	<option value="default">선택하세요</option>
                    	<option value="공용">공용</option>
                        <option value="남">남</option>
                        <option value="여">여</option>
                    </select>
                    <!-- 텍스트 필드 추가 -->
                    
                </td>
            </tr>
            <tr>
                <td>ProIntroduction:</td>
               <td><textarea id="proIntroduction" name="proIntroduction" rows="4" cols="30"></textarea></td>
                
            </tr>
            <tr>
                <td>ProColor:</td>
                <td>
                    <select id="proColor" name="proColor">
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
                    
                </td>
            </tr>
            <tr>
                <td>ProQty:</td>
                <td>
                    <select id="proQty" name="proQty">
                	<option value="default">선택하세요</option>
                        <% for (int i = 1; i <= 100; i++) { %>
                            <option value="<%= i %>"> <%= i %> </option>
                        <% } %>
                    </select>
                    <!-- 텍스트 필드 추가 --> ea
                </td>
            </tr>
            <tr>
                <td>ProPrice:</td>
                <td><input type="text" id="proPrice" name="proPrice" size="7"> KRW
                <span id="proPriceError" class="error-message"></span>
                </td>
                
            </tr>
            <tr>
                <td>이미지1:</td>
                <td>
                    <input type="file" id="proImage1" name="proImage1" accept="image/*" onchange="previewImage(event)">
                    <div id="imagePreview"></div>
                </td>
            </tr>
            <tr>
                <td>이미지2:</td>
                <td>
                    <input type="file" id="proImage2" name="proImage2" accept="image/*" onchange="previewImage1(event)">
                    <div id="imagePreview1"></div>
                </td>
            </tr>
            
            <tr>
                <td>이미지3:</td>
                <td>
                    <input type="file" id="proImage3" name="proImage3" accept="image/*" onchange="previewImage2(event)">
                    <div id="imagePreview2"></div>
                </td>
            </tr>
            
        </table>
        <input type="submit" id="queryButton" value="등록하기" onclick="insert()"/>
        <span id="errorMessage1" class="error-message"></span>
    </form>
    <script type="text/javascript">
        function previewImage(event) {
            var reader = new FileReader();
            reader.onload = function(){
                var output = document.getElementById('imagePreview');
                output.innerHTML = '<img src="' + reader.result + '" width="100" />';
            };
            reader.readAsDataURL(event.target.files[0]);
        }
        $(document).ready(function() {
            // 파일 선택(input type="file") 요소의 change 이벤트 감지
            $("#proImage1").change(function() {
                // 파일이 선택되었는지 확인
                if (this.files && this.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function(e) {
                        // 선택된 파일의 미리보기 이미지를 보여줌
                        $("#imagePreview").html('<img src="' + e.target.result + '" width="100" />');
                    };
                    reader.readAsDataURL(this.files[0]);
                } else {
                    // 파일이 선택되지 않았을 때는 미리보기 이미지만 지움
                    $("#imagePreview").html("");
                }
            });

            // 파일 선택 요소에 대해 각각의 미리보기 영역과 메시지를 적용하려면 해당 요소들의 ID를 사용하여 각각의 change 이벤트에 대한 처리를 추가하면 됩니다.
        });
        function previewImage1(event) {
            var reader = new FileReader();
            reader.onload = function(){
                var output = document.getElementById('imagePreview1');
                output.innerHTML = '<img src="' + reader.result + '" width="100" />';
            };
            reader.readAsDataURL(event.target.files[0]);
        }
        $(document).ready(function() {
            // 파일 선택(input type="file") 요소의 change 이벤트 감지
            $("#proImage2").change(function() {
                // 파일이 선택되었는지 확인
                if (this.files && this.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function(e) {
                        // 선택된 파일의 미리보기 이미지를 보여줌
                        $("#imagePreview1").html('<img src="' + e.target.result + '" width="100" />');
                    };
                    reader.readAsDataURL(this.files[0]);
                } else {
                    // 파일이 선택되지 않았을 때는 미리보기 이미지만 지움
                    $("#imagePreview1").html("");
                }
            });

            // 파일 선택 요소에 대해 각각의 미리보기 영역과 메시지를 적용하려면 해당 요소들의 ID를 사용하여 각각의 change 이벤트에 대한 처리를 추가하면 됩니다.
        });
        function previewImage2(event) {
            var reader = new FileReader();
            reader.onload = function(){
                var output = document.getElementById('imagePreview2');
                output.innerHTML = '<img src="' + reader.result + '" width="100" />';
            };
            reader.readAsDataURL(event.target.files[0]);
        }
        $(document).ready(function() {
            // 파일 선택(input type="file") 요소의 change 이벤트 감지
            $("#proImage3").change(function() {
                // 파일이 선택되었는지 확인
                if (this.files && this.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function(e) {
                        // 선택된 파일의 미리보기 이미지를 보여줌
                        $("#imagePreview2").html('<img src="' + e.target.result + '" width="100" />');
                    };
                    reader.readAsDataURL(this.files[0]);
                } else {
                    // 파일이 선택되지 않았을 때는 미리보기 이미지만 지움
                    $("#imagePreview2").html("");
                }
            });

            // 파일 선택 요소에 대해 각각의 미리보기 영역과 메시지를 적용하려면 해당 요소들의 ID를 사용하여 각각의 change 이벤트에 대한 처리를 추가하면 됩니다.
        });
        
        
        $(document).ready(function(){
            $('#proName').on('input', function() {
                var inputVal = $(this).val();
                var regex = /^[a-zA-Z0-9\sㄱ-힣]*$/; // 특수문자를 허용하지 않는 정규식

                if (!regex.test(inputVal)) {
                    $('#errorMessage').text('특수문자는 입력할 수 없습니다.');
                    $(this).val(''); // 입력한 값을 지우고
                } else {
                    $('#errorMessage').text(''); // 에러 메시지를 지웁니다.
                }
            });
        });

        $(document).ready(function() {
            $("#name").on("input", function() {
                var inputText = $(this).val(); // 입력된 텍스트 가져오기
                var specialChars = /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]+/; // 특수문자 정규식 패턴

                if (specialChars.test(inputText)) { // 입력된 텍스트에 특수문자가 포함된 경우
                    $("#errorMessage").text("특수문자는 사용할 수 없습니다."); // 오류 메시지 표시
                } else {
                    $("#errorMessage").text(""); // 오류 메시지 지우기
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

            // 입력 필드의 값을 감시하여 콤마를 추가하는 이벤트 핸들러
            $("input#proPrice").on("input", function() {
                // 입력값에서 콤마를 제거하고 콤마를 추가하여 변환한 후 다시 입력 필드에 넣어줌
                $(this).val(addCommas(removeCommas($(this).val())));
            });
            $("input#proPrice").on("keypress", function(event) {
                // 입력된 키 코드 가져오기
                var keyCode = event.keyCode || event.which;
                // 숫자(0-9) 키 코드 범위인지 확인
                if (keyCode < 48 || keyCode > 57) {
                    // 숫자가 아니면 입력을 취소
                    event.preventDefault();
                    $("#proPriceError").text("숫자만 입력할 수 있습니다.");
                } else {
                    // 숫자인 경우 에러 메시지 제거
                    $("#proPriceError").text("");
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
            // 등록하기 버튼 클릭 시 이벤트 처리
            $("#queryButton").on("click", function() {
                // 텍스트 필드와 이미지 요소 가져오기
                var textFieldValue1 = $("#proName").val();
                var comboBoxValue1 = $("#proGender").val();
                var textFieldValue2 = $("#proPrice").val();
                var comboBoxValue2 = $("#proQty").val();
                var comboBoxValue3 = $("#proCategory").val();
                var textFieldValue3 = $("#proIntroduction").val();
                var comboBoxValue4 = $("#proColor").val();

                
                var imageSrc = $("#imagePreview img").attr("src");
                var imageSrc1 = $("#imagePreview1 img").attr("src");
                var imageSrc2 = $("#imagePreview2 img").attr("src");

                // 값이 없는 경우 에러 메시지 표시
                if (comboBoxValue1 === "default"||comboBoxValue2 === "default"||comboBoxValue3 === "default"||comboBoxValue4 === "default"||!textFieldValue1 || textFieldValue1.trim() === "" ||!textFieldValue2 || textFieldValue2.trim() === "" ||!textFieldValue3 || textFieldValue3.trim() === "" || !imageSrc || imageSrc.trim() === ""|| !imageSrc1 || imageSrc1.trim() === ""|| !imageSrc2 || imageSrc2.trim() === "") {
                    $("#errorMessage1").text("모든 필드를 입력하세요.");// 폼 전송 방지
                    return false;
                } else {
                    // 값이 있는 경우 페이지 이동
                    alert("상품이 등록되었습니다");
                    return true;

                }
            });
        });
        
        
      
    </script>

</body>
</html>
