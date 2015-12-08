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
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

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
						<h1>배달 신청 현황</h1> 
					</div>
				</div>
			</div>
		</div>
		<div class="section">
	    	<div class="container">
	    		<div class="row">
	    			<!-- Open Vacancies List -->
	    			<div class="col-md-12">
	    				<table class="jobs-list">
	    				<c:forEach var="list" items="${list}">
	    					<tr>
	    						<th>보내는 사람</th>
								<th>휴대폰 번호</th>
								<th>신청시간</th>
								<th>물품정보</th>
								<th style="text-align:center">신청 취소</th>
	    					</tr>
	    					<tr>
	    						<td>${list.senderName}</td>
								<td>${list.senderPhone}</td>
								<td>${list.deliveryDate}</td>
								<td>${list.productDetail}</td>
								<th rowspan="3" style="text-align:center"><a href="cancelDelivery.do?deliveryNo=${list.deliveryNo}"><input type="button" value="취소"></a><th>
	    					</tr>
	    					<tr>
								<th>받는 사람</th>
								<th>휴대폰 번호</th>
								<th>배송상태</th>
								<th>물품정보</th>
							</tr>
							<tr>
								<td>${list.receiverName}</td>
								<td>${list.receiverPhone}</td>
								<td>${list.deliveryStatus}</td>
								<td>${list.productDetail}</td>
							</tr>
							<tr>
								<td colspan="5" style="background:#ECEEF3; height:2px;padding-top: 2px;padding-bottom: 1px;"></td>
							</tr>
							</c:forEach>
	    				</table>
	    			</div>
	    			<!-- End Open Vacancies List -->
	    			
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