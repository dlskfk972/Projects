<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../include/static-head.jsp"/>
<style type="text/css">
.clearfix::after{content:''; display:block; clear:both;}
* {
	margin: 0;
	padding: 0;
	list-style: none;
	text-decoration: none;
}

a:link {
	text-decoration: none;
}
body {
	background-color: white;
	width:100%; height: 100%;
}
td{
	color:black;
	padding:7px;
}
th{
	color:black;
	font-weight:normal;
	padding:7px;
	width:100px;
}
.title{
	color:#fff;
}
.insert-box{
	width:400px;
	height:270px;
	margin: 0 auto;
	border: 1px #fff solid;
	margin-top:30px;
}
.insert-table{
	margin: 0 auto;
	decoration:none;
}
.button{
	position:relative;
	float:right;
	padding:0 20px 20px 20px;
}
.button a{
	color:#fff;
}
.button a:hover{
	color:#9A8260;
}
h3{
	color:#fff;
	margin: 0 10px;
}
.star{
	width:230px;
	margin:0 auto;
	margin-top:20px;
}
.star p{color:#fff;}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color:white;">
<div class="insert-box">
<table>
<tr>
<th width="100">ID</th>
<td width="300">${getUser.userId}</td>
</tr>
<tr>
<th>이름</th>
<td>${getUser.userName }</td>
</tr>

<tr>
<th>등급</th>
<c:if test="${getUser.userLevel == 0 }">
<td>일반회원</td>
</c:if>
<c:if test="${getUser.userLevel == 1 }">
<td>관리자</td>
</c:if>
</tr>
<tr>
<th>생년월일</th>
<td>${getUser.userBirth}</td>
</tr>
<tr>
<td colspan="2" style="text-align:right"><a style="text-decoration:none" href="/home">홈으로&nbsp;&nbsp;&nbsp;</a>

</td>
</tr>
<c:if test="${getUser.userLevel == 1 }">
<tr>
<td colspan="2" style="text-align:right">

</tr>
</c:if>
</table>
</div>
</body>
</html>