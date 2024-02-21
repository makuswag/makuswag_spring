window.onload = function() {
    //AJAX요청
    $.ajax({
        type: "Post",
        url: "QueryServletUpdate",
        data: {name: name},
        success: function(response) {
            /* 서버에서 받은 응답 처리 */
            console.log(response)
            createTable(response)
        }
    })
}

function createTable(data) {
	
	dataReal = Array.from(data)
	
    let table = "<table border='1'>"
    table += "<tr><th>카테고리</th><th>제품이름</th><th>성별</th><th>색상</th><th>수량</th><th>가격</th><th>이미지</th></tr>"
    //데이터 행 추가
    for (let i = 0; i < data.length; i++) {
        table += "<tr>" +
             "<td id='"+ data[i].proCategory + ">"  +
		"<a href='#' onclick='handleClick(" + i + ")'>" +data[i].proCategory + "</a>" +
		"</td>" +
            "<td>"+ data[i].proName + "</td>" +
           "<td>"+ data[i].proGender + "</td>" +
            "<td>"+ data[i].proColor + "</td>" +
            "<td>"+ data[i].proQty + "</td>" +
            "<td>"+ data[i].proPrice + "</td>" +
            "<td><img src='/Team1_project/images/" + data[i].proImage + "' width='100' height='100'></td>" +
            "</tr>";
    }
    table += "</table>"
     $("#result").html(table); //result 는 index에 있는 div id="result"
   	 $("#result").css("width", "100%");
}
	

$("#name").addClass("dataInput");
