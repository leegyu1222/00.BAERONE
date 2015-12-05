<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
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