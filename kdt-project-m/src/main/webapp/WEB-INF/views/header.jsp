<%@page import="dto.MemberDTO"%>
<%@page import="dto.CategoryDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/header.css">
</head>
<body>
	<%
	String memName = "";
	String memInitial = "";
	MemberDTO memberdto = (MemberDTO) session.getAttribute("sessionid");
	if (memberdto != null) {
		memName = memberdto.getMemberid();
		String[] memNameLetters = memName.split("");
		memInitial = memNameLetters[0];
	}
	%>
	<c:set var="jstlMemName" value="<%=memName%>" />
	<c:set var="jstlMemInitial" value="<%=memInitial%>" />
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
				<a href="/category?category=${category }">${categoryIdToName[category] }</a>
			</div>
		</c:forEach>
		<div class="space"></div>
		<div class="icon-right">
			<a href="/board/all?page=1"><img src="/img/icon/board.svg" /></a>
		</div>
		<c:choose>
			<c:when test="${fn:length(jstlMemName) > 0 }">
				<div class="auth-button">
					<button>${jstlMemInitial}</button>
				</div>
				<div class="auth-board">
					<div>
						<a href="/logout">로그아웃</a>
					</div>					
					<div>
						<a href="/mypage">마이페이지</a>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="icon-right">
					<a href="/login"><img src="/img/icon/sign.svg" /></a>
				</div>
			</c:otherwise>
		</c:choose>
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
	
	const $authButton = document.querySelector('.auth-button button');
	const $authBoard = document.querySelector('.auth-board');
	
	$authButton.onclick = () => {
	    $authBoard.classList.toggle('show');
	};
</script>

</html>