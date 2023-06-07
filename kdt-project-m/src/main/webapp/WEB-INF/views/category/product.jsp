<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/category/styles.css" rel="stylesheet" />
<title>Insert title here</title>
<script src="/js/jquery-3.6.4.min.js"></script>
 <script>
$(document).ready(function(){
	$("purchase").on('click',function(e){
		let sessionid = <%=session.getAttribute("sessionid")%>;
		if(sessionid ==null){
			alert("로그인 먼저 하셔야 합니다.");
			e.preventDefault();
		}//if
	});//on
});//ready

</script> 

</head>
<body>
 <%@ include file="../header.jsp"%> 

 <div class="details">
        <a><img src='/img/product/${productDetail.id }.jpg'></a>
        <div>
        </div>
        <h1></h1>
          <form action="purchaseok">
            <h1> </h1>
            <h3>상품명:   ${productDetail.title}</h3>
            <h3>가격:   ${productDetail.price }원</h3>
            <h3>수량</h3>
            <input type=text name=amount value=0>
         	
            <input type=button value="증가" onClick="javascript:this.form.amount.value++;">
            <input type=button value="감소" onClick="javascript:this.form.amount.value--;"><hr>
             <a href='purchaseok'><input type=button id="purchase" value="구매하기"></a><!-- </a> -->
           <%-- ?product=${productDetail.title } --%>
           
            <a href='gocart'><input type=button id="cart" value="장바구니 담기"></a>
            </form>
        
        </div>
        <hr>
        <div class=description>${productDetail.des }</description>
       
<%@ include file="../footer.jsp"%> 
</body>

</html>