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
#wrap>.container {
    margin: auto;
}
#body_title .h1 {
    display: block;
    position: relative;
    margin: 0;
    padding: 0 0 .375em;
    border-bottom: 2px solid #363940;
    background: none;
    color: #000;
    font-weight: 400;
    font-family: 'GimhaeGaya Regular','GimhaeGaya', /* 'Open Sans', */ 'Microsoft JhengHei', '맑은 고딕','Malgun Gothic', sans-serif;
    font-size: 1em;
    letter-spacing: -2px;
}



@media (min-width: 768px)
#body_title {
    font-size: 34px;
}

#body_title {
    clear: both;
    position: relative;
    font-size: 26px;
    line-height: 1.375;
    letter-spacing: -.0625em;
}

@media (min-width: 1000px)
.even-grid[class*='evenmix-124']>.column, .even-grid[class*='evenmix-234']>.column {
    width: 25%;
}
@media (min-width: 640px)
.even-grid[class*='evenmix-12']>.column, .even-grid[class*='evenmix-22']>.column {
    width: 50%;
}
.even-grid[class*='evenmix-1']>.column {
    width: 100%;
}
.even-grid.gap24px>.column {
    padding: 12px;
}
.even-grid>.column {
    display: inline-block;
    position: relative;
    box-sizing: border-box;
    width: 100%;
    margin: 0 -.25em 0 0;
    padding: 10px;
    vertical-align: top;
}
user agent stylesheet
div {
    display: block;
}
.even-grid {
    list-style: none;
    box-sizing: border-box;
    min-height: 0;
    margin: 10px -10px;
    padding: 0;
}
.tac {
    text-align: center !important;
}
#body_content {
    clear: both;
    position: relative;
    min-height: 300px;
    word-wrap: break-word;
    padding: 0 0 60px;
}

[class].panel1 {
    border-width: 1px;
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
.fs15px {
    font-size: 15px !important;
}
.bgcD, .bgcf {
    background-color: #fff !important;
}
.bdcd {
    border-color: #ddd !important;
}
.pd30px {
    padding: 30px !important;
}
.mg0 {
    margin: 0 !important;
}
user agent stylesheet
div {
    display: block;
}
.even-grid {
    list-style: none;
    box-sizing: border-box;
    min-height: 0;
    margin: 10px -10px;
    padding: 0;
}
.tac {
    text-align: center !important;
}

</style>
</head>
<body>
<jsp:include page="../include/header.jsp" />
<div class="virtual-box"></div>
<!-- #wrap -->
<div id="wrap">

<!-- body -->
<div id="body" tabindex="-1">
<!-- container 20160819 -->
<div class="container clearfix">

<!-- #forPrint --><hr class="dpn" />
<div id="forPrint">

<!-- #body_head -->
<div id="body_head" class="init">
<!-- body_head_s1 -->
<div id="body_head_s1">

<!-- /container -->
</div>
<!-- /body_head_s1 -->
<!-- body_head_s2 -->
<div id="body_head_s2">
<!-- container -->
<div class="container clearfix">
<div id="body_title"><h1 class="hb1 h1">회원가입</h1></div>
<br>
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

<div class="tac">
	<p>
		<strong class="em0 fs30px lhD ls-0075em">해당하는 <em class="em">회원가입 방식을 선택</em>해 주세요.</strong>
	</p>
	<p class="cv3 fs20px">
		회원구분에 따라 가입절차에 차이가 있으니<br class="hide-all show-medium" />
		반드시 본인에 해당하는 경우를 선택해 주시기 <span class="dpib">바랍니다.</span>
	</p>
	<br>
</div>

<!-- even-grid -->
<div class="even-grid evenmix-124 gap24px tac">
<div class="column">
	<!-- panel1 -->
	<div class="panel1 mg0 pd30px bdcd bgcf fs15px">
		<i class="ic1 indy icw150person1check1"></i>
		<div>
			<strong class="cv0 fs20px">일반 사용자 회원가입</strong>
		</div>
		
		<a class="btn btn-dark" href="/register">회원가입하기</a>
	</div>
	<!-- /panel1 -->
	
</div>
<div class="column">
	<!-- panel1 -->
	<div class="panel1 mg0 pd30px bdcd bgcf fs15px">
		<i class="ic1 indy icw150person1leaves1"></i>
		<div>
			<strong class="cv0 fs20px">사업자  회원가입</strong>
		</div>
		
		
		<a class="btn btn-dark" href="/register">회원가입하기</a>
	</div>
	<!-- /panel1 -->
</div>


</div>
<!-- /even-grid -->


<!--context_foot-->
<!--/context_foot-->

</div>
<!-- /container -->
</div>





<!-- /#body_content -->
</div>
</div>
<!-- //container -->
</div>
<!-- /#body -->
</div>
<!-- #wrap -->
<jsp:include page="../include/plugin-js.jsp" />


</body>
</html>