<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://kit.fontawesome.com/177bef69e2.js"
	crossorigin="anonymous"></script>
<div class="site-nav sidebar fixed">
	<div class="nav-col col-left">
		<div class="site-menu">
			<ul>
				<li class="menu-item"><a href="about">About us</a></li>
			</ul>
		</div>
		<div class="xans-element- xans-layout xans-layout-category site-menu">
			<ul>
				<li class="menu-item xans-record-"><a href="best100">BEST 100</a></li>
				<li class="menu-item xans-record-"><a href="all_in_one">All-in-one</a></li>
				<li class="menu-item xans-record-"><a href="outer">Outer</a></li>
				<li class="menu-item xans-record-"><a href="topshort">Top(short sleeve)</a></li>
				<li class="menu-item xans-record-"><a href="toplong">Top(long sleeve)</a></li>
				<li class="menu-item xans-record-"><a href="bottoms">Bottoms</a></li>
				<li class="menu-item xans-record-"><a href="bags">Bags</a></li>
				<li class="menu-item xans-record-"><a href="accessories">Accessories</a></li>
				<li class="menu-item xans-record-"><a href="shoes">Shoes</a></li>
				<li class="menu-item xans-record-"><a href="women">Women only</a></li>
			</ul>
		</div>
	</div>
	<div class="nav-col col-right">
		<div class="site-menu">
			<ul
				class="xans-element- xans-layout xans-layout-statelogoff user-menu ">
				<li class="menu-item"><a href="login">Login</a></li>
				<li class="menu-item"><a
					href="myPage">MyPage</a></li>
			</ul>
		</div>
		<div class="site-menu">
			<ul>
				<li class="menu-item"><a
					href="https://www.youtube.com/channel/UCNzODSZC2sraPyh4lDMQhpQ?view_as=subscriber"
					target="_blank">YouTube</a>&nbsp;<i class="fa-brands fa-youtube"></i></li>
				<li class="menu-item"><a
					href="https://www.instagram.com/faderoom_official/" target="_blank">Instagram</a>&nbsp;<i
					class="fa-brands fa-instagram"></i></li>
			</ul>
		</div>
		<div class="site-menu">
			<ul>
				<li class="menu-item"><a href="notice_view">Notice</a></li>
				<li class="menu-item"><a href="review_view">Review</a></li>
				<li class="menu-item"><a href="qna_view">Q&amp;A</a></li>
				<li class="menu-item"><a href="faq_view">FAQ</a></li>
			</ul>
		</div>
		<div class="cs-info">
			<ul>
				<li>Counseling Center <br>02 123 4567
				</li>
				<li>13:00 - 18:00 <br>sat.sun.holiday off
				</li>
			</ul>
		</div>
		<form id="searchBarForm" name="" action="search"
			method="post" target="_self" enctype="multipart/form-data">
			<input id="banner_action" name="banner_action" value="" type="hidden">
			<div
				class="xans-element- xans-layout xans-layout-searchside search-bar ">
				<!--
	                    $search_page = /product/search.html
	                    $product_page = /product/detail.html
	                -->
				<fieldset>
					<legend>검색</legend>
					<input id="keyword" name="keyword" fw-filter="" fw-label="검색어"
						fw-msg="" class="inputTypeText" placeholder=""
						onmousedown="SEARCH_BANNER.clickSearchForm(this)" value=""
						type="text"><input type="image"
						src="./images/search-icon.png" alt="검색"
						onclick="SEARCH_BANNER.submitSearchBanner(this); return false;">
				</fieldset>
			</div>
		</form>
	</div>
</div>

