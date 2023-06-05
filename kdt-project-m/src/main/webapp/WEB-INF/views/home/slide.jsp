<%@page import="dto.CategoryDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/home/slide.css" />
<script src="/js/home/slide.js" type="module" defer></script>
</head>
<body>
	<section class="home__slide">
		<div class="slide-container">
			<c:forEach items="${CategoryDTO.CATEGORIES }" var="category">
				<div class="slide">
					<div class="content">
						<div class="title">${CategoryDTO.SLIDE_MESSAGE[category][0] }</div>
						<div class="description">${CategoryDTO.SLIDE_MESSAGE[category][1] }</div>
						<div class="link">
							<a href="/category?category=${category }">바로가기</a>
						</div>
					</div>
					<img src="/img/slide/${category}.jpg" />
				</div>
			</c:forEach>
		</div>
		<button class="btn btn-left">
			<img src="/img/icon/btn-left.svg" />
		</button>
		<button class="btn btn-right">
			<img src="/img/icon/btn-right.svg" />
		</button>
	</section>
</body>
</html>