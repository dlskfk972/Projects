<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../include/static-head.jsp" />
<style>
.virtual-box {
	margin-bottom: 120px;
}
#body_title .h1 {
    display: block;
    position: relative;
    margin: 0;
    padding: 0 0 .375em;
    border-bottom: 2px solid #363940;
    background: none;
    color: #000;
    font-weight: 500;
    font-family: 'GimhaeGaya Regular','GimhaeGaya', /* 'Open Sans', */ 'Microsoft JhengHei', '맑은 고딕','Malgun Gothic', sans-serif;
    font-size: 1em;
    letter-spacing: -2px;
}
.hb1.h1 {
    padding: 0 0 .25em;
    background-image: url(../../img/lib/h1bg.png);
    background-position: 0 100%;
    font-size: 2.5em;
}
.hb1 {
    display: block;
    position: relative;
    margin: 1.5em 0 1em;
    padding: 0 0 0 .75em;
    background: url() no-repeat 0 50%;
    background-position: 0 .25em;
    color: #555;
    font-weight: 600;
    line-height: 1.375;
    letter-spacing: -.0625em;
}
.init, .init * {
    list-style: none;
    max-width: none;
    margin: 0;
    padding: 0;
}
h1 {
    font-size: 2.5em;
    margin: .5em 0;
}
h1, h2, h3, h4, h5, h6 {
    font-weight: 600;
    line-height: 1.375;
    letter-spacing: -.0625em;
}
h1, h2, h3, h4, h5, h6, p, ul, ol, dl, menu, blockquote, fieldset, form, pre, hr {
    margin-top: 1.25em;
    margin-bottom: 1.25em;
}
user agent stylesheet
h1 {
    display: block;
    font-size: 2em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
#body_title {
    clear: both;
    position: relative;
    font-size: 26px;
    line-height: 1.375;
    letter-spacing: -.0625em;
}
#wrap>.container {
    margin: auto;
}
:link, :visited {
    color: #039;
}
[href] {
    color: #039;
    cursor: pointer;
}
.cp20login1 {
    display: block;
    position: relative;
    box-sizing: border-box;
    max-width: 620px;
    margin: auto;
    padding: 2.5% 8.333%;
    border: 1px solid #ddd;
    background: #fcfcfc;
    
}
.mgt6pct {
    margin-top: 6% !important;
}
.cp20login1>.wrap1 {
    padding: 30px 0;
}
.cp20login1 .tab:nth-of-type(2) {
    left: 50%;
}
user agent stylesheet
div {
    display: block;
}

.cp20login1 .tab>a {
    display: table-cell;
    padding: 0 .5em;
    color: #333;
    font-weight: 400;
    line-height: 1.25;
    text-align: center;
    vertical-align: middle;
}
.cp20login1 .tab {
    display: table;
    z-index: 10;
    position: absolute;
    left: 0;
    right: 0;
    top: 0;
    width: 50%;
    height: 50px;
    margin: 0 -1px 0 0;
    border: 1px solid #ccc;
    background: #fcfcfc;
    font-size: 15px;
}
element.style {
    display: block;
}
.cp20login1 .cont {
    
    padding: 8px 0 0;
    position: relative;
}
user agent stylesheet
div {
    display: block;
}

user agent stylesheet
div {
    display: block;
}
#body_content {
    clear: both;
    position: relative;
    min-height: 300px;
    word-wrap: break-word;
    padding: 0 0 60px;
}
body {
    background: #fff;
    color: #555;
    font-weight: 400;
    font-size: 1em;
    line-height: 1.75;
    letter-spacing: -.03125em;
    overflow: hidden;
}
body {
    margin: auto;
    background: #fff;
    font-size: 1em;
    line-height: 1.75;
}
html {
    font-size: 100%;
    overflow-y: scroll;
    -webkit-text-size-adjust: 100%;
    -ms-text-size-adjust: 100%;
}
#body>:first-child, #body_content>:first-child, #body_content>script:first-child+:first-of-type, #body_content>.container>:first-child, #body_content>.container>script:first-child+:first-of-type {
    margin-top: 0;
}
#body_content>.container {
    margin: auto;
}
@media (max-width: 1259px) and (min-width: 1000px)
.container {
    position: relative;
    max-width: 940px;
    margin: auto;
}
.container {
    position: relative;
    min-width: 280px;
    margin: 0 20px;
}
#container, #head, #wrap, #side, #sidebar, #body, #body_head, #body_content, #body_foot, #aside, #wing, #foot, .container {
    min-height: 0;
}
.clearfix {
    min-height: 0;
}
user agent stylesheet
div {
    display: block;
}
#body_content {
    clear: both;
    position: relative;
    min-height: 300px;
    word-wrap: break-word;
    padding: 0 0 60px;
}

body {
    background: #fff;
    color: #555;
    font-weight: 400;
    font-size: 1em;
    line-height: 1.75;
    letter-spacing: -.03125em;
    overflow: hidden;
}
body {
    margin: auto;
    background: #fff;
    font-size: 1em;
    line-height: 1.75;
}

.cp20login1 .submit {
    margin: .75em 0;
}
.cp20login1 .b1 {
    display: inline-block;
    box-sizing: border-box;
    width: 100%;
    height: 50px;
    padding: .8125em;
    border: 0;
    background: #033075;
    color: #fff;
    font-size: 16px;
    text-align: center;
}
[class*='panel'] {
    display: table;
    position: relative;
    box-sizing: border-box;
    width: 100%;
    margin: 1.25em 0;
    padding: 1em 1.25em;
    border-radius: 2px;
    border: 1px solid #d4d8dd;
    background: #fcfdfe;
}
</style>
</head>
<body>
<jsp:include page="../include/header.jsp" />

<!-- #container -->
<div id="container" tabindex="-1">

<!-- #wrap -->
<div id="wrap">
<!-- container -->
<div class="container clearfix">


<!-- body -->
<div id="body" tabindex="-1">
<!-- container 20160819 -->
<div class="container clearfix">

<!-- #forPrint --><hr class="dpn" />
<div id="forPrint">


<!-- #body_head -->
<div id="body_head" class="init">

<!-- /body_head_s1 -->
<!-- body_head_s2 -->
<div id="body_head_s2">
<!-- container -->
<div class="container clearfix">
<div id="body_title"><h1 class="hb1 h1">로그인</h1></div>
</div>
<!-- /container -->
</div>
<!-- /body_head_s2 -->
</div>
<!-- /#body_head -->

<!-- body_content -->
<div id="body_content" class="body_content">
<!-- container -->
<div class="container clearfix">

<!-- cp20login1 -->
<div class="cp20login1 mgt6pct">
<div class="wrap1">

		
		<h4 class="tab on"><a href="#cp20login1c1">일반회원</a></h4>
		<form action="/loginCheck" method="post" name="loginForm" onsubmit="return doSubmit_loginForm(this);">
		<input type="hidden" name="amode" value="_login"/>
		<input type="hidden" name="rn_url" value="/main.web"/>
		<div id="cp20login1c1" class="cont on">
			<div class="item">
				<label for="userId">아이디</label><br>
				<input type="text" style="height:40px;width:430px;" name="userId" id="userId" value="" placeholder="아이디" />
			</div>
			<div class="item">
				<label for="password">비밀번호</label><br>
				<input type="password" style="height:40px;width:430px;"name="userPw" id="userPw" value="" placeholder="비밀번호" />
			</div>
			<button type="submit" class="b1 submit">로그인</button>
			<div class="item">
				<input type="checkbox" id="idSaveCheck" />
				<label for="idSaveCheck">아이디저장</label>
			</div>
			<div class="link">
				<a href="" class="a1">아이디찾기</a>
				<i class="sep">|</i>
				<a href="/register" class="a1">비밀번호찾기</a>
			</div>
			<div class="brclear clearfix"></div>
			<a href="/register" class="b2">
				<i class="b2ic1"></i>
				<span class="b2t1">회원가입</span>
				<i class="b2ic2"></i>
			</a>
		</div>
		</form>
		
		<h4 class="tab"><a href="#cp20login1c2">단체회원</a></h4>
		<form action="/yes/auth/groupuser/login.do" method="post" name="grouploginForm" onsubmit="return doSubmit_grouploginForm(this);">
		<input type="hidden" name="amode" value="_login"/>
		<input type="hidden" name="rn_url" value="/main.web"/>
		<div id="cp20login1c2" class="cont" style="display: none;">
			<div class="item">
				<label for="groupId">아이디</label>
				<input type="text" name="groupId" id="groupId" value="" placeholder="단체아이디" />
			</div>
			<div class="item">
				<label for="grouppassword">비밀번호</label>
				<input type="password" name="password" id="grouppassword" value="" placeholder="비밀번호" />
			</div>
			<button type="submit" class="b1 submit">로그인</button>
			<div class="item">
				<input type="checkbox" id="groupidsave" />
				<label for="groupidsave">아이디저장</label>
			</div>
			<div class="link">
				<a href="/yes/05584.web?gubun=group" class="a1">아이디찾기</a>
				<i class="sep">|</i>
				<a href="/yes/05585.web?gubun=group" class="a1">비밀번호찾기</a>
			</div>
			<div class="brclear clearfix"></div>
			<a href="/yes/05581.web" class="b2">
				<i class="b2ic1"></i>
				<span class="b2t1">단체회원가입</span>
				<i class="b2ic2"></i>
			</a>
		</div>
		</form>

</div>
</div>

<!--context_foot-->
<!--/context_foot-->

</div>
<!-- /container -->
</div>
<!-- /#body_content -->


</div>
<hr class="dpn" /><!-- /#forPrint -->



</div>
<!-- //container -->
</div>
<!-- /#body -->

</div>
<!-- /#container -->
</div>
</div>
<jsp:include page="../include/plugin-js.jsp" />


</body>
</html>