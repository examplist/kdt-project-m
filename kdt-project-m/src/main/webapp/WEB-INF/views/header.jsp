<%@page import="dto.CategoryDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/header.css">
</head>
<body>
	<c:set var="categories" value="${CategoryDTO.CATEGORIES }" />
	<c:set var="categoryIdToName" value="${CategoryDTO.CATEGORY_TO_NAME }" />

	<header>
		<button class="narrow-category-button">
			<img src="/img/icon/menu.svg" />
		</button>
		<div class="narrow-category-container">
			<c:forEach items="${categories }" var="category">
				<div>
					<a href="/category?type=${category }">${categoryIdToName[category] }</a>
				</div>
			</c:forEach>
		</div>
		<div class="logo">
			<a href="/">🅺🅳🆃</a>
		</div>
		<c:forEach items="${categories }" var="category">
			<div class="category">
				<a href="/category?type=${category }">${categoryIdToName[category] }</a>
			</div>
		</c:forEach>
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