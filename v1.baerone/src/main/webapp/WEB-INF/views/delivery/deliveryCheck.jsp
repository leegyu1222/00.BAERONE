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
    <body>
        <!-- Start of Header -->
		<jsp:include page="../inc/header.jsp" />
		<!-- End of Header -->
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
											<textarea class="form-control" rows="5" id="comment-message" value="${delivery.productDetail}"></textarea>
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