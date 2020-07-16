<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../include/static-head.jsp" />
<style>
a { text-decoration:none !important }
a:hover { text-decoration:none !important }

header.masthead {
   
   display: none;
}   
div#summary{
background:white;
}
</style>


</head>
<body>
<jsp:include page="../include/header.jsp" />
 <!-- Article Grid -->
   <div class="container">
     
     <section class="bg-light" id="portfolio" style="padding-top: 90px; padding-bottom: 0;">
       <div class="container">        
         <div class="row">
         
         <c:forEach var="b" items="${articles}">
           <div class="col-md-4 portfolio-item">
             <a class="portfolio-link" data-toggle="modal" href="#">
               <div class="portfolio-hover"></div>
                <c:set var="len" value="${fn:length(b.fileName)}" />
                <c:set var="filetype" value="${fn:toUpperCase(fn:substring(b.fileName, len-4, len))}" />
                <c:choose>
                 <c:when test="${(filetype eq '.JPG') or (filetype eq 'JPEG') or (filetype eq '.GIF') or 
                 (filetype eq '.PNG')}">
                 <img class="img-thumbnail img-fluid" src="<c:url value='/building/file/${b.fileId}'/>" 
                 alt="" style="width:100%; height:400px;">
                 </c:when>
                 <c:otherwise>
													<img src="<c:url value='/vendor/images/NoIMG.jpg'/>"
														style="width: 200px; height: 200px;">
												</c:otherwise>
                  </c:choose>
             </a>
             <div id="summary" class="portfolio-caption">
             <h4>
               <a class="article-link" style="color:black" href="/building/${b.buildingId}">${b.buildingName}</a>
             </h4>
               <p>위치:${b.buildingAddress}</p>
               <p>수용인원:${b.capacity}석</p>
               <p>이용문의:${b.inquiry}</p>
           </div>
           </div>
          </c:forEach> 
          </div>
       </div>
     </section>
     </div>
     
     <div class="offset-md-10 col-md-2">
                <a class="btn btn-secondary" href="/building">글쓰기</a>
     </div>
   

 <!--페이징 처리 부분-->
      <div class="offset-md-5 col-md-2">
        <ul class="pagination justify-content-center">
			<c:if test="${pc.prev}">
            	<li class="page-item">
            		<a id="page-prev" class="page-link page-custom" href="/buidling/all/${pc.beginPage-1}">이전</a>
           		</li>
			</c:if>
			
			<c:forEach var="pageNum" begin="${pc.beginPage}" end="${pc.endPage}">
            	<li class="page-item">
            		<a class="page-link page-custom ${(pageNum == pc.paging.page) ? 'page-active' : ''}" href="/building/all/${pageNum}">${pageNum}</a>
            	</li>
            </c:forEach>
            
			<c:if test="${pc.next}">
            	<li class="page-item">
            		<a id="page-next" class="page-link page-custom" href="/building/all/${pc.endPage+1}">다음</a>
            	</li>
        	</c:if>
        </ul>
        </div>
        
<jsp:include page="../include/plugin-js.jsp" />
	
</body>
</html>