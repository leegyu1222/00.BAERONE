<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>mPurpose - Multipurpose Feature Rich Bootstrap Template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/icomoon-social.css">
        <link href="css/simple-sidebar.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="css/leaflet.css" />
		<!--[if lte IE 8]>
		    <link rel="stylesheet" href="css/leaflet.ie.css" />
		<![endif]-->
		<link rel="stylesheet" href="css/main.css">

        <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
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
							<li class="shopping-cart-items"><i class="glyphicon glyphicon-shopping-cart icon-white"></i> <a href="page-shopping-cart.html"><b>배송조회</b></a></li>
							<li>
							</li>
			        		<li><a href="page-login.html">로그아웃</a></li>
                            <li><a href="page-login.html">내정보조회</a></li>
                            
			        	</ul>
					</div>
		        </div>
		        <nav id="mainmenu" class="mainmenu">
					<ul>
						<li class="logo-wrapper"><a href="index.html"><img src="images/top-logo.png" alt="Multipurpose Twitter Bootstrap Template"></a></li>
						<li class="active">
							<a href="index.html">Home</a>
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
											<li><a href="page-homepage-sample.html">배송 신청</a></li>
										</ul>
										
									</div>
									<div>
										<ul>
											<li><a href="page-portfolio-2-columns-2.html">배송 조회</a></li>
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
        <div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                </li>
                <li><a href="#">배송 신청</a></li>
                <li><a href="#">배송 조회</a></li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row" >
                    <div class="col-lg-12">
                        <h2>배송 신청</h2>
                         <h4 class="subtit">보내는 분</h4>
								<div class="comment-form-wrapper">
									<form class="">
				        				<div class="form-group">
				        				 	<label for="comment-name"><i class="glyphicon glyphicon-user"></i> <b>이름</b></label>
											<input class="form-control" id="comment-name" type="text" placeholder="">
										</div>
										<div class="form-group">
											<label for="comment-email"><i class="glyphicon glyphicon-envelope"></i> <b>연락처</b></label>
											<input class="form-control" id="comment-email" type="text" placeholder="">
										</div>
										<div class="form-group">
											<label for="comment-message"><i class="glyphicon glyphicon-comment"></i> <b>주소</b></label>
											<textarea class="form-control" rows="5" id="comment-message"></textarea>
										</div>
				        			</form>
								</div><br>
                        <h4 class="subtit">받는 분</h4>
								<div class="comment-form-wrapper">
									<form class="">
				        				<div class="form-group">
				        				 	<label for="comment-name"><i class="glyphicon glyphicon-user"></i> <b>이름</b></label>
											<input class="form-control" id="comment-name" type="text" placeholder="">
										</div>
										<div class="form-group">
											<label for="comment-email"><i class="glyphicon glyphicon-envelope"></i> <b>연락처</b></label>
											<input class="form-control" id="comment-email" type="text" placeholder="">
										</div>
                                        <div class="form-group">
											<label for="comment-email"><i class="glyphicon glyphicon-envelope"></i> <b>주소</b></label>
											<input class="form-control" id="comment-email" type="text" placeholder="">
										</div>
										<div class="form-group">
											<label for="comment-message"><i class="glyphicon glyphicon-comment"></i> <b>Your Message</b></label>
											<textarea class="form-control" rows="5" id="comment-message"></textarea>
										</div>
				        			</form>
								</div><br>
                        <h4 class="subtit">상품 정보</h4>
								<div class="comment-form-wrapper">
									<form class="">
				        				<div class="form-group">
				        				 	<label for="comment-name"><i class="glyphicon glyphicon-user"></i> <b>상품 상세 설명</b></label>
											<input class="form-control" id="comment-name" type="text" placeholder="">
										</div>
										<div class="form-group">
											<label for="comment-email"><i class="glyphicon glyphicon-envelope"></i> <b>상품 가격</b></label>
											<input class="form-control" id="comment-email" type="text" placeholder="">
										</div>
										<div class="form-group">
											<label for="comment-message"><i class="glyphicon glyphicon-comment"></i> <b>특이 사항</b></label>
											<textarea class="form-control" rows="5" id="comment-message"></textarea>
										</div>
										<div class="form-group">
											<button type="button" class="btn btn-default pull-right">취소하기</button>
										</div>
                                        <div class="form-group">
											<button type="submit" class="btn btn-large pull-right">신청하기</button>
										</div>
										<div class="clearfix"></div>
				        			</form>
								</div><br>
                      
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

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

    </body>
</html>