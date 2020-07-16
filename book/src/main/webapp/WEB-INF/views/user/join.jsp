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
.hb1.h1 {
    padding: 0 0 .25em;
    background-image: url(../../img/lib/h1bg.png);
    background-position: 0 100%;
    font-size: 2.5em;
}
.init.init, .init.init * {
    text-decoration: none;
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

.hb1.h4 {
    background-image: url(../../img/lib/h5bg.png);
    color: #089;
    font-weight: 600;
    font-size: 1.25em;
}

.tar {
    text-align: right !important;
}
h1, h2, h3, h4, h5, h6, p, ul, ol, dl, menu, blockquote, fieldset, form, pre, hr {
    margin-top: 1.25em;
    margin-bottom: 1.25em;
}
user agent stylesheet
p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
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
[class*='panel'].shadow {
    box-shadow: 0 0 10px 0 rgba(0, 0, 0, .1);
}
[class].panel1 {
    border-width: 1px;
}
.bg-default {
    background-color: #fff;
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

table.t01>*>tr:first-child>* {
    border-top: 0;
}
table.t01>*>tr>th {
    font-weight: normal;
}
table.t01>*>tr>th, table.t01>*>tr>td {
    padding: .5em .75em;
    border: 0;
    border-top: 1px solid #ddd;
}
table.bdsd>*>tr>* {
    border-style: dotted;
}
tbody th, tbody td {
    text-align: left;
    vertical-align: top;
}
th, td {
    padding: .375em .5em;
    border: 1px solid #ddd;
}
user agent stylesheet
th {
    display: table-cell;
    vertical-align: inherit;
    font-weight: bold;
    text-align: -internal-center;
}
.writeform1 tbody {
    text-align: left;
    vertical-align: top;
}
table.t01 {
    width: 100%;
    margin: 0;
    border: 0;
    border-collapse: collapse;
}
table.writeform1 {
    table-layout: fixed;
    line-height: 1.375;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}


</style>
</head>
<body>

<jsp:include page="../include/header.jsp" />

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
<form action="" name="signup" id="signUpForm" method="post">
<!-- member1join1 -->
<div class="member1join1">


<h4 class="hb1 h4" style="margin: auto;">아이디와 비밀번호</h4> 
<p class="tar" style="margin: auto;"><em class="required" title="필수항목">*</em> 는 필수 입력 항목입니다.</p>
<!-- panel1 -->
<div class="panel1 bg-default shadow rspnsv">



<table class="writeform1 t01 bdsd">

<col style="width:10em;" /><col />
<tbody>
       
		<tr>
		<th scope="row" class="item"><label for="userId" class="head">아이디 <em class="required" title="필수항목">*</em></label></th>
		<td>
		<div class="explain form-text1 dpb">* 영문자,숫자 4-14자</div>
		<input id="user_id" name="userId" type="text" value=""/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		<!--  
		<a href="#" onclick="ajaxIdCheck(); return false;" class="btn btn-dark">아이디 중복확인</a>
		-->
		<input type="button" value="아이디 중복확인" class="btn btn-dark" id="idCheck">
		
		</td>
		</tr>
<tr>
<th scope="row" class="item"><label for="password" class="head">비밀번호 <em class="required" title="필수항목">*</em></label></th>
<td>

<div class="explain form-text1 dpb">* 8자 이상. 영문자 숫자 특수문자 혼용</div>
<input id="user_pw" name="userPw" class="text" type="password" value=""/>&nbsp;&nbsp;&nbsp; <span id="pwChk1"></span>
</td>
</tr>
<tr>
<th scope="row" class="item"><label class="head" for="repassword">비밀번호 확인 <em class="required" title="필수항목">*</em></label></th>
<td>
<input type="password" id="pw_check" class="text"  />&nbsp;&nbsp;&nbsp;<span id="pwChk2"></span>
</td>
</tr>
</tbody>
</table>
</div>

<h4 class="hb1 h4">회원정보</h4>
<p class="tar" > <em>*</em> 는 필수 입력 항목입니다.</p>
<!-- panel1 -->
<div class="panel1 bg-default shadow rspnsv">
<table class="writeform1 t01 bdsd">

<col style="width:10em;" /><col />
<tbody>
<tr>
<th scope="row" class="item"><label for="username" class="head">이름(한글) <em class="required" title="필수항목">*</em></label></th>
<td>
<input id="user_name" name="userName" placeholder="실명" type="text" />
</td>
</tr>
<tr>
<th scope="row" class="item"><label for="birthday" class="head">생년월일 <em class="required" title="필수항목">*</em></label></th>
<td>
<input id="user_birth" name="userBirth" type="date"/>
</td>
</tr>
<tr>
<th scope="row" class="item"><label for="mobile" class="head">휴대전화번호 <em class="required" title="필수항목">*</em></label></th>
<td><div class="explain form-text1 dpb">* 010-0000-0000 형식으로 입력하세요.</div>
<input id="phoneNum" name="phoneNum" class="text" type="text" value=""/>
</td>
</tr>
<tr>
<th scope="row" class="item"><label for="email" class="head">이메일 </label></th>
<td><div class="explain form-text1 dpb">* @를 포함한 정확한 주소를 입력해 주세요.</div>
<input id="email" name="email" class="text w100" type="text" value=""/>
</td>
</tr>
</tbody>
</table>

</div>
</div>
<hr class="dpn" /><!-- /#forPrint -->
<!-- infomenu1 -->
<div class="infomenu1 mg0 dott">
	<p class="tac">
		<span class="dpib">
			&nbsp;
					<button type="submit" value="submit" id="signup-btn" class="btn btn-dark">회원가입하기</button>
			&nbsp;
		</span>
	</p>
</div>
<!-- /infomenu1 -->
<!--context_foot-->
</form>
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
<!-- /#container -->
<jsp:include page="../include/plugin-js.jsp" />
<script type="text/javascript">
//start JQuery
$(function(){
	
	//입력값 검증 정규표현식
	const getIdCheck= RegExp(/^[a-zA-Z0-9]{4,14}$/);
	const getPwCheck= RegExp(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/);
	const getName= RegExp(/^[가-힣]+$/);
	const getPhoneNum = RegExp(/^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/);
	const getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
	
	//입력값 검증을 마칠 경우 true로 설정
	//(chk1 : 아이디검증, chk2 : 비번, chk3: 비번확인란, chk4: 이름, chk5: 생년월일, chk6: 휴대폰 번호, chk7: 이메일)
	let chk1 = false, chk2 = false, chk3 = false, chk4 = false, chk5 = false, chk6 = false, chk7 = false;
	
	//회원가입 form DOM객체 저장.
	const regForm=$("#signUpForm");
	
	
	//회원가입 검증
	//ID 입력값 검증
	$("#idCheck").click(function(){
		
		if(""==$("#user_id").val()){
			alert("아이디를 입력해주세요");
			$("#user_id").focus();
			chk1=false;
		}
		//아이디 유효성 검사
		else if(!getIdCheck.test($("#user_id").val())){
			alert("영문자, 숫자 4-14자");
			chk1=false;
		}
		//ID 중복확인 비동기 처리
		else{
		const userId = $('#user_id').val();
		console.log(userId);
		$.ajax({
			type: "POST",
			url: "/idCheck",
			headers: {
	            "Content-Type": "application/json",
	            "X-HTTP-Method-Override": "POST"
	        },
			data: userId ,
			datatype: "json",
			success: function(data) {
				console.log(data);
				if(data.confirm === "OK") {
					alert("사용가능한 아이디입니다.");
					chk1 = true;
				} else {
					alert("중복된 ID입니다.");
					chk1 = false;
				}
			},
			error : function(error) {
	            
	            console.log("error : " + error);
	        }
		});//end ID비동기 처리
		}
	});//end ID 입력값 검증
	
	
	//패스워드 입력값 검증
	$("#user_pw").on('keyup', function(){
		
	
		
		//비밀번호 공백 확인
		if(""===$("#user_pw").val()){
			$('#pwChk1').html('<b style="font-size:14px;color:red;">패스워드는 필수정보</b>');
		    chk2=false;
		}
		//비밀번호 유효성 검사
		else if(!getPwCheck.test($("#user_pw").val()) || $("#user_pw").val().length < 8){
			$('#pwChk1').html('<b style="font-size:14px;color:red;">특수문자 포함 8자이상</b>');
			chk2=false;
		}else{
			$('#pwChk1').html('<b style="font-size:14px;color:green;">사용가능</b>');
			chk2=true;
		}
		
	});//end 패스워드 입력값 검증
	
	//패스워드 확인란 입력값 검증
	$('#pw_check').on('keyup',function(){
		
		//비밀번호 공백 확인
		if(""===$("#pw_check").val()){
			$('#pwChk2').html('<b style="font-size:14px;color:red;">패스워드는 필수정보</b>');
		    chk2=false;
		}
		
		else if($('#user_pw').val() != $("#pw_check").val()){
			
			$('#pwChk2').html('<b style="font-size:14px;color:red;">일치하지 않음</b>');
			chk3=false;
		}
		else{
		$('#pwChk2').html('<b style="font-size:14px;color:green;">일치함</b>');
		chk3=true;
		}
	    
	});//end 패스워드 확인란
	
	//이름 입력값 검증.
	$("#user_name").on('keyup',function(){
		
		//이름값 공백 확인
		if($("user_name").val()===""){
			chk4=false;
		}
		else if(!getName.test($("#user_name").val())){
			chk4=false;
		}
		else{
			chk4=true;
		}
	});//end 이름 입력값 검증.
	
	//생년월일 검증
	$("#user_birth").on('keyup',function(){
		//생년월일 공백확인
		if($("#user_birth")===""){
			chk5=false
		}
		chk5=true;
	});//end 생년월일 검증
	

	//핸드폰 번호 검증
	$('#phoneNum').on('keyup', function() {
		//휴대폰 번호 공백 확인
		if($("#phoneNum").val() == ""){
			chk6 = false;
		} 
		else if(!getPhoneNum.test($("#phoneNum").val())){
			chk6 = false;
		} 
		else {
			chk6=true;
		}
	});//end 핸드폰 번호 검증
	
	//이메일 입력값 검증.
	$('#email').on('keyup', function() {
		//이메일값 공백 확인
		if($("#email").val() == ""){
			chk7 = false;
		}		         
		//이메일값 유효성검사
		else if(!getMail.test($("#email").val())){
			chk7 = false;
		} 
		else {
			chk7=true;	
		}
		
	});
	
	
	//회원가입 버튼 클릭 이벤트
	$("#signup-btn").click(function(e){
		if(chk1 && chk2 && chk3 && chk4 && chk5 && chk6 && chk7){
			const id = $("#user_id").val();
			const pw = $("#user_pw").val();
			const name = $("#user_name").val();
			const birth =$("#user_birth").val();
			const phone =$("#phoneNum").val();
			const email =$("#email").val();
			const user={
					userId: id,
		            userPw: pw,
		            userName: name,
		            userBirth: birth,
		            phoneNum: phone,
		            email: email
			};
			console.log(user);
			$.ajax({
				type: "POST",
				url: "/register",
				headers: { //요청 헤더정보
					
					"Content-Type": "application/json;charset=utf-8",
					"X-HTTP-Method-Override": "POST" //PUT, DELETE를 지원하지 않는 브라우저에게 대체로 쓸 메서드를 지정
				},
				dataType: "text",
				data: JSON.stringify(user),
				success: function(result) {
					console.log("result : " + result);
					if(result === "joinSuccess"){
						alert("회원가입 성공!");
						self.location = "/login";
					}
				}
			}); //통신끝
			
			
			
			

						
		} else {
			console.log("입력정보를 다시 입력하세요.");
			alert('입력정보를 다시 확인하세요.');	
		}

		
	});
	
	
	

	
});//end start JQuery

</script>

</body>
</html>