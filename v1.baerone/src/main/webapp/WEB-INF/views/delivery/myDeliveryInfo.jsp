<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 배달 수정 페이지 </h1>
<c:forEach var="list" items="${list}">
	<h1> 보내는 사람 </h1>
	이름:		<input type="text" name="senderName" value="${list.senderName}"><br>
	휴대폰:		<input type="text" name="senderPhone" value="${list.senderPhone}"><br>
	우편번호:	<input type="text" name="senderPostNo" value="${list.senderPostNo}"><br>
	주소:		<input type="text" name="senderAddr" value="${list.senderAddr}">
	나머지주소:	<input type="text" name="senderAddrMisc" value="${list.senderAddrMisc}" size="50"><br>
	신청시간   :  <input type="text" name="deliveryDate" value="${list.deliveryDate}">
	물품정보   :  <input type="text" name="productDetail" value="${list.productDetail}">
	<h1> 받는 사람 </h1>
	이름:		<input type="text" name="receiverName" value="${list.receiverName}"><br>
	휴대폰:		<input type="text" name="receiverPhone" value="${list.receiverPhone}"><br>
	우편번호:	<input type="text" name="receiverPostNo" value="${list.receiverPostNo}"><br>
	주소:		<input type="text" name="receiverAddr" value="${list.receiverAddr}">
	나머지주소:	<input type="text" name="receiverAddrMisc" value="${list.receiverAddrMisc}" size="50"><br>
	배송상태   :  <input type="text" name="deliveryStatus" value="${list.deliveryStatus}">
	물품정보   :  <input type="text" name="productDetail" value="${list.productDetail}">
</c:forEach>
</body>
</html>