<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<style>
#wrap {
	min-height: calc(100% - 120px);
	display: flex;
	justify-content: center;
	align-items: flex-start;
	z-index: 1;
}

.credit {
	position: absolute;
	bottom: 20px;
	left: 20px;
	color: inherit;
}

.options {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: stretch;
	min-width: 600px;
	max-width: 900px;
	height: 400px;
	width: 100%;
}

.options .option:nth-child(5) {
	display: none;
}

}
@media screen and (max-width: 638px) {
	.options {
		min-width: 440px;
	}
	.options .option:nth-child(4) {
		display: none;
	}
}

@media screen and (max-width: 558px) {
	.options {
		min-width: 360px;
	}
	.options .option:nth-child(3) {
		display: none;
	}
}

@media screen and (max-width: 478px) {
	.options {
		min-width: 280px;
	}
	.options .option:nth-child(2) {
		display: none;
	}
}

.options .option {
	position: relative;
	overflow: hidden;
	min-width: 60px;
	margin: 10px;
	background: var(--optionBackground, var(--defaultBackground, #e6e9ed));
	background-size: auto;
	background-position: center;
	cursor: pointer;
	transition: 0.5s cubic-bezier(0.05, 0.61, 0.41, 0.95);
}

.options .option:nth-child(1) {
	--defaultBackground: #ed5565;
}

.options .option:nth-child(2) {
	--defaultBackground: #fc6e51;
}

.options .option:nth-child(3) {
	--defaultBackground: #ffce54;
}

.options .option:nth-child(4) {
	--defaultBackground: #2ecc71;
}

.options .option:nth-child(5) {
	--defaultBackground: #5d9cec;
}

.options .option:nth-child(6) {
	--defaultBackground: #ac92ec;
}

.options .option.active {
	flex-grow: 10000;
	transform: scale(1);
	max-width: 600px;
	margin: 0px;
	border-radius: 40px;
	background-size: auto 100%;
	/*&:active {
      transform:scale(0.9);
  }
  */
}

.options .option.active .shadow {
	box-shadow: inset 0 -120px 120px -120px black, inset 0 -120px 120px
		-100px black;
}

.options .option.active .label {
	bottom: 20px;
	left: 20px;
}

.options .option.active .label .info>div {
	left: 0px;
	opacity: 1;
}

.options .option:not(.active) {
	flex-grow: 1;
	border-radius: 30px;
}

.options .option:not(.active) .shadow {
	bottom: -40px;
	box-shadow: inset 0 -120px 0px -120px black, inset 0 -120px 0px -100px
		black;
}

.options .option:not(.active) .label {
	bottom: 10px;
	left: 10px;
}

.options .option:not(.active) .label .info>div {
	left: 20px;
	opacity: 0;
}

.options .option .shadow {
	position: absolute;
	bottom: 0px;
	left: 0px;
	right: 0px;
	height: 120px;
	transition: 0.5s cubic-bezier(0.05, 0.61, 0.41, 0.95);
}

.options .option .label {
	display: flex;
	position: absolute;
	right: 0px;
	height: 40px;
	transition: 0.5s cubic-bezier(0.05, 0.61, 0.41, 0.95);
}

.options .option .label .icon {
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	min-width: 40px;
	max-width: 40px;
	height: 40px;
	border-radius: 100%;
	background-color: white;
	color: var(--defaultBackground);
}

.options .option .label .info {
	display: flex;
	flex-direction: column;
	justify-content: center;
	margin-left: 10px;
	color: white;
	white-space: pre;
}

.options .option .label .info>div {
	position: relative;
	transition: 0.5s cubic-bezier(0.05, 0.61, 0.41, 0.95), opacity 0.5s
		ease-out;
}

.options .option .label .info .main {
	font-weight: bold;
	font-size: 1.2rem;
}

.options .option .label .info .sub {
	transition-delay: 0.1s;
}

.container {
	
}

.site-header {
	display: flex;
	justify-content: center;
	align-items: stretch;
}

.site-nav {
	max-width: 200px; /* 원하는 너비로 조절 */
}
</style>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>
<body>
	<div id="wrap">
		<div class="options">
			<div class="option active"
				style="--optionBackground: url(https://66.media.tumblr.com/6fb397d822f4f9f4596dff2085b18f2e/tumblr_nzsvb4p6xS1qho82wo1_1280.jpg);">
				<div class="shadow"></div>
				<div class="label">
					<div class="icon">
						<i class="fas fa-walking"></i>
					</div>
					<div class="info">
						<div class="main">Blonkisoaz</div>
						<div class="sub">Omuke trughte a otufta</div>
					</div>
				</div>
			</div>
			<div class="option"
				style="--optionBackground: url(https://66.media.tumblr.com/8b69cdde47aa952e4176b4200052abf4/tumblr_o51p7mFFF21qho82wo1_1280.jpg);">
				<div class="shadow"></div>
				<div class="label">
					<div class="icon">
						<i class="fas fa-snowflake"></i>
					</div>
					<div class="info">
						<div class="main">Oretemauw</div>
						<div class="sub">Omuke trughte a otufta</div>
					</div>
				</div>
			</div>
			<div class="option"
				style="--optionBackground: url(https://66.media.tumblr.com/5af3f8303456e376ceda1517553ba786/tumblr_o4986gakjh1qho82wo1_1280.jpg);">
				<div class="shadow"></div>
				<div class="label">
					<div class="icon">
						<i class="fas fa-tree"></i>
					</div>
					<div class="info">
						<div class="main">Iteresuselle</div>
						<div class="sub">Omuke trughte a otufta</div>
					</div>
				</div>
			</div>
			<div class="option"
				style="--optionBackground: url(https://66.media.tumblr.com/5516a22e0cdacaa85311ec3f8fd1e9ef/tumblr_o45jwvdsL11qho82wo1_1280.jpg);">
				<div class="shadow"></div>
				<div class="label">
					<div class="icon">
						<i class="fas fa-tint"></i>
					</div>
					<div class="info">
						<div class="main">Idiefe</div>
						<div class="sub">Omuke trughte a otufta</div>
					</div>
				</div>
			</div>
			<div class="option"
				style="--optionBackground: url(https://66.media.tumblr.com/f19901f50b79604839ca761cd6d74748/tumblr_o65rohhkQL1qho82wo1_1280.jpg);">
				<div class="shadow"></div>
				<div class="label">
					<div class="icon">
						<i class="fas fa-sun"></i>
					</div>
					<div class="info">
						<div class="main">Inatethi</div>
						<div class="sub">Omuke trughte a otufta</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="../js/index.js"></script>
</body>
</html>
