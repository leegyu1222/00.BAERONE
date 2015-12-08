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
        <!-- Start of Header -->
		<jsp:include page="../inc/header.jsp" />
		<!-- End of Header -->

        <!-- Page Title -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>내정보</h1> 
					</div>
				</div>
			</div>
		</div>
        
        <div class="section" style="background-color : white">
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<div class="basic-login">
					<form accept-charset="UTF-8" id="myinfoform" action="myinfo.do" method="post">
						<div class="form-group">
							<label for="register-userid"><b>아이디</b></label> <input
								value="${requestScope.member.userid}" name="userid" class="form-control"
								id="register-userid" type="text" readonly="readonly"
								placeholder="">
								
						</div>
                        <div class="form-group">
							<label for="register-username"><b>이름</b></label> <input
								value="${requestScope.member.name }" name="username" class="form-control"
								id="register-username" type="text" readonly="readonly"
								placeholder="">
								
						</div>
						
						<div class="form-group">
							<label for="register-birthday"><b>생년월일</b></label> <input
								value="${requestScope.member.birthday }" name="birthday" class="form-control"
								id="register-userid" type="text" readonly="readonly"
								placeholder="">
								
						</div>
						<div class="form-group">
							<label for="register-gender"><b>성별</b></label><br> <input
								value="${requestScope.member.gender }" name="gender" class="form-control"
								id="register-gender" type="text" placeholder="" name="gender" readonly="readonly">
						</div>
						<div class="form-group">
							<label for="register-phone"><b>핸드폰번호</b></label> <input
								value="${requestScope.member.phone }" name="phone" class="form-control"
								id="register-phone" type="text" readonly="readonly" placeholder="">
						</div>
                        <div class="form-group">
							<label for="register-email"><b>이메일</b></label> <input
								value="${requestScope.member.email }" name="email" class="form-control"
								id="register-email" type="text" readonly="readonly"
								placeholder="">
								
						</div>
                        <div class="form-group">
							<label for="register-postNo"><b>우편번호</b></label> <input
								value="${requestScope.member.postNo }" name="postNo" class="form-control"
								id="register-postNo" type="text" readonly="readonly"
								placeholder="">
								
						</div>
                        <div class="form-group">
							<label for="register-addressOld"><b>지번주소</b></label> <input
								value="${requestScope.member.addressOld }" name="addressOld" class="form-control"
								id="register-addressOld" type="text" readonly="readonly"
								placeholder="">
								
						</div>
                        <div class="form-group">
							<label for="register-addressNew"><b>도로명 주소</b></label> <input
								value="${requestScope.member.addressNew }" name="addressNew" class="form-control"
								id="register-addressNew" type="text" readonly="readonly"
								placeholder="">
								
						</div>
                        <div class="form-group">
							<label for="register-addressMisc"><b>나머지 주소</b></label> <input
								value="${requestScope.member.addressMisc }" name="userid" class="form-control"
								id="register-addressMisc" type="text" readonly="readonly"
								placeholder="">
								
						</div>
                        <div class="form-group">
							<label for="register-mileage"><b>마일리지</b></label> <input
								value="${requestScope.member.mileage }" name="mileage" class="form-control"
								id="register-mileage" type="text" readonly="readonly"
								placeholder="">
								
						</div>
                        <div class="form-group">
							<a href="deleteMember.do" class="btn pull-right" style="margin-left: 10px">탈퇴</a>
							<a href="myinfoModifyView.do" class="btn pull-right" style="margin-left: 10px">수정</a>
							<div class="clearfix"></div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
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

    </body>
</html>