<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, java.text.*"  %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>BAERONE과 함께하세요</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/icomoon-social.css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="css/leaflet.css" />
		<!--[if lte IE 8]>
		    <link rel="stylesheet" href="css/leaflet.ie.css" />
		<![endif]-->
		<link rel="stylesheet" href="css/main.css">

        <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<script type="text/javascript" src="js/postCode/postCode.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    </head>
<%
 java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH.mm.ss");
 String today = formatter.format(new java.util.Date());
%>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
        

        <!-- Navigation & Logo-->
        <div class="mainmenu-wrapper">
	        <div class="container">
	        	<div class="menuextras">
					<div class="extras">
						<ul>
							<li class="shopping-cart-items"><i class="glyphicon glyphicon-shopping-cart icon-white"></i> <a href="myDelivery.do?page=1"><b>배송조회</b></a></li>
							<li>
							</li>
			        		<li><a href="logout.do">로그아웃</a></li>
						<li><a href="myinfo.do">내정보조회</a></li>
                            
			        	</ul>
					</div>
		        </div>
		        <nav id="mainmenu" class="mainmenu">
					<ul>
						<li class="logo-wrapper"><a href="cancelAppl.do"><img src="img/top-logo.png" alt="Multipurpose Twitter Bootstrap Template"></a></li>
						<li class="active">
							<a href="cancelAppl.do">Home</a>
						</li>
						<li class="has-submenu">
							<a href="#">회사소개</a>
                            <div class="mainmenu-submenu" style="
    padding-bottom: 1px;
    padding-top: 2px;
">
								<div class="mainmenu-submenu-inner"> 
									<div>
										<ul>
											<li><a href="page-homepage-sample.html">사업 소개</a></li>
										</ul>
										
									</div>
									<div>
										<ul>
											<li><a href="page-portfolio-2-columns-2.html">연혁</a></li>
										</ul>
										
									</div>
                                    <div>
										<ul>
											<li><a href="page-portfolio-2-columns-2.html">뉴스/공지사항</a></li>
										</ul>
									</div>
                                </div><!-- /mainmenu-submenu-inner -->
							</div>
						</li>
						<li class="has-submenu">
							<a href="#">배송신청/조회</a>
							<div class="mainmenu-submenu" style="
    padding-bottom: 1px;
    padding-top: 2px;
">
								<div class="mainmenu-submenu-inner"> 
									<div>
										<ul>
											<li><a href="deliveryView.do">배송 신청</a></li>
										</ul>
										
									</div>
									<div>
										<ul>
											<li><a href="myDelivery.do">배송 조회</a></li>
										</ul>
										
									</div>
                                </div><!-- /mainmenu-submenu-inner -->
							</div><!-- /mainmenu-submenu -->
						</li>
						<li class="has-submenu">
							<a href="#">고객센터</a>
                            <div class="mainmenu-submenu" style="
    padding-bottom: 1px;
    padding-top: 2px;
">
								<div class="mainmenu-submenu-inner"> 
									<div>
										<ul>
											<li><a href="page-homepage-sample.html">고객의 소리</a></li>
										</ul>
										
									</div>
									<div>
										<ul>
											<li><a href="page-portfolio-2-columns-2.html">고객센터</a></li>
										</ul>
										
									</div>
                                    <div>
										<ul>
											<li><a href="page-portfolio-2-columns-2.html">FAQ</a></li>
										</ul>
									</div>
                                </div><!-- /mainmenu-submenu-inner -->
							</div>
						</li>
                        
					</ul>
				</nav>
			</div>
		</div>

        <!-- Page Title -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
					</div>
				</div>
			</div>
		</div>
	<div class="section">
		<div class="container">
			<form role="form">
			<input type="hidden" name="page" value="${page}" />
			<div class="row">
				<div class="col-sm-9 col-md-offset-2">
					<div class="blog-post blog-single-post">
						<div class="single-post-title">
							<label>제목</label> <input type="text" placeholder="제목을 입력하세요" name="title" id="title">
						</div>
						<div>
							<textarea name="content" id="content" rows="10" cols="100" style="width:100%; height:412px;"></textarea>
						</div>
					</div>
				</div>
			</div>
			</form>
			<div class="row">
				<div class="col-sm-9 col-md-offset-2">
					<div>
						<button type="submit" class="btn pull-right" style="margin: 5px;" id="register">등록</button>
						<button type="submit" class="btn pull-right" style="margin: 5px;" id="cancel">취소</button>
					</div>
				</div>
			</div>
		</div>
	</div>
		<!-- Footer -->
	    <div class="footer">
	    	<div class="container">
		    	<div class="row">
		    		<div class="col-footer col-md-4 col-xs-6">
		    			<h3>바로가기</h3>
		    			<ul class="no-list-style footer-navigate-section">
		    				<li><a href="page-blog-posts.html">About</a></li>
		    				<li><a href="page-portfolio-3-columns-2.html">배송신청</a></li>
		    				<li><a href="page-products-3-columns.html">배송조회</a></li>
		    				<li><a href="page-services-3-columns.html">가격정보</a></li>
		    				<li><a href="page-pricing.html">회원탈퇴</a></li>
		    				<li><a href="page-faq.html">FAQ</a></li>
		    			</ul>
		    		</div>
		    		
		    		<div class="col-footer col-md-4 col-xs-6">
		    			<h3>Contacts</h3>
		    			<p class="contact-us-details">
	        				<b>주소:</b> 대한민국 서울특별시 노원구 공릉동 삼육대학교<br/>
	        				<b>연락처:</b>010-9904-1890<br/>
	        				<b>Email:</b> <a href="mailto:getintoutch@yourcompanydomain.com">bbangss_min@naver.com</a>
	        			</p>
		    		</div>
		    		<div class="col-footer col-md-4 col-xs-6">
		    			<h3>Stay Connected</h3>
		    			<ul class="footer-stay-connected no-list-style">
		    				<li><a href="#" class="facebook"></a></li>
		    				<li><a href="#" class="twitter"></a></li>
		    				<li><a href="#" class="googleplus"></a></li>
		    			</ul>
		    		</div>
		    	</div>
		    	<div class="row">
		    		<div class="col-md-12">
		    			<div class="footer-copyright">&copy; 2013 mPurpose. All rights reserved.</div>
		    		</div>
		    	</div>
		    </div>
	    </div>


<!-- Javascripts -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script>
        <script src="js/bootstrap.min.js"></script>
        <script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
        <script src="js/jquery.fitvids.js"></script>
        <script src="js/jquery.sequence-min.js"></script>
        <script src="js/jquery.bxslider.js"></script>
        <script src="js/main-menu.js"></script>
        <script src="js/template.js"></script>
        <script type="text/javascript">
        
        $(document).ready(function() {
        	var form = $('form[role="form"]');
			$('#cancel').on('click', function() {
				form.attr('action', 'contestList.do')
				form.attr('method', 'get');
				form.submit();
			});
		});
		</script>
        	<script>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>환영합니다!</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/icomoon-social.css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="css/leaflet.css" />
		<!--[if lte IE 8]>
		    <link rel="stylesheet" href="css/leaflet.ie.css" />
		<![endif]-->
		<link rel="stylesheet" href="css/main.css">

        <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <!-- 스마트 에디터 -->
        <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
		<script type="text/javascript" src="resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>
<!-- Start of Header -->
<jsp:include page="../inc/header.jsp" />
<!-- End of Header -->
		
	<!-- Start of Contents -->
	<div class="section">
		<div class="container">
			<form role="form">
			<input type="hidden" name="page" value="${page}" />
			<div class="row">
				<div class="col-sm-9 col-md-offset-2">
					<div class="blog-post blog-single-post">
						<div class="single-post-title">
							<label>제목</label> <input type="text" placeholder="제목을 입력하세요" name="title" id="title">
						</div>
						<div>
							<textarea name="content" id="content" rows="10" cols="100" style="width:100%; height:412px;"></textarea>
						</div>
					</div>
				</div>
			</div>
			</form>
			<div class="row">
				<div class="col-sm-9 col-md-offset-2">
					<div>
						<button type="submit" class="btn pull-right" style="margin: 5px;" id="register">등록</button>
						<button type="submit" class="btn pull-right" style="margin: 5px;" id="cancel">취소</button>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- End of Contents -->
	    
	<!-- Footer -->
	<jsp:include page="../inc/footer.jsp" />
	<!-- End of Footer -->

        <!-- Javascripts -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script>
        <script src="js/bootstrap.min.js"></script>
        <script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
        <script src="js/jquery.fitvids.js"></script>
        <script src="js/jquery.sequence-min.js"></script>
        <script src="js/jquery.bxslider.js"></script>
        <script src="js/main-menu.js"></script>
        <script src="js/template.js"></script>
        <script type="text/javascript">
        
        $(document).ready(function() {
        	var form = $('form[role="form"]');
			$('#cancel').on('click', function() {
				form.attr('action', 'contestList.do')
				form.attr('method', 'get');
				form.submit();
			});
		});
		</script>
<!--  
<script type="text/javascript" src="se/js/HuskyEZCreator.js" charset="utf-8"></script>
-->
	<!-- 스마트에디터프레임 + 전송버튼클릭이벤트스크립트 -->
	<script>
>>>>>>> branch 'master' of https://github.com/leegyu1222/00.BAERONE.git
	$(function(){
	    //전역변수
	    var obj = [];               
	    //스마트에디터 프레임생성
	    nhn.husky.EZCreator.createInIFrame({
	        oAppRef: obj,
	        elPlaceHolder: "content",
	        sSkinURI: "resources/editor/SmartEditor2Skin.html", 
	        htParams : {
	            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
	            bUseToolbar : true,             
	            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
	            bUseVerticalResizer : true,     
	            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
	            bUseModeChanger : true
	        }     
	    });
	    var form = $('form[role="form"]');
		$('#register').on('click', function() {
			obj.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
			form.attr('action', 'contestSave.do')
			form.attr('method', 'post');
			form.submit();
		});
	})
	</script>
    </body>
</html>