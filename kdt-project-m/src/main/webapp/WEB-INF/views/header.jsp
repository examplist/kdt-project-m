<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/header.css">
</head>
<body>
	<header>
		<button class="narrow-category-button">
			<img src="/img/icon/menu.svg" />
		</button>
		<div class="narrow-category-container">
			<div>
				<a href="/category?type=top">상의</a>
			</div>
			<div>
				<a href="/category?type=bottom">하의</a>
			</div>
			<div>
				<a href="/category?type=cap">모자</a>
			</div>
			<div>
				<a href="/category?type=shoes">신발</a>
			</div>
			<div>
				<a href="/category?type=acc">액세서리</a>
			</div>
		</div>
		<div class="logo">
			<a href="/">🅺🅳🆃</a>
		</div>
		<div class="category">
			<a href="/category?type=top">상의</a>
		</div>
		<div class="category">
			<a href="/category?type=bottom">하의</a>
		</div>
		<div class="category">
			<a href="/category?type=cap">모자</a>
		</div>
		<div class="category">
			<a href="/categor?type=shoes">신발</a>
		</div>
		<div class="category">
			<a href="/category?type=acc">액세서리</a>
		</div>
		<div class="space"></div>
		<div class="icon-right">
			<a href="/board"><img src="/img/icon/board.svg" /></a>
		</div>
		<div class="icon-right">
			<a href="/login"><img src="/img/icon/sign.svg" /></a>
		</div>
		<div class="icon-right">
			<a href="/cart"><img src="/img/icon/cart.svg" /></a>
		</div>
	</header>
</body>
<script>
	const $narrowCategoryButton = document.querySelector('.narrow-category-button');
	const $narrowCategoryContainer = document.querySelector('.narrow-category-container');
	
	$narrowCategoryButton.onclick = () => {
	    $narrowCategoryContainer.classList.toggle('show');
	};
</script>
</html>