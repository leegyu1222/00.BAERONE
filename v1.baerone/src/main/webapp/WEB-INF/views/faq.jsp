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
						<h1>FAQ</h1> 
					</div>
				</div>
			</div>
		</div>
        <!-- Homepage Slider -->
        <div class="section">
			<div class="container">
				<div class="row">
					<div class="col-md-12 faq-wrapper">
						<div class="panel-group" id="accordion2">
							<h3>서비스 관련</h3>
							<div class="panel panel-default">
								<div class="panel-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse11">
										수강하고자 하는 강의를 모아서 볼 수 있나요?
									</a>
								</div>
								<div id="collapse11" class="accordion-body collapse">
									<div class="accordion-inner">
										<div class="answer">Answer:</div>
										<p>가능합니다. 강의를 보는 곳에 '내강의에 추가' 버튼을 클릭하면 추가한 강의를 '내강의'메뉴에서 한번에 모아 볼 수 있습니다.</p>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse12">
										이수율을 측정하는 기준이 어떻게 되나요?
									</a>
								</div>
								<div id="collapse12" class="accordion-body collapse">
									<div class="accordion-inner">
										<div class="answer">Answer:</div>
										<p>회원님께서 강의를 수강하시고 강의 페이지 하단에 위치한 '수강완료' 버튼을 클릭한 강의에 한에서 수강완료 처리되고  (완료 챕터의 갯수 / 총 챕터 갯수)x100 으로 계산합니다.</p>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse13">
										토론방 내에서 음성 서비스가 가능한가요?
									</a>
								</div>
								<div id="collapse13" class="accordion-body collapse">
									<div class="accordion-inner">
										<div class="answer">Answer:</div>
										<p>불가능합니다. 저희 서비스 외에 스카이프나 토크온 같은 음성채팅이 가능한 프로그램을 함께 사용하시면 보완할 수 있습니다. 추후에 개발할 예정에 있으니 불편하시더라도 조금만 기다려주시면 더 좋은 서비스를 제공할 수 있도록 하겠습니다.</p>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse14">
										서비스를 이용하는데에 등급 제한이 있나요?
									</a>
								</div>
								<div id="collapse14" class="accordion-body collapse">
									<div class="accordion-inner">
										<div class="answer">Answer:</div>
										<p>등급별 서비스 이용 제한은 없습니다. 다만, 저희 사이트의 회원이어야만 모든 서비스를 이용하실 수 있습니다.</p>
									</div>
								</div>
							</div>
							<h3>회원 관련</h3>
							<div class="panel panel-default">
								<div class="panel-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse21">
										비밀번호 분실했을 시 어떻게 하나요?
									</a>
								</div>
								<div id="collapse21" class="accordion-body collapse">
									<div class="accordion-inner">
										<div class="answer">Answer:</div>
										<p>회원 가입할 당시에 아이디로 사용한 이메일로 임시비빌번호를 보내드립니다. 메일을 통해 임시 비밀 번호를 확인하시고 로그인하신 후에 반드시 본인이 원하는 비밀번호로 변경 하시길 바랍니다.</p>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse22">
										회원 등급 제도가 어떻게 되어있나요?
									</a>
								</div>
								<div id="collapse22" class="accordion-body collapse">
									<div class="accordion-inner">
										<div class="answer">Answer:</div>
										<p>저희 사이트에는 일반회원, 열심회원, 관리자로 등급이 나눠져 있습니다. 비회원이 최초로 가입을 하게되면 일반회원이 됩니다. 일반회원의 등급으로 사이트 내의 게시판에서 게시글이나 댓글을 통해 활발한 활동을 하고 '좋아요' 기능을 통해 다른 회원들의 많은 호응이 있는 것이 확인되면 우수회원으로 등급이 올라가게됩니다. 우수회원은 메인 페이지에 소개가 되는 등의 혜택이 있을 수 있습니다.</p>
									</div>
								</div>
							</div>
						</div>
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