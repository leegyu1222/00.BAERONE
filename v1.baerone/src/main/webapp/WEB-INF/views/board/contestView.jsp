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
						<h1>공지사항</h1> 
					</div>
				</div>
			</div>
		</div>
<div class="section">
	    	<div class="container">
				<div class="row">
					<!-- Blog Post -->
					<div class="col-sm-9 col-md-offset-2">
						<div class="blog-post blog-single-post">
						<form role="form">
						<input type="hidden" name="postNo" value="${board.postNo}">
							<div class="single-post-title">
								<h3>${board.title}</h3>
							</div>
							<div class="single-post-info">
								<i class="glyphicon glyphicon-time"></i>${board.writeDate} <a href="#" title="Show Comments"><i class="glyphicon glyphicon-comment"></i>${replyCount}</a>
							</div>
							<div class="single-post-content">
								${board.content}
							</div>
						</form>
							<div>
							<c:if test="${board.nickname eq sessionScope.nickname}">
								<button type="submit" class="btn pull-right" style="margin: 5px;" id="modify">수정</button>
								<button type="submit" class="btn pull-right" style="margin: 5px;" id="delete">삭제</button>
							</c:if>
								<button type="submit" class="btn pull-right" style="margin: 5px;" id="list">목록</button>
								<button type="submit" class="btn pull-right" style="margin: 5px;" id="write">글쓰기</button>
							</div>
								<!-- End Comment Form -->
							</div>
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
		<script type="text/javascript">
			$(document).ready(function() {
				var title = '${board.title}';
				var content = '${board.content}';
				
				var form = $('form[role="form"]');
				
				var replyFormat = 	'<li style="list-style:none;" class="reply">' +
										'<div class="comment-wrapper">' +
											'<div class="comment-author" id="nickname"></div>' +
											'<p id="replyContent"></p>' +
											'<div class="comment-actions">' +
												'<span class="comment-date" id="replyWriteDate"></span>' +
												'<a href="#" data-toggle="tooltip" data-original-title="Vote Up" class="show-tooltip"> <i class="glyphicon glyphicon-thumbs-up"></i></a>' +
												'<a href="#" data-toggle="tooltip" data-original-title="Vote Down" class="show-tooltip">  <i class="glyphicon glyphicon-thumbs-down"></i></a>' +
												'<span class="label label-success">+8</span>' +
												'<a href="#" class="btn btn-micro btn-grey comment-reply-btn"><i class="glyphicon glyphicon-share-alt"></i> Reply</a>' +
										 	'</div>' +
										'</div>' +
									'</li>';
				
				$('#write').on('click', function() {
					$('<input />').attr({
						type:'hidden',
						name:'page',
						value:'${page}'
					}).appendTo(form);
					
					form.attr('action', 'contestWrite.do');
					form.attr('method', 'get');
					form.submit();
				});
				
				$('#delete').on('click', function() {
					if(confirm("게시글을 삭제하시겠습니까?")) {
						$('<input />').attr({
							type:'hidden',
							name:'page',
							value:'${page}'
						}).appendTo(form);
						
						form.attr('action', 'contestDelete.do')
						form.attr('method', 'post');
						form.submit();
					}
				});
				
				$('#list').on('click', function() {
					$('<input />').attr({
						type:'hidden',
						name:'page',
						value:'${page}'
					}).appendTo(form);
					
					form.attr('action', 'contestList.do')
					form.attr('method', 'get');
					form.submit();
				});
				
				$('#modify').on('click', function() {
					$('<input />').attr({
						type:'hidden',
						name:'title',
						value:title
					}).appendTo(form);
					
					$('<input />').attr({
						type:'hidden',
						name:'content',
						value:content
					}).appendTo(form);
					
					$('<input />').attr({
						type:'hidden',
						name:'page',
						value:'${page}'
					}).appendTo(form);
					
					form.attr('action', 'contestModify.do')
					form.attr('method', 'post');
					form.submit();
				});
				
				/*
				 * 댓글 더보기 요청
				 */
				var getReplyMoreCount = 1;
				$('#getReplyMore').on('click', function () {
				    var $btn = $(this).button('loading');
				    getReplyMoreCount++;
				    $.ajax({
						url:'getReplyMore.do',
						data:{
							replyPage:getReplyMoreCount,
							postNo:'${board.postNo}',
						},
						dataType:'json',
						type:'post',
						success:function(replyList) {
							var str = '';
							var replies = $('#replyList').html();
							$(replyList).each(function() {
								str += '<li style="list-style:none;" class="reply" data-replyNo=' + this.replyNo + '>' +
											'<div class="comment-wrapper">' +
												'<div class="comment-author" id="nickname">' + this.nickname +'</div>' +
												'<p id="replyContent">' + this.content + '</p>' +
												'<div class="comment-actions">' +
													'<span class="comment-date" id="replyWriteDate">' + this.writeDate + '</span>' +
													'<a href="#" data-toggle="tooltip" data-original-title="Vote Up" class="show-tooltip"> <i class="glyphicon glyphicon-thumbs-up"></i></a>' +
													'<a href="#" data-toggle="tooltip" data-original-title="Vote Down" class="show-tooltip">  <i class="glyphicon glyphicon-thumbs-down"></i></a>' +
													'<span class="label label-success">+8</span>' +
													'<a href="#" class="btn btn-micro btn-grey comment-reply-btn"><i class="glyphicon glyphicon-share-alt"></i> Reply</a>' +
											 	'</div>' +
												'</div>' +
										'</li>';
							});

							$('#replyList').html(replies + str);
						}
					});
				    
				    $btn.button('reset');
				});
				
				/*
				 * 댓글 등록 요청
				 */
				$('#reply_register').on('click', function() {
					getReplyMoreCount = 1;
					$.ajax({
						url:'addReply.do',
						data:{
							replyPage:'${replyPage}',
							postNo:'${board.postNo}',
							content:$('#reply_content').val()
						},
						dataType:'json',
						type:'post',
						success:function(replyList) {
							$('.reply').remove();
							for(var index = replyList.length - 1; index >= 0; index--) {
								$('#replyList').after(replyFormat);
								$('#nickname').text(replyList[index].nickname);
								$('#replyContent').text(replyList[index].content);
								$('#replyWriteDate').text(replyList[index].writeDate);
							}
							window.location.reload(true);
						}
					});
				});
			});
        </script>
    </body>
</html>