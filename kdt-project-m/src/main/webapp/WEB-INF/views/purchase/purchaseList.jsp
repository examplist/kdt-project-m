<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/category/styles.css" rel="stylesheet" />
<title>Insert title here</title>
<script src="/js/jquery-3.6.4.min.js"></script>

</head>
<body>
 <%@ include file="../header.jsp"%> 

<h1 text-align="center">구매내역</h1>
 
 
<div style="margin-top: 100px"/>
<table border="3" style="margin:0 auto; width:60%">
<c:forEach items="${purchaseList }" var="ind">
<tr><th>제품</th><th>제품명    </th><th>수량    </th></tr>
<div class="products">
<tr>
        <td><a href='productDetail?id=${ind.id}'><img style="width:150px; height:150px" src='/img/product/${ind.id }.jpg'></a></td>
        <td><h1 text-align="center" style="color: black">${ind.product}</h1></td>
        <td><h1 text-align="center" style="color: black">${ind.count }</h1></td>
        </tr>
      
</c:forEach>
</table>

<div class="clearfix"></div>
</div>



<%@ include file="../footer.jsp"%> 
</body>

</html>