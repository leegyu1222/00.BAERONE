<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function searchTrack() {
	alert('!!');
	document.searchList.action="searchList.do";
	document.searchList.submit();
}
</script>
</head>
<body>
	<h1>드론 배송 목록</h1>
	<table>
		<thead>
			<form id="searchList" name="searchList" method="post">
			<select name="category" id="category">
					<option value="none">-선택-</option>
					<option value="sender_id">아이디</option>
					<option value="delivery_status">배송상태</option>
			</select>&nbsp
			<input type="text" class="solid" style="width: 150px; height: 18px;" name="searchBox" id="searchBox"/>&nbsp
			<input type="button" onclick="searchTrack()" value="조회">
			</form>
			<c:forEach var="list" items="${list}">
				<tr>
				    <th>보내는이 아이디</th>
					<th>보내는이 이름</th>
					<th>휴대폰 번호</th>
					<th>우편번호</th>
					<th>주소(지번)</th>
					<th>주소(도로명)</th>
					<th>나머지 주소</th>
					<th>신청시간</th>
					<th>물품정보</th>
				</tr>
				<tr>
					<td>${list.senderId}</td>
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
				    <th>받는이 아이디</th>
					<th>받는이 이름</th>
					<th>휴대폰 번호</th>
					<th>우편번호</th>
					<th>주소(지번)</th>
					<th>주소(도로명)</th>
					<th>나머지 주소</th>
					<th>배송상태</th>
					<th>물품정보</th>
					<th>드론정보</th>
				</tr>
				<tr>
					<td>${list.receiverId}</td>
					<td>${list.receiverName}</td>
					<td>${list.receiverPhone}</td>
					<td>${list.receiverPostNo}</td>
					<td>${list.receiverAddrOld}</td>
					<td>${list.receiverAddrNew}</td>
					<td>${list.receiverAddrMisc}</td>
					<td>${list.deliveryStatus}</td>
					<td>${list.productDetail}</td>
					<td>${list.beaconName}</td>
				</tr>
			</c:forEach>
		</thead>
		<tbody>
		</tbody>
	</table>
</body>
</html>