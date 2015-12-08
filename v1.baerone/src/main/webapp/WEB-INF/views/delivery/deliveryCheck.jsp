<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, java.text.*"  %>
<!DOCTYPE html>
<<<<<<< HEAD
<html>
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
=======
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
>>>>>>> branch 'master' of https://github.com/leegyu1222/00.BAERONE.git
<script>
	/**
 	*결제하기 팝업창
 	*/
	function payment() {
		window.open("", "POP", "height=400, width=400, left=400, top=100");
		document.deliveryCheck.action = "payment.do";
		document.deliveryCheck.target = "POP";
		document.deliveryCheck.method = "post";
		document.deliveryCheck.submit();
	}
	
	function modifyDelivery(){
		document.deliveryCheck.action = "modifyDelivery.do";
		document.deliveryCheck.method = "post";
		document.deliveryCheck.submit();
	}
    
</script>
    </head>
<%
 java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH.mm.ss");
 String today = formatter.format(new java.util.Date());
%>
<<<<<<< HEAD
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
							<li class="shopping-cart-items"><i class="glyphicon glyphicon-shopping-cart icon-white"></i> <a href="myDelivery.do"><b>배송조회</b></a></li>
							<li>
							</li>
			        		<li><a href="logout.do">로그아웃</a></li>
						<li><a href="myinfo.do">내정보조회</a></li>
                            
			        	</ul>
					</div>
		        </div>
		        <nav id="mainmenu" class="mainmenu">
					<ul>
						<li class="logo-wrapper"><a href="main.html"><img src="img/top-logo.png" alt="Multipurpose Twitter Bootstrap Template"></a></li>
						<li class="active">
							<a href="main.html">Home</a>
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
		
		<h1>신청내역 확인</h1>
		<h1>보내는사람</h1><hr>
		<form name = "deliveryCheck" id = "deliveryCheck">
=======
    <body>
        <div class="mainmenu-wrapper">
	        <div class="container">
	        	<div class="menuextras">
					<div class="extras">
						<ul>
							<li class="shopping-cart-items"><i class="glyphicon glyphicon-shopping-cart icon-white"></i> <a href="myDelivery.do"><b>배송조회</b></a></li>
							<li>
							</li>
			        		<li><a href="logout.do">로그아웃</a></li>
						<li><a href="myinfo.do">내정보조회</a></li>
                            
			        	</ul>
					</div>
		        </div>
		        <nav id="mainmenu" class="mainmenu">
					<ul>
						<li class="logo-wrapper"><a href="main.html"><img src="img/top-logo.png" alt="Multipurpose Twitter Bootstrap Template"></a></li>
						<li class="active">
							<a href="main.html">Home</a>
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
						<h1>신청 내역 확인 </h1> 
					</div>
				</div>
			</div>
		</div>
        
        <div class="section" style="background-color : white">
	    	<div class="container">
				<div class="row">
					<!-- Sidebar -->
					<!-- End Sidebar -->
					<div class="col-sm-8 col-sm-offset-2">
						<div class="blog-post blog-single-post" style="
    margin-bottom: 20px;
    height: 1514px;
">

                            <form name = "deliveryCheck" id = "deliveryCheck">
							<div class="single-post-content">
								<h3>보내는 사람</h3><br>
									<div class="comment-form-wrapper">
	<div class="form-group">
				        				 	<label for="comment-name"><i class="glyphicon glyphicon-user"></i> <b>이름</b></label>
											<input class="form-control" type="text" name="senderName" value="${delivery.senderName}" readOnly>
										</div>
										<div class="form-group">
											<label for="comment-email"><i class="glyphicon glyphicon-phone"></i> <b>휴대폰</b></label>
											<input class="form-control" type="text"  name="senderPhone" value="${delivery.senderPhone}">
										</div>
                                        <div class="form-group">
											<label for="comment-email"><i class="glyphicon glyphicon-envelope"></i> <b>주소</b></label><br>
											<input class="form-control" type="text" id = "senderPostNo" name="senderPostNo" value="${delivery.senderPostNo}" style="width:50%; display:inline;" >
                                            <input type="button" onclick="sender_Postcode()" value="우편번호 찾기"><br>
										</div>
                                        <div class="form-group">
											<label for="comment-email"><b>지번 주소</b></label>
											<input class="form-control" type="text"  id = "senderAddrOld" name="senderAddrOld" value="${delivery.senderAddrOld}">
										</div>
                                        <div class="form-group">
											<label for="comment-email"><b>도로명 주소</b></label>
											<input class="form-control" type="text"  id = "senderAddrNew" name="senderAddrNew" value="${delivery.senderAddrNew}">
										</div>
                                        <div class="form-group">
											<label for="comment-email"><b>나머지 주소</b></label>
											<input class="form-control" type="text"  name="senderAddrMisc" value="${delivery.senderAddrMisc}">
										</div>
                                        <div class="clearfix"></div>
>>>>>>> branch 'master' of https://github.com/leegyu1222/00.BAERONE.git
		
								<h3>받는 사람</h3><br>
								<div class="comment-form-wrapper">
									
                                         <div class="form-group">
				        				 	<label for="comment-name"><i class="glyphicon glyphicon-user"></i> <b>ID</b></label>
											<input class="form-control" type="text" name="receiverId" value="${delivery.receiverId}">
										</div>
				        				<div class="form-group">
				        				 	<label for="comment-name"><i class="glyphicon glyphicon-user"></i> <b>이름</b></label>
											<input class="form-control" type="text" name="receiverName"  value="${delivery.receiverName}">
										</div>
										<div class="form-group">
											<label for="comment-email"><i class="glyphicon glyphicon-phone"></i> <b>휴대폰</b></label>
											<input class="form-control" type="text"  name="receiverPhone"  value="${delivery.receiverPhone}">
										</div>
                                        <div class="form-group">
											<label for="comment-email"><i class="glyphicon glyphicon-envelope"></i> <b>주소</b></label><br>
											<input class="form-control" type="text" id="receiverPostNo" name="receiverPostNo" value="${delivery.receiverPostNo}" style="width:50%; display:inline;" >
                                            <input type="button" onclick="receiver_Postcode()" value="우편번호 찾기"><br>
										</div>
                                        <div class="form-group">
											<label for="comment-email"><b>지번 주소</b></label>
											<input class="form-control" type="text" id="receiverAddrOld" name="receiverAddrOld" value="${delivery.receiverAddrOld}">
										</div>
                                        <div class="form-group">
											<label for="comment-email"><b>도로명 주소</b></label>
											<input class="form-control" type="text" id="receiverAddrNew" name="receiverAddrNew" value="${delivery.receiverAddrNew}">
										</div>
                                        <div class="form-group">
											<label for="comment-email"><b>나머지 주소</b></label>
											<input class="form-control" type="text"  name="receiverAddrMisc" value="${delivery.receiverAddrMisc}">
										</div>
										<div class="form-group">
											<label for="comment-message"><i class="glyphicon glyphicon-comment"></i> <b>물품 상세 정보</b></label>
											<textarea class="form-control" rows="5" id="productDetail" name="productDetail" value="${delivery.productDetail}"></textarea>
										</div>
										<div class="form-group">
											<label for="comment-email"><b>배송거리</b></label><br>
											<input class="form-control" type="text" name="distance" value="${distance }" readOnly style="display:inline; width:90px"> km
										</div>
										<div class="form-group">
											<label for="comment-email"><b>배송요금</b></label><br>
											<input class="form-control" type="text" name="fare" value=${delivery.fare } readOnly style="display:inline; width:90px"> 원
										</div>
										
                   
                                        <div class="clearfix"></div>
				        			
								</div>
							</div>
                             
                    </div>
                     <input type="hidden" name="deliveryDate" value="<%=today%>">
                    	 <input type="hidden" class="btn btn-large pull-right" name="deliveryStatus" value="결제완료">
						 <input type="button" class="btn btn-large pull-right" onclick="modifyDelivery()" value="신청수정">
						 <input type="button" class="btn btn-large pull-right" onclick="payment()" value="결제하기">
						 <a href="cancelAppl.do"><input type="button" class="btn btn-large pull-right" value="신청취소"></a>

                                
                            </form>
							<!-- End Comments -->
						</div>
					</div>
					<!-- End Blog Post -->
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

    </body>
>>>>>>> branch 'master' of https://github.com/leegyu1222/00.BAERONE.git
</html>