<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/mypage/mypage.css">
    <link rel="stylesheet" href="/css/header.css" />
    <link rel="stylesheet" href="/css/footer.css" />
    <title>KDT 쇼핑</title>

<style>
body {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
</style>
</head>
<%@ include file="../header.jsp"%>

<body>
    <h1>MyPage</h1>
    <div>
        <form action="update" id="mypageinfo" method="post">
            <div><h3>회원정보수정</h3></div>
            회원번호 <input type="text" id="seq" name="seq" value="${sessionid.seq}" disabled><br>
            이름 <input type="text" id="membername" name="membername" value="${sessionid.membername}" placeholder="이름을 입력해주세요. (2글자 이상)" required><br>
            아이디 <input type="text" id="memberid" name="memberid" value="${sessionid.memberid}" disabled><br>
            비밀번호 <input type="password" id="memberpw" name="memberpw"value="${sessionid.memberpw}" placeholder="비밀번호를 입력해주세요. (4글자 이상)" required><br>
            전화번호 <input type="text" id="phone" name="phone" value="${sessionid.phone}" placeholder="번호를 입력해주세요. (ex.010-1234-1234)" required><br>
            이메일 <input type="text" id="email" name="email" value="${sessionid.email}" placeholder="이메일을 입력해주세요. (ex.name.mail.com)" required><br>
            <div>
                <input type="submit" id="userbtn" value="회원정보 수정">
            </div>
        </form>
    </div>
    <form id="mypageform">
        <input id="cancle" type="button" value="취소" onclick="location.href='/'">
    </form>
<%@ include file="../footer.jsp"%>

</body>

</html>