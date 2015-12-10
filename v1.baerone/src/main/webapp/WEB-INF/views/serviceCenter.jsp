<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>
		<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
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
        
        <!-- Start of Header -->
		<jsp:include page="inc/header.jsp" />
		<!-- End of Header -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>고객센터</h1> 
					</div>
				</div>
			</div>
		</div>
        <!-- Homepage Slider -->
        <div class="section">
	    	<div class="container">
	    	<h2>Contact Us</h2>
	        	<div class="row">
	        		<div class="col-sm-7">
	        			<!-- Map -->
	        			
                   
             <!-- * Daum 지도 - 지도퍼가기 -->
<!-- 1. 지도 노드 -->
<div id="daumRoughmapContainer1430147188648" class="root_daum_roughmap root_daum_roughmap_landing" ></div>

<!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
<script charset="UTF-8" class="daum_roughmap_loader_script" src="http://dmaps.daum.net/map_js_init/roughmapLoader.js"></script>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1430147188648",
		"key" : "3xau",
		"mapWidth" : "650",
		"mapHeight" : "350"
	}).render();
</script>
              
	        			<!-- End Map -->
	        			<!-- Contact Info -->
	        			<p class="contact-us-details">
	        				<b>주소:</b> 서울특별시 노원구 공릉 2동 삼육대학교<br/>
	        				<b>Phone:</b> 010-9904-1890<br/>
	        				<b>Email:</b> <a href="mailto:bbangss_min@naver.com">bbangss_min@naver.com</a>
	        			</p>
	        			<!-- End Contact Info -->
	        		</div>
	        		<div class="col-sm-5">
	        			<!-- Contact Form -->
	        			<h3>문의사항을 보내주세요</h3>
	        			<div class="contact-form-wrapper">
		        			<form class="form-horizontal" role="form" action="aboutUsMail.do" method="get">
		        				 <div class="form-group">
		        				 	<div class="col-sm-9">
										<input type="hidden" name="to" id="to" value="h__fal@naver.com"/>
										<input type="hidden" name="nickname" id="nickname" value="닉네임: ${nickname}"/>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-9">
										<input type="hidden" name="from" id="from" value="${userid}"/>
									</div>
								</div>
								<div class="form-group">
									<label for="contact-message" class="col-sm-3 control-label"><b>문의사항</b></label>
									<div class="col-sm-9">
										<select class="form-control" id="subject" name="subject">
											<option value='' selected>선택</option>
											<option value='문의사항 : 서비스'>서비스</option>
											<option value='문의사항 : 회원'>회원</option>
											<option value='문의사항 : 기타'>기타</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="contact-message" class="col-sm-3 control-label"><b>내용</b></label>
									<div class="col-sm-9">
										<textarea class="form-control" rows="5" id="content" name="content"></textarea>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
									<input type="submit" class="btn pull-right" name="button" value="전송"/>
									</div>
								</div>
		        			</form>
		        		</div>
		        		<!-- End Contact Info -->
	        		</div>
	        	</div>
	    	</div>
	    </div>

	    <!-- Footer -->
		<jsp:include page="inc/footer.jsp" />
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

    </body>
</html>