<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 전용</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />

<link rel="stylesheet" type="text/css" href="css/admin-css/local.css" />

<script type="text/javascript" src="js/admin-js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<!-- you need to include the shieldui css and js assets in order for the charts to work -->
<link rel="stylesheet" type="text/css"
	href="http://www.shieldui.com/shared/components/latest/css/shieldui-all.min.css" />
<link rel="stylesheet" type="text/css"
	href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
<script type="text/javascript"
	src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
<script type="text/javascript"
	src="http://www.prepbootstrap.com/Content/js/gridData.js"></script>
	
<script>
	function sendDrone(){
		var deliveryNo = document.getElementById('deliveryNo').value;
		var beaconName = document.getElementById('beaconName').value;
		alert(deliveryNo + beaconName);
		document.mgDelivery.action="sendDrone.do?delveryNo="+deliveryNo+"&beaconName="+beaconName;
		document.mgDelivery.submit();
	}
	function searchTrack() {
		document.searchList.action="searchList.do";
		document.searchList.submit();
	}
</script>
</head>
<body>
	<div id="wrapper">
        <!-- Start of adminInc -->,
		<jsp:include page="adminInc/adminInc.jsp" />
		<!-- End of adminInc -->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 배송 관리</h3>
                        </div>
                        <div class="panel-body">
                            <div class="btn-group">
                                <form name = "searchList" id = "searchList" action="mgLectureList.do" method="post">
									<div class="form-group">
										<label for="id">배송 상태</label>
										<div class="btn-group">
											<select name="category" id="category">
												<option value="all">All</option>
												<option value="결제완료">결제완료</option>
												<option value="배송준비">배송준비</option>
												<option value="배송중">배송중</option>
												<option value="배송완료">배송완료</option>
											</select>
										</div>
										<button onclick="searchTrack()" class="btn btn-primary">조회</button>
									</div>
								</form>
							</div>
							<form id="mgDelivery" name = "mgDelivery" action = "sendDrone.do" method="post">
                            <div class="dataTable_wrapper">
                                <table class="jobs-list" style="width:100%;">
	    				<c:forEach var="list" items="${list}">
	    					<tr>
	    						<th>보내는 사람</th>
								<th>휴대폰 번호</th>
								<th>신청시간</th>
								<th>물품정보</th>
								<c:if test="${list.deliveryStatus eq '결제완료'}">
								<th style="text-align:center">드론 출발</th>
								</c:if>
	    					</tr>
	    					<tr>
	    						<td>${list.senderName}</td>
								<td>${list.senderPhone}</td>
								<td>${list.deliveryDate}</td>
								<td rowspan="3"><a href="myDeliveryDetail.do?productDetail=${list.productDetail}">${list.productDetail}</a></td>
								<th rowspan="3" style="text-align:center">
									
									<c:if test="${list.deliveryStatus eq '결제완료'}">
									<select name="beaconName" id="beaconName">
											<option value="none">-선택-</option>
											<option value="MiniBeacon_11479">1호기</option>
											<option value="MiniBeacon_11637">2호기</option>
									</select>
									<input type="hidden" id = "deliveryNo" name ="deliveryNo" value = "${list.deliveryNo }"/>
									<input type="submit" value="드론출발">
									</c:if>
									
								<th>
	    					</tr>
	    					<tr>
								<th>받는 사람</th>
								<th>휴대폰 번호</th>
								<th>배송상태</th>
							</tr>
							<tr>
								<td>${list.receiverName}</td>
								<td>${list.receiverPhone}</td>
								<td>${list.deliveryStatus}</td>
							</tr>
							<tr>
								<td colspan="5" style="background:#ECEEF3; height:2px;padding-top: 2px;padding-bottom: 1px;"></td>
							</tr>
							</c:forEach>
	    				</table>
                            </div>
                         </form>
                            <div align="center">
                                <ul class="pagination">
                                    <li class="disabled"><a href="#">&laquo;</a></li>
                                    <li class="active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#">&laquo;</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
    </div>
</body>
</html>

