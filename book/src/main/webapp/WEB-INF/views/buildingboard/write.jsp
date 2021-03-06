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
</style>
</head>
<body>
<jsp:include page="../include/header.jsp" />
 <div class="virtual-box"></div>
   

  <div class="container">
       <div class="row">
           <div class="offset-md-1 col-md-10">
               <div class="card">
                   <div class="card-header text-black" style="background: light gray;">
                       <h2>대관 등록</h2>
                   </div>
                   <div class="card-body">
                       <form id="regForm" action="/building" method="post" enctype="multipart/form-data">
                           <div class="form-group">
                               <label for="buildingName" >대관이름</label>
                               <input id="buildingName" name="buildingName" type="text" class="form-control" placeholder="대관이름">
                           </div>
                           
                           <div class="form-group">
                               <label for="category">카테고리</label>
                               <input id="category" name="category" type="text" class="form-control" placeholder="카테고리" >
                           </div>
                           
                           <div class="form-group">
                               <label for="buildingAddress">대관주소</label>
                               <input id="buildingAddress" name="buildingAddress" type="text" class="form-control" placeholder="대관주소" >
                           </div>
                           
                           <div class="form-group">
                               <label for="capacity">수용인원</label>
                               <input id="capacity" name="capacity" type="text" class="form-control" placeholder="수용인원" >
                           </div>
   
                           <div class="form-group">
                               <label for="fee" >요금</label>
                               <input id="fee" name="fee" type="text"  class="form-control" placeholder="요금">
                           </div>
                           
                           <div class="form-group">
                               <label for="inquiry">이용문의</label>
                               <input id="inquiry" name="inquiry" type="text" class="form-control" placeholder="이용문의" >
                           </div>
                           
                           <tr>
	<td>이미지파일</td>
	<td><input type="file" name="file"></td>
	</tr>
                           
                           <!--첨부파일 드래그앤 드롭 영역 
                           <div class="form-group">
                               <label for="">File Drop Here!!</label>
                               <div class="fileDrop"></div>
                           </div>
                           
                           <!-- 첨부파일 목록 영역 
                           <div class="box-footer" style="margin-bottom: 20px;">
                           	<ul class="uploadedList">
                           		<!-- 리스트들 배치 영역 
                           	</ul>
                           </div>
                           -->
                           <div>
                            <button id="regBtn" type="button" class="btn btn-dark form-control">등록</button>
                            <button type="button" class="btn btn-danger form-control">취소</button>
                       	</div>     
                       </form>
                       
                   </div>
               </div>
           </div>
       </div>
   </div>
   
   

<jsp:include page="../include/plugin-js.jsp" />

<script>
	$(function() {
		//글쓰기 버튼 클릭 이벤트
		$("#regBtn").click(() => {
			let chk = confirm("대관 등록을 완료하시겠습니까?");
			if(chk) {
				$("#regForm").submit();
			}
		});
		
		
	});//end jQuery
</script>

</body>
</html>