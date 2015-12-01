<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 드론 배달 주문 현황 </h1>

<table>
	<thead>

	</thead>
	<tbody>
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
				<td><a href="cancelDelivery.do?deliveryNo=${list.deliveryNo}"><input type="button" value="취소"></a><td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>