<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=48780f73936ef8fc317d37ebe0bd09ff"></script>
<style>
.panel {
	/* display: flex; */
	text-align: center;
	flex-direction: column;
	border: 1px solid #222;
	border-radius: 20px;
	padding: 10px;
	max-width: 1460px;
	/* min-height: 650px; */
	justify-content: center;
}

.mapwrap {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: space-around;
}

.map {
	max-width: 500px; /* 최대폭 */
	height: 400px; /* 지도가 표시될 높이 */
	width: 100%; /* 화면 전체를 100 */
	margin-bottom: 20px; /* 아래쪽 외부여백을 위아래 20px 띄어줌 */
	border: 2px solid lightgray; /* 테두리선 두께 2px 실선 선색상 */
	border-radius: 20px; /* 모서리 20px 굴려줌 */
}
</style>
<div class="panel">
	<div>
		<h2>
			<b>Mak U Swag</b>
		</h2>
	</div>
	<hr style="height: 2px" />
	<div>
		<h3>
			<b>찾아오시는 곳</b>
		</h3>
	</div>
	<hr style="height: 2px" />
	<div class="mapwrap">
		<div id="map" class="map"></div>
		<!-- <div id="map" style="width:500px;height:400px;"></div> -->
		<script type="text/javascript">
					//console.log(document.getElementById("map"));
					//document.querySelector("#map");
					const container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
					//배열 선언 - 마커를 여러개 표시하고 싶은 경우일때 참고
					//자바스크립트 배열 복습 -> 깊은복사(새로운 배열 생성해서 사용함)와 얕은 복사(원본사용함)
					const positions = [ {
						content : "<div style='padding: 5px; text-align: center;'><h5>Mak U Swag</h5><img src='./images/CompanyLogo.png' alt='로고' class='logo-img' width='150px' height='150px'></div>",
						latlng : new kakao.maps.LatLng(37.494708, 127.030082)
					} ];
					const options = { //지도를 생성할 때 필요한 기본 옵션
						center : positions[0].latlng,
						level : 4
					//지도의 레벨(확대, 축소 정도)
					};
					const map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

					//제목: 카카오 맵에 마커 표시하기
					// 지도를 클릭한 위치에 표출할 마커입니다
					const marker = new kakao.maps.Marker({
						map : map, //마커를 표시할 지도
						// 지도 중심좌표에 마커를 생성합니다 
						position : positions[0].latlng
					//마커의 위치 잡아주기
					});
					// 마커에 표시할 인포윈도우를 생성하기
					const infoWindow = new kakao.maps.InfoWindow({
						//생성자 안에 좌중괄호 우중괄호를 붙이면 실행문 작성 가능함
						content : positions[0].content
					//인포윈도우(다이얼로그창, 팝업창)에 표시할 내용
					});//아래코드에서 클로저를 사용할 때는 반드시 세미콜론 붙일 것.

					// 마커에 이벤트를 등록하는 함수 구현
					// 구현하는 즉시 실행시키기 위해서 클로저 사용함
					(function(marker, infoWindow) {
						//마커에 mouseover 이벤트를 등록하고 마우스 오버시에 인포윈도우를 표시함
						//@param:marker는 이벤트 소스이다
						//@param:marker에 적용할 수 있는 이벤트 핸들러 이름임
						//@param:콜백함수-네가 마커에 마우스 오버 시키면 내가 실행을 약속할께 
						kakao.maps.event.addListener(marker, 'mouseover',
								function() {
									infoWindow.open(map, marker);
								});
						//마커에 mouseout 이벤트를 등록하고 마우스 아웃시에 인포윈도우를 닫음
						kakao.maps.event.addListener(marker, 'mouseout',
								function() {
									infoWindow.close();
								});
					})(marker, infoWindow);//여기 괄호가 함수를 호출하는 코드임

					// 지도에 마커를 표시합니다
					marker.setMap(map);
				</script>
	</div>
	<hr style="height: 2px" />
	<table class="table" style="minWidth: 700px; border: 1px solid black;">
		<tbody style="border: 1px solid black">
			<tr>
				<td style="border-bottom: 1px solid black"><b><h3>주소</h3></b></td>
				<td style="border-bottom: 1px solid black"><b><h4>서울특별시 강남구 강남대로 78길 8 한국빌딩 4층 (T: 02-123-4567)</h4></b></td>
			</tr>
			<tr>
				<td style="border-bottom: 1px solid black"><b><h3>버스</h3></b></td>
				<td style="border-bottom: 1px solid black"><b><h4>강남역 정류장 지선 9202 일반 4312</h4></b></td>
			</tr>
			<tr>
				<td style="border-bottom: 1px solid black"><b><h3>지하철</h3></b></td>
				<td style="border-bottom: 1px solid black"><b><h4>지하철 2호선 강남역 4번출구 200m</h4></b></td>
			</tr>
		</tbody>
	</table>

</div>
