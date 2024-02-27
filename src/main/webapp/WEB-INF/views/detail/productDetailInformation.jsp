<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productDetailInformation</title>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="icon" href="./images/CompanyLogo.png">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
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

				<div class="single-product">

					<div
						class="xans-element- xans-product xans-product-image product-images slick-initialized slick-slider slick-dotted">
						<div class="slick-list draggable">
							<div class="slick-track"
								style="opacity: 1; width: 3900px; transform: translate3d(-780px, 0px, 0px);">
								<div class="slide  slick-slide slick-cloned"
									data-slick-index="-1" aria-hidden="true" style="width: 780px;"
									tabindex="-1">
									<img
										src="https://cafe24img.poxo.com/faderoom/web/product/medium/202303/fa842bf19684308841bb8cceb42dbe27.jpg"
										alt="">
								</div>
								<div class="slide  slick-slide slick-current slick-active"
									data-slick-index="0" aria-hidden="false" style="width: 780px;"
									tabindex="0" role="tabpanel" id="slick-slide00"
									aria-describedby="slick-slide-control00">
									<img
										src="https://cafe24img.poxo.com/faderoom/web/product/big/202303/aa30da71a1ebc6b3692703476ee5c038.jpg"
										alt="">
								</div>
								<div class="slide  slick-slide" data-slick-index="1"
									aria-hidden="true" style="width: 780px;" tabindex="-1"
									role="tabpanel" id="slick-slide01"
									aria-describedby="slick-slide-control01">
									<img
										src="https://cafe24img.poxo.com/faderoom/web/product/medium/202303/fa842bf19684308841bb8cceb42dbe27.jpg"
										alt="">
								</div>
								<div class="slide  slick-slide slick-cloned"
									data-slick-index="2" aria-hidden="true" style="width: 780px;"
									tabindex="-1">
									<img
										src="https://cafe24img.poxo.com/faderoom/web/product/big/202303/aa30da71a1ebc6b3692703476ee5c038.jpg"
										alt="">
								</div>
								<div class="slide  slick-slide slick-cloned"
									data-slick-index="3" aria-hidden="true" style="width: 780px;"
									tabindex="-1">
									<img
										src="https://cafe24img.poxo.com/faderoom/web/product/medium/202303/fa842bf19684308841bb8cceb42dbe27.jpg"
										alt="">
								</div>
							</div>
						</div>

						<ul class="slick-dots" style="display: block;" role="tablist">
							<li class="slick-active" role="presentation"><button
									type="button" role="tab" id="slick-slide-control00"
									aria-controls="slick-slide00" aria-label="1 of 2" tabindex="0"
									aria-selected="true">1</button></li>
							<li role="presentation"><button type="button" role="tab"
									id="slick-slide-control01" aria-controls="slick-slide01"
									aria-label="2 of 2" tabindex="-1">2</button></li>
						</ul>
					</div>

					<div class="product-essential">
						<div
							class="xans-element- xans-product xans-product-detail product-info sidebar">
							<div class="product-name">
								<h2>DROP DENIM JACKET</h2>
							</div>
							<div class="product-price" data-price-was="0.00"
								data-price-now="76000" data-stock="">
								<span class="price-now">76,000 KRW</span>
							</div>
							<div class="product-description">
								<span style="font-size: 12px; color: #555555;">★ 7-9일 정도
									소요됩니다. ★ - 드롭 데님 자켓 - 논스판 7수 데님 - 바이오 or 스톤 워싱 - 95 ~ 100 체형에
									오버핏 - 남녀 공용 - FABRIC : COTTON 100% - SIZE : (Cm) - FREE : 어깨:71
									가슴:72 소매:57 총장:81 - MAN : 170/58 (중청 착용) - WOMAN : 168/50 (흑청,
									연청 착용)</span>
								<div class="more-info">
									<span class="sizeguide-button">Size Guide</span> <span
										class="checklist-button">Check List</span>
								</div>
							</div>
							<div
								class="xans-element- xans-product xans-product-detaildesign product-meta">
								<!--
                    출력 갯수 지정 변수, 없으면 설정된 전체가 나옵니다.
                    count = 10
                -->
								<ul>
									<li class=" xans-record-"><span
										style="font-size: 16px; color: #555555;">DROP DENIM
											JACKET</span></li>
									<li class=" xans-record-"></li>
									<li class=" xans-record-"><span
										style="font-size: 12px; color: #008BCC; font-weight: bold;"><strong
											id="span_product_price_text">76,000원</strong><input
											id="product_price" name="product_price" value=""
											type="hidden"></span></li>
								</ul>
							</div>
							<div
								class="xans-element- xans-product xans-product-action product-actions ">
								<span class="primary-button sold-out displaynone"><span>SOLD
										OUT</span></span> <span class="primary-button purchase-callout">BUY
									NOW</span>
								<div class="naver-pay" id="NaverChk_Button">
									<div id="NC_ID_1709033050394425"
										class="npay_storebtn_bx npay_type_A_2">
										<div id="NPAY_BUTTON_BOX_ID" class="npay_button_box ">
											<div class="npay_button">
												<div class="npay_text">
													<span class="npay_blind">NAVER 네이버 ID로 간편구매 네이버페이</span>
												</div>
												<table class="npay_btn_list" cellspacing="0" cellpadding="0">
													<tbody>
														<tr>
															<td class="npay_btn_item"><a
																id="NPAY_BUY_LINK_IDNC_ID_1709033050394425" href="#"
																class="npay_btn_link npay_btn_pay btn_green"
																style="box-sizing: content-box;" title="새창"><span
																	class="npay_blind">네이버페이 구매하기</span></a></td>
															<td class="npay_btn_item btn_width"><a
																id="NPAY_WISH_LINK_IDNC_ID_1709033050394425" href="#"
																class="npay_btn_link npay_btn_zzim "
																style="box-sizing: content-box;" title="새창"><span
																	class="npay_blind">찜하기</span></a></td>
														</tr>
													</tbody>
												</table>
											</div>
											<div id="NPAY_EVENT_ID" class="npay_event">
												<a id="NPAY_PROMOTION_PREV_IDNC_ID_1709033050394425"
													href="#" class="npay_more npay_more_prev"><span
													class="npay_blind">이전</span></a>
												<p id="NPAY_PROMOTION_IDNC_ID_1709033050394425"
													class="npay_event_text">
													<strong class="event_title">현장결제</strong><a
														class="event_link"
														href="https://m-campaign.naver.com/collect/v2/?code=2023061207_210204_006_clk_400101_20230613001&amp;target=https://m-campaign.naver.com/npay/gorandomp/"
														target="_blank" title="새창">결제할 때 마다, 월 50번 포인트 뽑기!</a>
												</p>
												<a id="NPAY_PROMOTION_NEXT_IDNC_ID_1709033050394425"
													href="#" class="npay_more npay_more_next"><span
													class="npay_blind">다음</span></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>



					<div class="product-details">

						<div
							class="xans-element- xans-product xans-product-additional product-gallery ">
							<div class="edibot-product-detail"
								style="width: 1400px; max-width: 100%; margin: 0 auto;">
								<div data-api="1.0.0" data-classid="shirts"
									data-created="2023-03-07 16:44:58" data-groupid="g000001"
									data-projectid="N230302_1219" data-sessionid="2"
									data-shoplang="ko_KR" data-shopno="1" data-version="2.0.0"
									type="application/json" class="-edibot-metadata">
									<!--{"api":"1.0.0","classid":"shirts","groupid":"g000001","mallid":"faderoom","projectid":"N230302_1219","sessionid":2,"version":"2.0.0","shopno":1,"shoplang":"ko_KR","created":"2023-03-07 16:44:58"}-->
								</div>
								<style>
.edibot-product-detail * {
	font-family: inherit;
	font-size: inherit;
}

.edibot-product-detail img[src=""], .edibot-product-detail img:not([src])
	{
	visibility: hidden !important;
	height: 1px !important;
}

.edibot-product-detail div#edb-img-tag, .edibot-product-detail div#edb-img-tag *
	{
	position: unset;
	border: 0;
	border-radius: 0;
	box-sizing: content-box;
	height: auto;
	line-height: normal;
	min-height: auto;
	text-align: left;
	transform: none;
	margin: 0;
	opacity: 1;
	padding: 0;
	transition: opacity .15s linear, background .15s linear, border .15s
		linear
}

.edibot-product-detail div#edb-img-tag .edb-tag {
	position: absolute;
	display: block;
	background: rgba(0, 0, 0, .3);
	border-radius: 50%;
	border: 1px solid transparent;
	box-shadow: 0 4px 6px rgba(0, 0, 0, .2);
	box-sizing: border-box;
	cursor: pointer;
	height: 32px;
	text-decoration: none;
	transform: translate(-50%, -50%);
	width: 32px
}

.edibot-product-detail .edb-img-tag-w.hover div#edb-img-tag .edb-tag {
	opacity: 0;
	visibility: hidden
}

.edibot-product-detail div#edb-img-tag .edb-tag:before {
	content: '';
	position: absolute;
	top: -1px;
	left: -1px;
	right: -1px;
	bottom: -1px
}

.edibot-product-detail div#edb-img-tag .edb-tag:after {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	display: block;
	background-color: #fff;
	border-radius: 50%;
	box-shadow: 0 4px 6px rgba(0, 0, 0, .2);
	height: 10px;
	margin: auto;
	transition: transform .15s linear;
	width: 10px
}

.edibot-product-detail div#edb-img-tag .edb-tag .edb-tag-name {
	position: absolute;
	display: block;
	align-items: center;
	background: #fff;
	box-shadow: 0 6px 10px rgba(0, 0, 0, .2);
	color: #000;
	font-family: -apple-system, Apple SD Gothic Neo, malgun gothic, arial,
		sans-serif;
	font-size: 12px;
	font-style: normal;
	line-height: 36px;
	margin: 50% 0 0 50%;
	max-width: 201px;
	opacity: 0;
	overflow: hidden;
	padding: 0 28px 0 11px;
	text-decoration: none;
	text-overflow: ellipsis;
	transform: translate(-50%, -100%) translateY(-26px);
	visibility: hidden;
	white-space: nowrap
}

.edibot-product-detail div#edb-img-tag .edb-tag .edb-tag-name:after {
	content: '';
	position: absolute;
	top: 0;
	bottom: 1px;
	right: 10px;
	margin: auto 0;
	background:
		url(//img.cafe24.com/csdstatic/edibot/v2/img/ui/ec/bg_tag.png)
		no-repeat;
	background-size: 5px 9px;
	height: 9px;
	margin-left: 10px;
	width: 5px
}

.edibot-product-detail div#edb-img-tag .edb-tag.top:before {
	margin-top: -10px
}

.edibot-product-detail div#edb-img-tag .edb-tag.right:before {
	margin-right: -10px
}

.edibot-product-detail div#edb-img-tag .edb-tag.right .edb-tag-name {
	transform: translate(26px, -50%)
}

.edibot-product-detail div#edb-img-tag .edb-tag.bottom:before {
	margin-bottom: -10px
}

.edibot-product-detail div#edb-img-tag .edb-tag.bottom .edb-tag-name {
	transform: translate(-50%, 26px)
}

.edibot-product-detail div#edb-img-tag .edb-tag.left:before {
	margin-left: -10px
}

.edibot-product-detail div#edb-img-tag .edb-tag.left .edb-tag-name {
	transform: translate(-100%, -50%) translateX(-26px)
}

.edibot-product-detail .edb-img-tag-w.hover:hover div#edb-img-tag .edb-tag,
	.edibot-product-detail div#edb-img-tag .edb-tag:hover .edb-tag-name {
	opacity: 1;
	visibility: visible
}

.edibot-product-detail div#edb-img-tag .edb-tag:hover {
	border: 1px solid #eee;
	background-color: #009cff;
	box-shadow: none
}

.edibot-product-detail div#edb-img-tag .edb-tag:hover:after {
	transform: scale(.6)
}

.edibot-product-detail div#edb-img-tag .edb-tag .edb-tag-name:hover {
	text-decoration: underline
}

html:lang(ja) .edibot-product-detail div#edb-img-tag .edb-tag .edb-tag-name
	{
	font-family: -apple-system, verdana, Meiryo, "メイリオ", sans-serif
}

html:lang(en) .edibot-product-detail div#edb-img-tag .edb-tag .edb-tag-name,
	html:lang(vi) .edibot-product-detail div#edb-img-tag .edb-tag .edb-tag-name
	{
	font-family: -apple-system, Helvetica Neue, Helvetica, Arial, Sans-serif
}

@media only screen and (hover:none) and (pointer:coarse) {
	.edibot-product-detail .edb-img-tag-w.hover div#edb-img-tag .edb-tag {
		opacity: 1;
		visibility: visible
	}
}
</style>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L5"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/25eb1f030f381b4b98775f91c8b58191.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L6"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/7bb9bd559341103945b11d53a05e96db.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L7"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/d0c9b3d8761e849bc8b78f56ae45da34.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L8"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/164f5c738344137a62b453e425b46542.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L9"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/12109c01c13242d5a0db41bfb5898ac9.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L10"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/e11913ec39dc6a323a5a70d13bb17d18.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L11"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/f2535ec1241c65dbfd3a740f4ead4636.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L25"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 466px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/653520a1b8a9191d286bd6d5e7e7b018.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L4"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/9f46721c3f715b18662aff022f7eb587.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L2"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/83c2970d27adfa0ee211807c3bbe02d8.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L3"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/f3cbd071f0484054ec96f1841009a08d.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S2L6"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230307/4872e87347fe51dd9045305750d011ba.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S2L4"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230307/85508f35c4e47e2826e7f02913e5b3b0.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S2L5"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230307/01a031a2bed534c98f5033aa42a8c730.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L15"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/110dcd3b88001801d73e523151c70790.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L13"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/486754868c90b36e1c493faf5a60a1d7.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L14"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/30343f8b838eb8845f98411ed6f7aa3a.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L16"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/78fa9707cb2d8621c50d1d77fc819e9a.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L12"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/cca1260c6c6f0c05ec99899d34b34a1a.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S2L1"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230307/69de24e66ae05754d1c0fa922c6af68f.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S2L2"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230307/ba31b57a8f44d0e3723d9188cd72bed3.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S2L3"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230307/9e87d5283cf8a4a29699ebe9879681dd.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S2L8"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 466px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230307/fd9ffebe69126eb6a938823869293ea8.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L22"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/db980cd08441b4ab0f8c582d3e73f00f.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L23"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/1c879b7f3981db43f2bd267505047046.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L24"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/b824efae719e237f7d84f96597fc4fb4.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L18"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/48e071566a21434b323a732742b34c38.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L19"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/5c8e406e4e7361a658911c0b618a05eb.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L20"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/dc181a7ce0e25142f05003cf2ca2c0e8.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S1L21"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/22a35c49db04a7aa7c43768682388788.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 모델 착용 이미지-S2L7"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230307/b8c9c658607be5ff85b4c3f335fbcac6.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 차콜 색상 이미지-S1L26"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/c0021df43dc717755ea04480afa2fca9.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 라벤더 색상 이미지-S1L27"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/a48bc5894375c515d6c878800e9e49d5.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
								<div style="position: relative;" class="edb-img-tag-w">
									<img alt=" 네이비블루 색상 이미지-S1L28"
										style="margin: 0 auto; display: block; max-width: 100%; min-height: 583px;"
										src="https://cafe24img.poxo.com/faderoom/web/upload/NNEditor/20230302/40ae9215d618ecdeb4afb477eed86162.jpg">
								</div>
								<div
									style="display: block; content: ' '; height: 0px !important;"></div>
							</div>
						</div>

						<div
							class="xans-element- xans-product xans-product-relation related-products xans-record-">
							<div class="section-header">
								<h3>Other Items</h3>
							</div>
							<div class="xans-element- xans-product xans-product-relationlist">
								<div class="product-tiles">
									<div class="tile xans-record-">
										<a href="/product/tr-cargo-pants/1383/category/26/display/1/">
											<div class="product-image">
												<img
													src="https://cafe24img.poxo.com/faderoom/web/product/big/202303/cd0f43913498b8c462a2bdf98e6a3f08.jpg"
													class="primary-image" alt="TR CARGO PANTS"> &nbsp;<img
													src="https://cafe24img.poxo.com/faderoom/web/product/medium/202303/43196d44b47b2adaba55c54f50700301.jpg"
													class="secondary-image" alt="TR CARGO PANTS"> &nbsp;
											</div>
											<div class="product-name">
												<span>TR CARGO PANTS</span>
											</div>
											<div class="product-price">
												<span class="price-now">59,000 KRW</span>
											</div>
										</a>
									</div>
									<div class="tile xans-record-">
										<a href="/product/flow-t-shirt/1404/category/85/display/1/">
											<div class="product-image">
												<img
													src="https://cafe24img.poxo.com/faderoom/web/product/big/202303/bef86086da41be264299db3de808bcf9.jpg"
													class="primary-image" alt="FLOW T-SHIRT"> &nbsp;<img
													src="https://cafe24img.poxo.com/faderoom/web/product/medium/202303/fab6ee9a442b05e65ba83c50fb620e1a.jpg"
													class="secondary-image" alt="FLOW T-SHIRT"> &nbsp;
											</div>
											<div class="product-name">
												<span>FLOW T-SHIRT</span>
											</div>
											<div class="product-price">
												<span class="price-now">14,000 KRW</span>
											</div>
										</a>
									</div>
									<div class="tile xans-record-">
										<a
											href="/product/drop-jogger-pants-504/1388/category/26/display/1/">
											<div class="product-image">
												<img
													src="https://cafe24img.poxo.com/faderoom/web/product/big/202303/e914942cc146c5cfffa5f12307d6a301.jpg"
													class="primary-image" alt="DROP JOGGER PANTS 504">
												&nbsp;<img
													src="https://cafe24img.poxo.com/faderoom/web/product/medium/202303/16a7ee9ebe1527c1ea017fa2b050500d.jpg"
													class="secondary-image" alt="DROP JOGGER PANTS 504">
												&nbsp;
											</div>
											<div class="product-name">
												<span>DROP JOGGER PANTS 504</span>
											</div>
											<div class="product-price">
												<span class="price-now">62,000 KRW</span>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="xans-element- xans-product xans-product-additional ">
							<div class="product-reviews ">
								<div class="section-header">
									<h3>Review</h3>
								</div>
								<div class="board">
									<div class="xans-element- xans-product xans-product-review">
										<a name="use_review"></a>
										<p class="noAccess displaynone">글읽기 권한이 없습니다.</p>
										<div class="product-board">
											<table border="1" summary="" class="">
												<caption>상품사용후기</caption>
												<colgroup>
													<col style="width: 60px;">
													<col style="width: auto">
													<col style="width: 100px;">
													<col style="width: 100px;">
													<col style="width: 80px;" class="displaynone">
												</colgroup>
												<thead>
													<tr>
														<th scope="col"></th>
														<th scope="col">Subject</th>
														<th scope="col">Writer</th>
														<th scope="col">Date</th>
														<th scope="col" class="displaynone">Ratings</th>
													</tr>
												</thead>
												<tbody class="center">
													<tr class="xans-record-">
														<td>2</td>
														<td class="subject"><a
															href="/article/review/4/23437/?no=23437&amp;board_no=4&amp;spread_flag=T">보통</a>
														</td>
														<td>네****</td>
														<td>2023.04.21</td>
														<td class="displaynone"><img
															src="//img.echosting.cafe24.com/skin/base/board/ico_point3.gif"
															alt="3점"></td>
													</tr>
													<tr class="xans-record-">
														<td>1</td>
														<td class="subject"><a
															href="/article/review/4/23176/?no=23176&amp;board_no=4&amp;spread_flag=T">만족</a>
														</td>
														<td>네****</td>
														<td>2023.04.01</td>
														<td class="displaynone"><img
															src="//img.echosting.cafe24.com/skin/base/board/ico_point5.gif"
															alt="5점"></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div
										class="xans-element- xans-product xans-product-reviewpaging pagination">
										<ul>
											<li class="xans-record-"><a href="?page_4=1#use_review"
												class="this">1</a></li>
										</ul>
									</div>
									<div class="section-footer">
										<a
											href="/board/product/write.html?board_no=4&amp;product_no=1387&amp;cate_no=24&amp;display_group=2"
											class="primary-button">WRITE</a>
									</div>
								</div>
							</div>
							<div class="product-support ">
								<div class="section-header">
									<h3>Q&amp;A</h3>
								</div>
								<div class="board">
									<div class="xans-element- xans-product xans-product-qna">
										<a name="use_qna"></a>
										<p class="noAccess displaynone">글읽기 권한이 없습니다.</p>
										<div class="product-board">
											<table border="1" summary="" class="">
												<caption>상품 Q&amp;A</caption>
												<colgroup>
													<col style="width: 60px;">
													<col style="width: auto">
													<col style="width: 80px;">
													<col style="width: 100px;">
												</colgroup>
												<thead>
													<tr>
														<th scope="col"></th>
														<th scope="col">Subject</th>
														<th scope="col">Writer</th>
														<th scope="col">Date</th>
													</tr>
												</thead>
												<tbody class="center">
													<tr class="xans-record-">
														<td>2</td>
														<td class="subject"><img
															src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_lock.gif"
															alt="비밀글" class="ec-common-rwd-image"> <a
															href="/article/qa-product/6/26369/?no=26369&amp;board_no=6&amp;spread_flag=T">정보</a>
															<span class="txtWarn"></span></td>
														<td>김****</td>
														<td>2023.09.25</td>
													</tr>
													<tr class="xans-record-">
														<td>1</td>
														<td class="subject">&nbsp;&nbsp;&nbsp;<img
															src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_re.gif"
															alt="답변" class="ec-common-rwd-image"> <img
															src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_lock.gif"
															alt="비밀글" class="ec-common-rwd-image"> <a
															href="/article/qa-product/6/26388/?no=26388&amp;board_no=6&amp;spread_flag=T">정보</a>
															<span class="txtWarn"></span>
														</td>
														<td></td>
														<td>2023.09.26</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div
										class="xans-element- xans-product xans-product-qnapaging pagination">
										<ul>
											<li class="xans-record-"><a href="?page_6=1#use_qna"
												class="this">1</a></li>
										</ul>
									</div>
									<div class="section-footer">
										<a
											href="/board/product/write.html?board_no=6&amp;product_no=1387&amp;cate_no=24&amp;display_group=2"
											class="primary-button">WRITE</a>
									</div>
								</div>
							</div>
						</div>

					</div>

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