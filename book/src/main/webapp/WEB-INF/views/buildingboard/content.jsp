<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<html>
<head>
<jsp:include page="../include/static-head.jsp" />
<style>

.virtual-box {
   margin-bottom: 120px;
}

b {
    font-weight: bold;
}

em, .em {
    color: #d43;
}

.em1 {
    color: #e00;
}


@media (min-width: 1260px)
#body .container {
    width: auto;
    max-width: 1200px;
}
#body_content>.container {
    margin: auto;
}
@media (min-width: 1260px)
.container {
    max-width: none;
    width: 1200px;
    margin: auto;
}
.container {
    position: relative;
    min-width: 280px;
    margin: 0 20px;
}

.clearfix {
    min-height: 0;
}
user agent stylesheet
div {
    display: block;
}

[class*='panel'].hue4 {
    padding: 30px;
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

.hybrid2row1.ic1size20px>.column1>.infotip1 {
    background-image: url(../resources/vendor/images/checkbox.png);
}
.panel301 {
    padding: .75em;
    border-width: 2px 0 1px;
    background: #fcf6f0;
    border: 1px solid #ecebe9;
}




.cp20view1 .hg1 {
    border-bottom: 1px solid #000;
}


.cp20view1>.even-grid>.column img {
    width: 100%;
    margin: 20px;
}
.cp20view1>.even-grid>.column {
    padding: 0;
}
.even-grid.float-left>.column {
    float: left;
    margin: 0;
}
.even-grid>.column {
    display: inline-block;
    position: relative;
    box-sizing: border-box;
    width: 50%;
    margin: 20px;
    padding: 10px;
    vertical-align: top;
}
@media (min-width: 640px)
.cp20view1>.even-grid>.column:nth-child(2) {
    width: 51.087%;
    padding: 0 0 0 40px;
    
}
.wrap1 {
margin:10px;
}

.cp20dlist1 .di {
    display: block;
    margin: 0 0 -1px;
    padding: 12px 0;
    border-top: 1px solid #e7e7e7;
    border-bottom: 1px solid #e7e7e7;
    overflow: hidden;
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.cp20view1 {
    position: relative;
    line-height: 1.375; 
}

.cp20dlist1 .dl1 {
    list-style: none;
    margin: 0;
    padding: 0;
}

div {
    display: block;
}
.even-grid {
    list-style: none;
    box-sizing: border-box;
    min-height: 0;
    margin: 20px -20px;
    
}
 #star_grade a{
        text-decoration: none;
        color: gray;
    }
    #star_grade a.on{
        color: red;
    }
</style>

</head>

<body>
<jsp:include page="../include/header.jsp" />

<!-- body_content -->



<div id="body_content" class="body_content">
<!-- container -->
<div class="container clearfix">


<div class="panel1 hue4 clearfix">
   <i class="deco10 deco12cash1"></i>
   <div class="body1">
         <p class="fs16px mgt0">
            원하는 일정(날짜)에 이용가능 유무를 <br /> <b class="em">시설담당자에게 먼저 확인 후 예약 진행</b>하시기 바랍니다. 
         </p>
   </div>
</div>
<!-- cp20view1 -->
<div class="cp20view1">

   <div class="hg1">
      <h2 class="h1">${article.buildingName}</h2>
   </div>

   <!-- even-grid -->
   <div class="even-grid float-left">
      <div class="column">
         <div class="wrap1">
            <p class="p1">         
            <c:set var="len" value="${fn:length(image.fileName)}" />
            <c:set var="filetype"
                  value="${fn:toUpperCase(fn:substring(image.fileName, len-4, len))}" />
               <!--<c:out value="len : ${len}, <br> filetype : ${filetype}"/> -->
               <c:choose>
                     <c:when
                        test="${(filetype eq '.JPG') or (filetype eq 'JPEG') or (filetype eq '.GIF') or (filetype eq '.PNG') or (filetype eq '.jpg')}">
                        <img src="<c:url value='/building/file/${image.fileId}'/>"
                        alt="" style="width: 450px; height: 350px;">
                     </c:when>

               <c:otherwise>
                     <img src="<c:url value='/vendor/images/NoIMG.jpg'/>"
                        style="width: 600px; height: 500px;">
                     </c:otherwise>

                     </c:choose>
                  </p>         
            </div>
      </div>
      <div class="column">
         <div class="wrap1">

            <!-- cp20dlist1 -->
             <div class="cp20dlist1">
               <ul class="dl1">
               <li class="di">
                  <b class="dt">시설용도</b>
                  <span class="dd">${article.category}</span>
               </li>
               <li class="di">
                  <b class="dt">위치</b>
                  <span class="dd">${article.buildingAddress}</span>
               </li>
               <li class="di">
                  <b class="dt">수용인원</b>
                  <span class="dd">${article.capacity}</span>
               </li>
               <li class="di">
                  <b class="dt">사용료</b>
                  <span class="dd">
                  ${article.fee}
                  </span>
               </li>
               
               <li class="di">
                  <b class="dt">이용문의</b>
                  <span class="dd">
                     ${article.inquiry}
                  </span>
               </li>
               </ul>
            </div>
            <!-- /cp20dlist1 -->
            
            <div class="box1 panel301">
            <div class="hybrid2row1 ic1size20px">
               <span class="column1"><i class="ic1 infotip1 bsContain" style="background-size: contain;"></i></span>
               <span class="column2 fs14px">
                  <b class="em0 fsD">아래 캘린더에서 <span class="em1">예약가능한 날짜 선택 후  예약을 </span><span class="dpib">진행 하시기 바랍니다.</span></b>
               </span>
            </div>
            </div>
            
            <a class="btn btn-dark" href="/building/all/1">목록으로</a>
            <a class="btn btn-dark" href="/update/${article.buildingId}">수정</a>
            <a id="delBtn" class="btn btn-dark" href="#">삭제</a>
            
            
            
            
               </div>
      </div>
      
      
      </div><!-- /even-grid -->
      
      
      
      </div>
      
      
      
      </div>
      
      <!-- 댓글 영역 -->
        <div id="replies" class="row">
           <div class="offset-md-2 col-md-8">
              <!-- 댓글 쓰기 영역 -->
                <div class="card">
                   <div class="card-body">
                        <div class="row">
                      
                        <c:if test="${not empty sessionScope.loginId }">
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label for="replyText" hidden>댓글 내용</label>
                                    <textarea rows="3" id="newReplyText" name="replyText" class="form-control"
                                        placeholder="댓글을 입력해주세요."></textarea>
                                </div>
                            </div>
                            
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="replyWriter" hidden>댓글 작성자</label>
                                    <input id="newReplyWriter" name="replyWriter"  type="text" class="form-control"
                                        placeholder="작성자 이름" value="${sessionScope.loginId}" 
                                        readonly="readonly"style="margin-bottom: 6px;" >
                                    <button id="replyAddBtn" type="button" class="btn btn-dark form-control">등록</button>
                                </div>
                            </div>
                            </c:if>
                       
                        
                        <c:if test="${empty sessionScope.loginId }">
                           <p style="text-size: 22px; margin: 0 auto;">
                              <a style="color: gray;" href="">댓글은 로그인 후 작성 가능합니다.</a>
                           </p>
                        </c:if>
                        
                            
                        </div>
                    </div>
                </div> <!-- end reply write -->
                
                <!--댓글 내용 영역-->
                <div class="card">
                   <!-- 댓글 내용 헤더 -->
                   <div class="card-header text-white m-0" style="background: #343A40;">
                        <div class="float-left">댓글 (<span id="replyCnt"></span>)</div>
                        <div class="float-right">
                            <a id="plusMinusBtn" class="text-white" data-toggle="collapse" href="#replyCollapse"
                                aria-expanded="false" aria-controls="collapseExample">+</a>
                        </div>
                    </div>
                    
                    <!-- 댓글 내용 바디 -->
                    <div id="replyCollapse" class="card-collapse collapse">
                       <div id="replyData">
                          <!-- 
                             < JS로 댓글 정보 DIV삽입 > 
                          -->
                       </div>
                      
                       
                       <!-- 댓글 페이징 영역 -->
                       <ul class="pagination justify-content-center">
                          <!-- 
                             < JS로 댓글 페이징 DIV삽입 > 
                          -->
                          
                          
                     
                       </ul>
                    </div>
                    
                </div> <!-- end reply content -->
                
           </div>
        </div> <!-- end replies row -->
      
      
      
      
         
      </div> <!-- end container --> 


<jsp:include page="../include/plugin-js.jsp" />

<script>
$(function(){
	
	$("#delBtn").click(function(){
		if(!confirm("게시물을 삭제하시겠습니까?")){
			return;
		}
		const buildingId="${article.buildingId}";
		
		$.ajax({
			type: "DELETE",
			url: "/building/"+buildingId,
			 headers : {
		            "Content-type" : "application/json",
		            "X-HTTP-Method-Override" : "DELETE"
		        },
		        dataType : "text",
		        success : function (result) {
		            if (result === "delSuccess") {
		                alert("게시글 삭제 완료하였습니다.");
		                location.href="/building/all/1";
		            }
		        }
		});
	});
});

</script>
<!-- 댓글 처리 JS -->  
<script>
$(document).ready(function () {
   
   const buildingId="${article.buildingId}";//원본글 번호
   let page=1;
   getReplies(page); //페이지 첫 진입 시 댓글 목록 불러오기
   
   
   //댓글창 컬랩스 이벤트(부트스트랩 기능)
   $('#replyCollapse').on('shown.bs.collapse', function () {
        console.log('댓글 열림');
        $("#plusMinusBtn").text("-");
    });
    $('#replyCollapse').on('hidden.bs.collapse', function () {
        //console.log('댓글 닫힘');
        $("#plusMinusBtn").text("+");
    });
    

   //댓글 목록 불러오기 비동기 통신처리
   function getReplies(pageNum) {
      $.getJSON("/reply/"+buildingId+"/"+pageNum, (result) => {         
         
         let tag = "";
         
         result.replies.forEach((reply) => {
				tag += "<div id='replyContent' class='card-body' data-replyId='"+reply.replyId+"'>"
					+ "    <div class='row user-block'>"
					+ "       <span class='col-md-3'>"
					+ "         <b>"+ reply.replyWriter +"</b>"
					+ "       </span>"
					+ "    </div><br>"
					+ "    <div class='row'>"
					+ "       <div class='col-md-6'>"+ reply.replyText +"</div>"
					+ "       <div class='offset-md-2 col-md-4 text-right'>"
					+   "<button id='replyDelBtn' type='button' class='btn btn-xs btn-dark'>댓글 삭제</button>"
					+ "       </div>"
					+ "    </div><hr style='border-bottom: 1px solid gray;'>"
					+ " </div>";
			});	        
         
         $("#replyData").html(tag);
         $("#replyCnt").html(result.replyCnt);
         
         printPageElement(result.pc);
         
      });
   }
   
   
   
   
   //댓글 저장버튼 클릭 이벤트 처리
   $("#replyAddBtn").on("click", function() {
      
      console.log(buildingId);
      

        const replyText = $("#newReplyText");
        const replyWriter = $("#newReplyWriter");
        
        let replyTextVal = replyText.val();
        let replyWriterVal = replyWriter.val();
        console.log(replyText);

        $.ajax({
            type : "POST",
            url : "/reply",
            headers : {
                "Content-type" : "application/json",
                "X-HTTP-Method-Override" : "POST"
            },
               
            dataType : "text",
            data : JSON.stringify({ //자바스크립트 데이터를 JSON데이터로 변경해준다.
               buildingId : buildingId,
                replyText : replyTextVal,
                replyWriter : replyWriterVal
            }),
            success : function (result) {
                if (result === "replyRegSuccess") {
                    alert("댓글 등록을 완료하였습니다.");
                //getReplies();
                //getRepliesPaging(1);
                replyText.val("");
                replyWriter.val(replyWriterVal);
                $('#replyCollapse').show(); //댓글창 오픈
				getReplies(1);
                }
            },
            
            error:function(request,status,error){
                  alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);}

              
        });
    });//end 댓글 작성 클릭이벤트
   
});////end JQuery


</script> 
   
</body>
</html>