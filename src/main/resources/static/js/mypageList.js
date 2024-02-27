

/* 윈도우가 실행될 때 처음부터 값을 가져온다 */
window.onload = function() {
	console.log("js실행됨1");
	// 오늘 날짜를 가져옴
	function getCurrentDate() {
		const today = new Date();
		// today.getFullYear: 오늘 날짜 반환해줌
		const year = today.getFullYear();
		//today.getMonth() + 1: month에 1을 더하는 이유는 월이 0부터 시작해   padStart(2, '0'): 한 자리 숫자인 경우 앞에 0을 추가함-> (2,0)이면 문자역이 2글자가 되게 만듬 근데 추가하는 문자가 0인거
		const month = String(today.getMonth() + 1).padStart(2, '0');
		const day = String(today.getDate()).padStart(2, '0');
		return `${year}-${month}-${day}`;
	}
	console.log("js실행됨2");
	// 각 버튼에 클릭 이벤트 추가
	document.querySelectorAll('.period a').forEach(function(button) {
		button.addEventListener('click', function() {
			const daysToSubtract = parseInt(this.getAttribute('days'), 10);
			document.getElementById('history_start_date').value = adjustDate(daysToSubtract);
		});
	}); console.log("js실행됨3");
	// 날짜 조정(클릭된 날짜)
	function adjustDate(daysToSubtract) {
		const currentDate = new Date();
		currentDate.setDate(currentDate.getDate() - daysToSubtract);
		const year = currentDate.getFullYear();
		const month = String(currentDate.getMonth() + 1).padStart(2, '0');
		const day = String(currentDate.getDate()).padStart(2, '0');
		return `${year}-${month}-${day}`;
	}


	console.log("js실행됨4");
	// history_start_date와 history_end_date의 기본값을 오늘 날짜로 설정
	//document.getElementById('history_start_date').value = getCurrentDate();
	document.getElementById('history_end_date').value = getCurrentDate();
	const startDate = document.getElementById('history_start_date').value;
	const endDate = document.getElementById('history_end_date').value;
	console.log("endDate: " + endDate);
	console.log("startDate: " + startDate);

	//시작일이랑 종료일을 보냄
	const searchData = {
		startDate: startDate,
		endDate: endDate
	};
	JSON.stringify(searchData)
	console.log("시작일자 확인" + searchData)
	console.log("js실행됨5");


	// AJAX 요청(조건검색) 
	$.ajax({
		type: "GET",
		url: "/MyPageController",
		data: searchData,
		success: function(response) {
			/* 서버에서 받은 응답 처리 */
			console.log("createTable 실행전");
			createTable(response); // json
			console.log("createTable 실행후");
		}
	});

}

function createTable(jsonString) {
	// JSON 문자열을 파싱하여 배열로 변환
	//'{"name": "John", "age": 30, "city": "New York"}' json 은 이런형태로 데이터가 들어오기때문에 JavaScript 객체로 변환해야지 사용가능함
	let dataarray = JSON.parse(jsonString);

	console.log("서버에서 받은 데이터:", dataarray);

	let accordion = "<div class='accordion-list'>";
	console.log("테이블 만드는거 실행됨");

	for (let i = 0; i < dataarray.length; i++) {
		console.log("현재 데이터 배열 요소:", dataarray[i]);
		let purSeq = dataarray[i].purSeq;
		console.log("purSeq:", purSeq);

		accordion += "<div class='list-item xans-record-'>";
		accordion += "<a class='post-link'>";
		accordion += "<span class='number1'>" + dataarray[i].purSeq + "</span>";
		accordion += "<span class='number3'>" + dataarray[i].proName + "</span>";
		accordion += "<span class='number1'>" + dataarray[i].pQty + "</span>";
		accordion += "<span class='number1'>" + dataarray[i].pPrice + "</span>";
		accordion += "<span class='number1'>" + dataarray[i].pStackPoint + "</span>";


		// 연월일만 추출
		let fullDate = dataarray[i].pDate;
		let formattedDate = fullDate.substring(0, 10); // 년월일만 추출
		accordion += "<span class='number1'>" + formattedDate + "</span>";
		let proName = dataarray[i].proName;
		accordion += "<button class='number2' onclick='window.location.href=\"reviewWrite?proName=" + encodeURIComponent(proName) + "\"'>리뷰작성</button>";
		console.log(dataarray[i].proName);

		accordion += "</a>";
		accordion += "</div>";
	}

	accordion += "</div>";
	$("#result").html(accordion);
	// 리뷰작성 버튼에 이벤트 리스너 추가
}
//조회버튼 눌렀을때 액션
function searchData() {
	console.log("서칭 실행됨");
	// 시작일과 종료일 값을 가져옴 
	const startDate = document.getElementById('history_start_date').value;
	const endDate = document.getElementById('history_end_date').value;
	console.log("endDate: " + endDate);
	console.log("startDate: " + startDate);
	//시작일이랑 종료일을 보냄
	const searchData = {
		startDate: startDate,
		endDate: endDate
	};
	console.log(searchData)
	$.ajax({
		type: "GET",
		url: "/MyPageController",
		data: searchData,
		success: function(response) {
			/* 서버에서 받은 응답 처리 */
			createTable(response); // json
		}
	});
}

