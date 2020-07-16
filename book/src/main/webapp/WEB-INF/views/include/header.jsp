<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
a { text-decoration:none !important }
a:hover { text-decoration:none !important }

p{
font-size:1.5em;}

</style>
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">


    <link rel="shortcut icon" href="http://razonartificial.com/themes/reason/v1.6/assets/img/favicon.png">

    <meta name="description" content="">

    <!-- CSS -->
    <link href="/vendor/custom/css/preload.css" rel="stylesheet">

    <!-- Compiled in vendors.js -->
  
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/vendor/bootstrap/css/bootstrap-switch.min.css" rel="stylesheet">
    <link href="/vendor/bootstrap/css/font-awesome.min.css" rel="stylesheet">
    <link href="/vendor/bootstrap/css/animate.min.css" rel="stylesheet">
    <link href="/vendor/bootstrap/css/slidebars.min.css" rel="stylesheet">
    <link href="/vendor/bootstrap/css/lightbox.css" rel="stylesheet">
    <link href="/vendor/bootstrap/css/jquery.bxslider.css" rel="stylesheet" />
    <link href="/vendor/custom/css/buttons.css" rel="stylesheet">


    <link href="/vendor/custom/css/vendors.css" rel="stylesheet">
    <link href="/vendor/custom/css/shCore.css" rel="stylesheet">

    <!-- RS5.0 Stylesheet -->
    <!--<link rel="stylesheet" type="text/css" href="assets/css/settings.css">
    <link rel="stylesheet" type="text/css" href="assets/css/layers.css">
    <link rel="stylesheet" type="text/css" href="assets/css/navigation.css">-->

    <link href="/vendor/custom/css/style-blue.css" rel="stylesheet" title="default">
    <link href="/vendor/custom/css/width-full.css" rel="stylesheet" title="default">



    
        <script src="assets/js/html5shiv.min.js"></script>
        <script src="assets/js/respond.min.js"></script>
 
</head>

<!-- Preloader -->
<body style="overflow: visible;"><div id="preloader" style="display: none;">
    <div id="status" style="display: none;">&nbsp;</div>
</div>





<header id="header-full-top" class="hidden-xs header-full">
    <div class="container">
        <div class="header-full-title">
            <h1><a href="/"> <span>대관   예약 </span> 사이트</a></h1><br>
            <p>       </p>
        </div>
        <nav class="top-nav">
        
     <!-- 로그인 하지 않은 사람이 보게될 메뉴 -->
     <c:if test="${sessionScope.loginId ==null}">
            <div class="dropdown animated  animation-delay-1">
                <a href="/login"  ><i class="fa fa-unlock-alt"></i> 로그인</a>
            </div> 
            
            
            <div class="dropdown animated  animation-delay-1">
                <a href="/auth"  ><i class="fa fa-user"></i> 회원가입</a>
               
            </div> <!-- dropdown -->
            <div class="dropdown animated  animation-delay-1">
                <a href="http://razonartificial.com/themes/reason/v1.6/#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-search"></i></a>
                <div class="dropdown-menu dropdown-menu-right dropdown-search-box animated fadeInUp">
                    <form role="form">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button class="btn btn-ar btn-primary" type="button">Go!</button>
                            </span>
                        </div><!-- /input-group -->
                    </form>
                </div>
            </div> <!-- dropdown -->
     </c:if>
     
     <!-- 로그인 한 사람이 보게될 메뉴 -->
          <c:if test="${sessionScope.loginId !=null}">
	          <li>
	          	<div class="dropdown">
	            	<a class="nav-link dropdown-toggle" href="#" id="dropdownMenuLink" data-toggle="dropdown">
	            	${sessionScope.loginId}님</a>
	            	<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
					    
					    <a class="dropdown-item withUsLink" href="/logout">Sign-Out</a>
	  				</div>
	            </div>
	          </li>
	       
          </c:if>
            
        </nav>
    </div> <!-- container -->
</header> <!-- header-full -->
<nav class="navbar navbar-default navbar-header-full navbar-dark bg-dark navbar-static-top" role="navigation" id="header">
    <div class="container">
       
 
        <!-- Collect the nav links, forms, and other content for toggling -->
        
        <!-- 여기다가 목록 적으면 된다아아앙 -->
        <p><a href="" style="color:white">이용 안내</a></p>&nbsp;&nbsp;&nbsp;
        <p><a href="/building/all/1" style="color:white">대관 예약</a></p>&nbsp;&nbsp;&nbsp;
        <p><a href="/getuser?id=${sessionScope.loginId}" style="color:white">마이페이지</a></p>
        
        
    </div><!-- container -->
</nav>
  
  
  
  
  