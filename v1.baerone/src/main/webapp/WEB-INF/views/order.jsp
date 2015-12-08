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
		<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/leaflet.css" />
		<!--[if lte IE 8]>
		    <link rel="stylesheet" href="css/leaflet.ie.css" />
		<![endif]-->
		<link rel="stylesheet" href="css/main.css">

        <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <!-- Start of Header -->
		<jsp:include page="inc/header.jsp" />
		<!-- End of Header -->
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