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
	
    let table = "<table border='1' style='margin-top: 20px'>";
    
  
    
    table += "<tr><th>번호</th><th>카테고리</th><th>이름</th><th>성별</th><th>색상</th><th>수량</th><th>개당 가격</th><th>이미지1</th><th>이미지2</th><th>이미지3</th><th>등록일/수정일</th></tr>"
    //데이터 행 추가
    for (let i = 0; i < data.length; i++) {
        table += "<tr>" +
        "<td style='width: 7%'>"+  (data[i].proSeq ? data[i].proSeq : '') + "</td>" +
             "<td style='width: 11%' id='"+ data[i].proCategory + ">"  +
		"<a href='#' onclick='handleClick(" + i + ")'>" +data[i].proCategory + "</a>" +
		"</td>" +
            "<td style='width: 15%'>"+  (data[i].proName ? data[i].proName : '') + "</td>" +
           "<td style='width: 6%'>"+ (data[i].proGender ? data[i].proGender : '')+ "</td>" +
            "<td style='width: 6%'>"+ (data[i].proColor ? data[i].proColor : '') + "</td>" +
            "<td style='width: 6%'>"+ (data[i].proQty ? data[i].proQty : '') + "</td>" +
            "<td style='width: 10%'>"+ (data[i].proPrice ? data[i].proPrice : '')  + "</td>" +
            "<td style='width: 8%'><img src='/Team1_project/images/" + data[i].proImage1 + "' width='50' height='50'></td>" +
            "<td style='width: 8%'><img src='/Team1_project/images/" + data[i].proImage2 + "' width='50' height='50'></td>" +
            "<td style='width: 8%'><img src='/Team1_project/images/" + data[i].proImage3 + "' width='50' height='50'></td>" +
             "<td style='width: 16%'>"+ (data[i].proDate ? data[i].proDate : '') + "</td>" +
            "</tr>";
    }
    table += "</table>"
     $("#result").html(table); //result 는 index에 있는 div id="result"
   	 $("#result").css("width", "200%");
}
function handleClick(index){
	
	$("#proName").prop("readonly",false);
	$("#proPrice").prop("readonly",false);
	 $("#Category, #Gender, #quantity,#Color").val("default").prop("disabled", false);
	
	
	let inputproSeq = document.getElementById("proSeq")
	let inputproCategory = document.getElementById("proCategory")
	let inputproName = document.getElementById("proName")
	let inputproGender = document.getElementById("proGender")
	let inputproColor = document.getElementById("proColor")
	let inputproQty = document.getElementById("proQty")
	let inputproPrice = document.getElementById("proPrice")
	let inputproImage = document.getElementById("proImage")
	let inputproImage1 = document.getElementById("proImage2")
	let inputproImage2 = document.getElementById("proImage4")
	
	inputproSeq.value = dataReal[index].proSeq
	inputproCategory.value = dataReal[index].proCategory
	inputproName.value = dataReal[index].proName
	inputproGender.value = dataReal[index].proGender
	inputproColor.value = dataReal[index].proColor
	inputproQty.value = dataReal[index].proQty
	inputproPrice.value = dataReal[index].proPrice
	inputproImage.value = dataReal[index].proImage1
	inputproImage1.value = dataReal[index].proImage2
	inputproImage2.value = dataReal[index].proImage3
	
	$("#Category").val("default");
    $("#quantity").val("default");
    $("#Gender").val("default");
    $("#Color").val("default");
	
	console.log(inputproImage)

}

$(document).ready(function() {
    /* 버튼 클릭시 AJAX 요청 */
    $("#queryButton").click(function() {
        /* 입력된 데이터 가져오기 */
        let name = $("#name").val()
        /* AJAX 요청 */
        $.ajax({
            type: "POST",
            url: "QueryServletUpdate",
            data: {name: name},
            success: function(response) {
                /* 서버에서 받은 응답 처리 */
                //$("#result").html(response)
                createTable(response)
            }
        })
    })
})

	
	$(document).ready(function() {
    $("#submitBtn").click(function() {
        // proImage1과 proImage 필드의 값을 가져옴
        let proImage1 = $("#proImage1").val();
        let proImage = $("#proImage").val();
        let proImage3 = $("#proImage3").val();
        let proImage2 = $("#proImage2").val();
        let proImage5 = $("#proImage5").val();
        let proImage4 = $("#proImag4").val();
        
        // proImage1에 값이 없고 proImage에만 값이 있는 경우
       if (!proImage1 && !proImage3 && !proImage5) {
            // 이미지를 업로드하지 않고 나머지 필드만 업데이트하는 AJAX 요청
            updateProductWithoutImage();
        } else if(proImage1 && proImage3 && proImage5){
			uploadAndUpdateProduct()
			
		}
          else{
			  uploadAndUpdateProduct2()
			  
		  }
    });
});

// 이미지를 업로드하지 않고 나머지 필드만 업데이트하는 함수
function updateProductWithoutImage() {
	
	let Seq = $("#proSeq").val();
    let Category = $("#proCategory").val();
    let Name = $("#proName").val();
    let Gender = $("#proGender").val();
    let Color = $("#proColor").val();
    let Qty = $("#proQty").val();
    let Price = $("#proPrice").val();
    
    // AJAX 요청
    $.ajax({
        type: "POST",
        url: "UpdateProductServlet", // 제품을 업데이트할 서블릿 주소
        data: {
			Seq : Seq,
            Category: Category,
            Name: Name,
            Gender: Gender,
            Color: Color,
            Qty: Qty,
            Price: Price,
        },
        success: function(response) {
					/* 서버에서 받은 응답 처리 */
					//$("#result").html(response)
					//수정 후 디비를 다시불러와야함.
						$.ajax({
							type: "POST",
							url: "QueryServletUpdate",
							data: {name : name},
							success: function(response) {
									/* 서버에서 받은 응답 처리 */
								createTable(response) //json
		}
	})
				$("#proSeq").val("");
               	$("#proName").val("");
	 			$("#name").val("");
                $("#proCategory").val("");
                $("#proGender").val("");
                $("#proColor").val("");
                $("#proQty").val("");
                $("#proPrice").val("");
                $('#proImage').val("");
                $('#proImage2').val("");
                $('#proImage4').val("");
                $('#Category').val('default');
                $('#Gender').val('default');
                $('#quantity').val('default');

					alert("수정되었습니다.")
					
				},
				error : function(xhr,status,error){
					alert("수정 문제 발생"+ error)
				}
			})
		}
	$(document).ready(function() {
	$("#delBtn").click(function() {
	
	let Seq = $("#proSeq").val();
    
    // AJAX 요청
    $.ajax({
        type: "POST",
        url: "DelProductServlet", // 제품을 업데이트할 서블릿 주소
        data: {
			Seq : Seq,
        },
        success: function(response) {
					/* 서버에서 받은 응답 처리 */
					//$("#result").html(response)
					//수정 후 디비를 다시불러와야함.
						$.ajax({
							type: "POST",
							url: "QueryServletUpdate",
							data: {name : name},
							success: function(response) {
									/* 서버에서 받은 응답 처리 */
								createTable(response) //json
		}
	})
				$("#proSeq").val("");
               	$("#proName").val("");
	 			$("#name").val("");
                $("#proCategory").val("");
                $("#proGender").val("");
                $("#proColor").val("");
                $("#proQty").val("");
                $("#proPrice").val("");
                $('#proImage').val("");
                 $('#proImage2').val("");
                  $('#proImage4').val("");
                $('#Category').val('default');
                $('#Gender').val('default');
                $('#quantity').val('default');

					alert("수정되었습니다.")
					
				},
				error : function(xhr,status,error){
					alert("수정 문제 발생"+ error)
				}
			})
		});
		});

// 이미지를 포함하여 모든 필드를 업데이트하는 함수
function uploadAndUpdateProduct() {
    // 이미지 파일 선택
    let file = $("#proImage1")[0].files[0];

    let file1 = $("#proImage3")[0].files[0];

    let file2 = $("#proImage5")[0].files[0];

    
    // 이미지를 FormData에 추가
    let formData = new FormData();
    formData.append('image', file);
    formData.append('image1', file1);
    formData.append('image2', file2);
    
    // 이미지를 서버에 업로드하는 AJAX 요청
    $.ajax({
        type: "POST",
        url: "UploadImageServlet", // 이미지를 업로드할 서블릿 주소
        data: formData,
        processData: false,
        contentType: false,
        success: function(data) {
			let relativeImagePath = data.split('\n')[0];
   			let relativeImagePath1 = data.split('\n')[1];
    		let relativeImagePath2 = data.split('\n')[2];


			
            // 이미지가 성공적으로 업로드되면 imagePath를 받아와서 나머지 필드와 함께 업데이트 요청
            let Seq = $("#proSeq").val();
            let Category = $("#proCategory").val();
            let Name = $("#proName").val();
            let Gender = $("#proGender").val();
            let Color = $("#proColor").val();
            let Qty = $("#proQty").val();
            let Price = $("#proPrice").val();
            
            
            // AJAX 요청
            $.ajax({
                type: "POST",
                url: "UpdateProductServlet2", // 제품을 업데이트할 서블릿 주소
                data: {
					Seq : Seq,
                    Category: Category,
                    Name: Name,
                    Gender: Gender,
                    Color: Color,
                    Qty: Qty,
                    Price: Price,
                    ImagePath: relativeImagePath, // 이미지 파일의 경로를 전달
                     ImagePath1: relativeImagePath1,
                      ImagePath2: relativeImagePath2

                },
                success: function(response) {
					/* 서버에서 받은 응답 처리 */
					 console.log(response);
					//$("#result").html(response)
					//수정 후 디비를 다시불러와야함.
						$.ajax({
							type: "POST",
							url: "QueryServletUpdate",
							data: {name : name},
							success: function(response) {
									/* 서버에서 받은 응답 처리 */
								createTable(response) //json
		}
	})
				$("#proSeq").val("");
	 			$("#proName").val("");
	 			$("#name").val("");
                $("#proCategory").val("");
                $("#proGender").val("");
                $("#proColor").val("");
                $("#proQty").val("");
                $("#proPrice").val("");
                $("#proImage1").val("");
                $('#proImage').val("");
                $("#proImage2").val("");
                $('#proImage3').val("");
                $("#proImage4").val("");
                $('#proImage5').val("");
                $('#Category').val('default');
                $('#Gender').val('default');
                $('#quantity').val('default');
                var imagePreview = document.getElementById('imagePreview');
                imagePreview.innerHTML = '';
                $('#proImage').show();
                 var imagePreview = document.getElementById('imagePreview2');
                imagePreview.innerHTML = '';
                $('#proImage2').show();
                 var imagePreview = document.getElementById('imagePreview3');
                imagePreview.innerHTML = '';
                $('#proImage4').show();
                
                
					alert("수정되었습니다.")
					
				},
				error : function(xhr,status,error){
					alert("수정 문제 발생"+ error)
				}
			})
		}
		})}
		
function uploadAndUpdateProduct2() {
    // 이미지 파일 선택
    let file = $("#proImage1")[0].files[0];

    let file1 = $("#proImage3")[0].files[0];

    let file2 = $("#proImage5")[0].files[0];
    
    // 이미지를 FormData에 추가
    let formData = new FormData();
    formData.append('image', file);
    formData.append('image1', file1);
    formData.append('image2', file2);
    
    // 이미지를 서버에 업로드하는 AJAX 요청
    $.ajax({
        type: "POST",
        url: "UploadImageServlet2", // 이미지를 업로드할 서블릿 주소
        data: formData,
        processData: false,
        contentType: false,
        success: function(data) {
			let relativeImagePath = data.split('\n')[0];
   			let relativeImagePath1 = data.split('\n')[1];
    		let relativeImagePath2 = data.split('\n')[2];


			
            // 이미지가 성공적으로 업로드되면 imagePath를 받아와서 나머지 필드와 함께 업데이트 요청
            let Seq = $("#proSeq").val();
            let Category = $("#proCategory").val();
            let Name = $("#proName").val();
            let Gender = $("#proGender").val();
            let Color = $("#proColor").val();
            let Qty = $("#proQty").val();
            let Price = $("#proPrice").val();
            
            
            // AJAX 요청
            $.ajax({
                type: "POST",
                url: "UpdateProductServlet3", // 제품을 업데이트할 서블릿 주소
                data: {
					Seq : Seq,
                    Category: Category,
                    Name: Name,
                    Gender: Gender,
                    Color: Color,
                    Qty: Qty,
                    Price: Price,
                    ImagePath: relativeImagePath, // 이미지 파일의 경로를 전달
                     ImagePath1: relativeImagePath1,
                      ImagePath2: relativeImagePath2

                },
                success: function(response) {
					/* 서버에서 받은 응답 처리 */
					 console.log(response);
					//$("#result").html(response)
					//수정 후 디비를 다시불러와야함.
						$.ajax({
							type: "POST",
							url: "QueryServletUpdate",
							data: {name : name},
							success: function(response) {
									/* 서버에서 받은 응답 처리 */
								createTable(response) //json
		}
	})
				$("#proSeq").val("");
	 			$("#proName").val("");
	 			$("#name").val("");
                $("#proCategory").val("");
                $("#proGender").val("");
                $("#proColor").val("");
                $("#proQty").val("");
                $("#proPrice").val("");
                $("#proImage1").val("");
                $('#proImage').val("");
                $("#proImage2").val("");
                $('#proImage3').val("");
                $("#proImage4").val("");
                $('#proImage5').val("");
                $('#Category').val('default');
                $('#Gender').val('default');
                $('#quantity').val('default');
                var imagePreview = document.getElementById('imagePreview');
                imagePreview.innerHTML = '';
                $('#proImage').show();
                 var imagePreview = document.getElementById('imagePreview2');
                imagePreview.innerHTML = '';
                $('#proImage2').show();
                 var imagePreview = document.getElementById('imagePreview3');
                imagePreview.innerHTML = '';
                $('#proImage4').show();

					alert("수정되었습니다.")
					
				},
				error : function(xhr,status,error){
					alert("수정 문제 발생"+ error)
				}
			})
		}
		})}
				
				