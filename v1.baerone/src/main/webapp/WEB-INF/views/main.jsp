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

        <!-- Homepage Slider -->
        <div class="homepage-slider">
        	<div id="sequence">
				<ul class="sequence-canvas">
					<!-- Slide 1 -->
					<li class="bg1">
						<!-- Slide Title -->
						<h2 class="title">드론이 배달합니다.</h2>
						<!-- Slide Text -->
						<h3 class="subtitle">차로하는 배달은 경쟁력이 없습니다. 이제 드론으로 시작하세요.</h3>
						<!-- Slide Image -->
						<img class="slide-img" src="img/homepage-slider/drone1.png" alt="Slide 1" />
					</li>
					<!-- End Slide 1 -->
					<!-- Slide 2 -->
					<li class="bg2">
						<!-- Slide Title -->
						<h2 class="title">30분 이내 배송</h2>
						<!-- Slide Text -->
						<h3 class="subtitle">차도가 아닌 하늘의 길로 날아갑니다.</h3>
						<!-- Slide Image -->
						<img class="slide-img" src="img/homepage-slider/drone1.png" alt="Slide 2" />
					</li>
					<!-- End Slide 2 -->
					<!-- Slide 3 -->
					<li class="bg3">
						<!-- Slide Title -->
						<h2 class="title">운영비와 인건비 절감</h2>
						<!-- Slide Text -->
						<h3 class="subtitle" style="font-color:red">중간 중간 흘러나가는 돈을 절약하세요</h3>
						<!-- Slide Image -->
						<img class="slide-img" src="img/homepage-slider/drone1.png" alt="Slide 3" />
					</li>
					<!-- End Slide 3 -->
				</ul>
				<div class="sequence-pagination-wrapper">
					<ul class="sequence-pagination">
						<li>1</li>
						<li>2</li>
						<li>3</li>
					</ul>
				</div>
			</div>
        </div>
        <!-- End Homepage Slider -->

		<!-- Press Coverage -->
        <div class="section section-white">
	    	<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-6">
						<div class="in-press press-wired">
							<a>드론 배달을 통해 영업이익 20조 발생! 미래 지향적 투자를 통해 앞으로 유통 시장 점유 1위를 목표하고 있다. </a>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="in-press press-mashable">
							<a>드론 배달을 통해 영업이익 20조 발생! 미래 지향적 투자를 통해 앞으로 유통 시장 점유 1위를 목표하고 있다.</a>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="in-press press-techcrunch">
							<a>드론 배달을 통해 영업이익 20조 발생! 미래 지향적 투자를 통해 앞으로 유통 시장 점유 1위를 목표하고 있다.</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Press Coverage -->

		<!-- Services -->
        
	    <!-- End Services -->

		<!-- Call to Action Bar -->
	    <div class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="calltoaction-wrapper">
							<h3>누구나 <span style="color:#DF9F3D; font-size:20pt"> BAERONE </span>과 미래를 함께 할 수 있습니다.</h3> <a href="http://www.dragdropsite.com" class="btn btn-orange">문의하기</a>
                        </div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Call to Action Bar -->

		<!-- Testimonials -->
	    
	    <!-- End Testimonials -->

		<!-- Pricing Table -->
	    
	    <!-- End Pricing Table -->

		<!-- Our Clients -->
	    <div class="section section-white">
	    	<div class="container">
	    		<h2>고객사</h2>
				<div class="clients-logo-wrapper text-center row">
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/canon.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/cisco.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/dell.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/ea.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/ebay.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/facebook.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/google.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/hp.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/microsoft.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/mysql.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/sony.png" alt="Client Name"></a></div>
					<div class="col-lg-1 col-md-1 col-sm-3 col-xs-6"><a href="#"><img src="img/logos/yahoo.png" alt="Client Name"></a></div>
				</div>
			</div>
	    </div>
	    <!-- End Our Clients -->

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