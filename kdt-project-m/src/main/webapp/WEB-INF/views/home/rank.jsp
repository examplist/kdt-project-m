<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/home/rank.css" />
</head>
<body>
	<jsp:useBean id="categories" class="java.util.ArrayList" />
	<jsp:useBean id="categoryIdToName" class="java.util.HashMap" />

	<%
	categories.add("top");
	categories.add("bottom");
	categories.add("cap");
	categories.add("shoes");
	categories.add("acc");

	categoryIdToName.put("top", "상의");
	categoryIdToName.put("bottom", "하의");
	categoryIdToName.put("cap", "모자");
	categoryIdToName.put("shoes", "신발");
	categoryIdToName.put("acc", "액세서리");
	%>

	<section class="home__rank">
		<h1 class="section-title">카테고리별 판매량 순위</h1>
		<c:forEach items="${categories }" var="category">
			<article class="category">
				<div class="category-title">${categoryIdToName[category] }</div>
				<div class="products">
					<c:forEach items="${highRankedProducts[category] }" var="product"
						varStatus="status">
						<div class="product">
							<c:choose>
								<c:when test="${status.index == 0 }">
									<div class="rank" style="background-color: gold">1</div>
								</c:when>
								<c:when test="${status.index == 1 }">
									<div class="rank" style="background-color: silver">2</div>
								</c:when>
								<c:when test="${status.index == 2 }">
									<div class="rank" style="background-color: brown">3</div>
								</c:when>
								<c:when test="${status.index == 3 }">
									<div class="rank" style="background-color: white">4</div>
								</c:when>
							</c:choose>
							<a href="${product.id }.html">
								<div class="image">
									<img src="/img/product/${product.id }.jpg" />
								</div>
								<div class="product-title">${product.title }</div>
								<div class="price">${product.price }</div>
							</a>
						</div>
					</c:forEach>
				</div>
			</article>
		</c:forEach>
	</section>
</body>
</html>