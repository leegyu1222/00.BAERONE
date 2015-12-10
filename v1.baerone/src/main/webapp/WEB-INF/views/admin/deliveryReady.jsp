<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
</head>

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
							<li class="shopping-cart-items"><i class="glyphicon glyphicon-shopping-cart icon-white"></i> <a href="myDelivery.do"><b>배송조회</b></a></li>
							<li>
							</li>
			        		<li><a href="logout.do">로그아웃</a></li>
						<li><a href="myinfo.do">내정보조회</a></li>
                            
			        	</ul>
					</div>
		        </div>
		        <nav id="mainmenu" class="mainmenu">
					<ul>
						<li class="logo-wrapper"><a href="main.do"><img src="img/top-logo.png" alt="Multipurpose Twitter Bootstrap Template"></a></li>
						<li class="active">
							<a href="main.do">Home</a>
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
	<h1>드론 출발 준비 목록</h1>
	<form id="deliveryReady" name = "deliveryReady" action = "sendDrone.do" method="post">
	<table>
		<thead>
			<c:forEach var="list" items="${list}">
				<tr>
					<th>보내는 사람</th>
					<th>휴대폰 번호</th>
					<th>우편번호</th>
					<th>주소(지번)</th>
					<th>주소(도로명)</th>
					<th>나머지 주소</th>
					<th>신청시간</th>
					<th>물품정보</th>
				</tr>
				<tr>
					<td>${list.senderName}</td>
					<td>${list.senderPhone}</td>
					<td>${list.senderPostNo}</td>
					<td>${list.senderAddrOld}</td>
					<td>${list.senderAddrNew}</td>
					<td>${list.senderAddrMisc}</td>
					<td>${list.deliveryDate}</td>
					<td>${list.productDetail}</td>
				</tr>
				<tr>
					<th>받는 사람</th>
					<th>휴대폰 번호</th>
					<th>우편번호</th>
					<th>주소(지번)</th>
					<th>주소(도로명)</th>
					<th>나머지 주소</th>
					<th>배송상태</th>
					<th>물품정보</th>
				</tr>
				<tr>
					<td>${list.receiverName}</td>
					<td>${list.receiverPhone}</td>
					<td>${list.receiverPostNo}</td>
					<td>${list.receiverAddrOld}</td>
					<td>${list.receiverAddrNew}</td>
					<td>${list.receiverAddrMisc}</td>
					<td>${list.deliveryStatus}</td>
					<td>${list.productDetail}</td>
					<td><select name="beaconName" id="beaconName">
							<option value="none">-선택-</option>
							<option value="MiniBeacon_11479">1호기</option>
							<option value="MiniBeacon_11637">2호기</option>
					</select></td>
					<input type="hidden" name ="deliveryNo" value = "${list.deliveryNo }"/>
					<td><input type="submit"  value="출발"></input>
					<td>
				</tr>
			</c:forEach>
		</thead>
		<tbody>
		</tbody>
	</table>
	</form>
</body>
</html>