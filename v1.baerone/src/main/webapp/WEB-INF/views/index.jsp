<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BAERONE에 오신걸 환영합니다.</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/grayscale.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <!-- Navigation -->
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">
                    <i class="fa fa-play-circle"></i> BAERONE
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">LOGIN</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#download">REGISTER</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <img src="img/logo.png">
                        <a href="#about1" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- About Section -->
    <section id="about1" class="container content-section1 text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="col-lg-4">
                    <h1>도착까지 걸리는<br>시간이<br>단 <a href="http://gratisography.com/">30분!</a></h1>
                </div>
                <div class="col-lg-4">
                    <img src="img/30m.gif">
                </div>
                <div class="col-lg-4">
                    <h3>12km 안에 있는 주문자가 배송 신청을 하면 30분 이내로 도착하게 됩니다.</h3>
                </div>
            </div>
        </div>
    </section>
    
    <section id="about2" class="container content-section2 text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="col-lg-4">
                    <h1>운영비 및 인건비<br>대폭 <a href="http://gratisography.com/">절감!</a></h1>
                </div>
                <div class="col-lg-4">
                    <img src="img/pig.gif">
                </div>
                <div class="col-lg-4">
                    <h3>기존 자동차와 기사에 의존하던 택배 서비스를 드론을 이용함으로써 기름값, 고용비를 비롯 각종 운영비와 인건비를 아낄 수 있습니다.</h3>
                </div>
            </div>
        </div>
    </section>

    <!-- login Section -->
    <section id="login-page" class="content-section text-center">
        <div class="login-section">
            <div class="container">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2>로그인</h2>
                    <div class="loginArea_top">
		<div class="col-md-6 col-md-offset-3 loginArea_left" style="margin-top:20px;">
			<form role="form" role="form" name="login" action="login.do" method="post">
			  <input type="text" class="text" id="userid" name="userid" value="ID" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'ID';}"
			  style="margin-bottom: 20px">
			  <input type="password" class="text" id="userpw" name="userpw" value="" onfocus="this.value = '';" style="
    margin-bottom: 5px;
" placeholder="Password"onblur="if (this.value == '') {this.value = 'Password';}">
	        <p><a href="mailto:feedback@startbootstrap.com" style="color:#AAAAAA">비밀번호 찾기</a>
	        <span style="color:#AAAAAA">/</span> <a href="mailto:feedback@startbootstrap.com" style="color:#AAAAAA">회원가입</a>
                </p>
            <div class="loginArea_but">
                <label class="btn1 btn3 btn-1 btn-1b"><input type="submit" value="로그인"></label>
	    </div>
	     </form>
		</div>
	    <div class="clearfix"> </div>
	   </div>
                </div>
            </div>
        </div>
    </section>
    

    <!-- contact Section -->
    <section id="contact" class="container content-section3 text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>연락 사항</h2>
                <p>아래 Email과 SNS를 통해 문의사항으 주시면 성설히 답변드리도록 하겠습니다.</p>
                <p><a href="mailto:feedback@startbootstrap.com">bbangss_min@naver.com</a>
                </p>
                <ul class="list-inline banner-social-buttons">
                    <li>
                        <a href="https://twitter.com/SBootstrap" class="btn btn-default btn-lg"><i class="fa fa-facebook fa-fw"></i> <span class="network-name">Facebook</span></a>
                    </li>
                    <li>
                        <a href="https://plus.google.com/+Startbootstrap/posts" class="btn btn-default btn-lg"><i class="fa fa-google-plus fa-fw"></i> <span class="network-name">Google+</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <div id="daumRoughmapContainer1430147188648" class="root_daum_roughmap root_daum_roughmap_landing" ></div>
    <!-- Footer -->
    <footer>
        <div class="container text-center">
            <p>Copyright &copy; baerone 2015</p>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>

    <!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>
    <script charset="UTF-8" class="daum_roughmap_loader_script" src="http://dmaps.daum.net/map_js_init/roughmapLoader.js"></script>

<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
	new daum.roughmap.Lander({
		"timestamp" : "1430147188648",
		"key" : "3xau",
        "mapWidth" : "100%",
		"mapHeight" : "100%"
	}).render();
</script>

    <!-- Custom Theme JavaScript -->
    <script src="js/grayscale.js"></script>

</body>

</html>