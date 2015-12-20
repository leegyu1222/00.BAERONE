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
<c:if test="${message ne null}">
	<script>
		alert("수정완료");
	</script>
</c:if>
    <body>
		<!-- Start of Header -->
		<jsp:include page="../inc/header.jsp" />
		<!-- End of Header -->
        <!-- Page Title -->
		<div class="section section-breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>배달 신청 상세 정보</h1> 
					</div>
				</div>
			</div>
		</div>
        
        <div class="section" style="background-color : white">
	    	<div class="container">
				<div class="row">
					<!-- Sidebar -->
					<!-- End Sidebar -->
					
					<div class="col-sm-12">
						<div class="blog-post blog-single-post">
                            <form action="deliveryCheck.do" method="post">
                            
							<div class="single-post-content">
						<c:forEach var="list" items="${list}">
								<h3>보내는 사람</h3><br>
									<div class="comment-form-wrapper">
									<div class="form-group">
				        				 	<label for="comment-name"><i class="glyphicon glyphicon-user"></i> <b>아이디</b></label>
											<input class="form-control" type="text" name="senderId" id="senderId" value="${list.senderId}" readonly="readonly">
										</div>
										<div class="form-group">
				        				 	<label for="comment-name"><i class="glyphicon glyphicon-user"></i> <b>이름</b></label>
											<input class="form-control" type="text" name="senderName" id="senderName"value="${list.senderName}" readonly="readonly">
										</div>
										<div class="form-group">
											<label for="comment-email"><i class="glyphicon glyphicon-phone"></i> <b>휴대폰</b></label>
											<input class="form-control" type="text"  name="senderPhone" id="senderPhone"value="${list.senderPhone}" readonly="readonly">
										</div>
                                        <div class="form-group">
											<label for="comment-email"><i class="glyphicon glyphicon-envelope"></i> <b>주소</b></label><br>
											<input class="form-control" type="text" id = "senderPostNo" name="senderPostNo" value="${list.senderPostNo}" style="width:50%; display:inline;" readonly="readonly">
											<input type="button" onclick="receiver_Postcode()" value="우편번호 찾기"><br>
										</div>
                                        <div class="form-group">
											<label for="comment-email"><b>지번 주소</b></label>
											<input class="form-control" type="text"  id = "senderAddrOld" name="senderAddrOld" value="${list.senderAddrOld}" readonly="readonly">
										</div>
                                        <div class="form-group">
											<label for="comment-email"><b>도로명 주소</b></label>
											<input class="form-control" type="text"  id = "senderAddrNew" name="senderAddrNew" value="${list.senderAddrNew}" readonly="readonly">
										</div>
                                        <div class="form-group">
											<label for="comment-email"><b>나머지 주소</b></label>
											<input class="form-control" type="text"  name="senderAddrMisc" value="${list.senderAddrMisc}" readonly="readonly">
										</div>
										<div class="form-group">
											<label for="comment-email"><b>신청시간</b></label>
											<input class="form-control" type="text"  name="deliveryDate" value="${list.deliveryDate}" readonly="readonly">
										</div>
                                        <div class="clearfix"></div>
								
								<h3>받는 사람</h3><br>
									
								<div class="comment-form-wrapper">
										<div class="form-group">
				        				 	<label for="comment-name"><i class="glyphicon glyphicon-user"></i> <b>아이디</b></label>
											<input class="form-control" type="text" name="receiverId" value="${list.receiverId}" readonly="readonly">
										</div>
				        				<div class="form-group">
				        				 	<label for="comment-name"><i class="glyphicon glyphicon-user"></i> <b>이름</b></label>
											<input class="form-control" type="text" name="receiverName" value="${list.receiverName}" readonly="readonly">
										</div>
										<div class="form-group">
											<label for="comment-email"><i class="glyphicon glyphicon-phone"></i> <b>휴대폰</b></label>
											<input class="form-control" type="text"  name="receiverPhone" value="${list.receiverPhone}" readonly="readonly">
										</div>
                                        <div class="form-group">
											<label for="comment-email"><i class="glyphicon glyphicon-envelope"></i> <b>주소</b></label><br>
											<input class="form-control" type="text" id="receiverPostNo" name="receiverPostNo" style="width:50%; display:inline;" value="${list.receiverPostNo}" readonly="readonly">
                                            <input type="button" onclick="receiver_Postcode()" value="우편번호 찾기"><br>
										</div>
                                        <div class="form-group">
											<label for="comment-email"><b>지번 주소</b></label>
											<input class="form-control" type="text" id="receiverAddrOld" name="receiverAddrOld" value="${list.receiverAddrOld}" readonly="readonly">
										</div>
                                        <div class="form-group">
											<label for="comment-email"><b>도로명 주소</b></label>
											<input class="form-control" type="text" id="receiverAddrNew" name="receiverAddrNew" value="${list.receiverAddrNew}" readonly="readonly">
										</div>
                                        <div class="form-group">
											<label for="comment-email"><b>나머지 주소</b></label>
											<input class="form-control" type="text"  name="receiverAddrMisc" value="${list.receiverAddrMisc}" readonly="readonly">
										</div>
										<div class="form-group">
											<label for="comment-email"><b>배송상태</b></label>
											<input class="form-control" type="text"  name="deliveryStatus" value="${list.deliveryStatus}" readonly="readonly">
										</div>
										<div class="form-group">
											<label for="comment-email"><b>물품정보</b></label>
											<input class="form-control" type="text"  name="productDetail" value="${list.productDetail}" readonly="readonly">
										</div>
                                        <div class="clearfix"></div>
								</div>
							</div>
					<a href="myDelivery.do?deliveryNo=${list.deliveryNo}&page=1"><input type="button" class="btn btn-large pull-right" value="돌아가기" /></a>
					<c:if test="${list.deliveryStatus eq '결제완료'}">
					<a href="cancelDelivery.do?deliveryNo=${list.deliveryNo}"><input type="button" class="btn btn-large pull-right" value="신청취소" /></a>
					</c:if>
					<c:if test="${list.deliveryStatus eq '결제완료'}">
					<a href="deliveryUpdateInfo.do?deliveryNo=${list.deliveryNo}"><input type="button" class="btn btn-large pull-right" value="수정" /></a>
					</c:if>
                    </c:forEach>
                    </div>
					</form>
							<!-- End Comments -->
						</div> 
					</div>
					
					<!-- End Blog Post -->
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