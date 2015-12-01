<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, java.text.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/postCode/postCode.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>
<%
 java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH.mm.ss");
 String today = formatter.format(new java.util.Date());
%>
<body>
		<h1>보내는사람</h1><hr>
		<form action="deliveryCheck.do" method="post">

		이름:		<input type="text" name="senderName" value="${member.name}"><br>
		휴대폰:	<input type="text" name="senderPhone" value="${member.phone}"><br>
		우편번호:	<input type="text" id = "senderPostNo" name="senderPostNo" value="${member.postNo}"> 
		<input type="button" onclick="sender_Postcode()" value="우편번호 찾기"><br>
		주소(지번):		<input type="text" id = "senderAddrOld" name="senderAddrOld" value="${member.addressOld}">
		주소(도로명):		<input type="text" id = "senderAddrNew" name="senderAddrNew" value="${member.addressNew}"> <br>
		나머지주소:	<input type="text" name="senderAddrMisc" value="${member.addressMisc}" size="50"><br>
		
		<h1>받는사람</h1><hr>
		ID 	:	 	<input type="text" name="receiverId"><br>
		이름: 		<input type="text" name="receiverName"><br>
		휴대폰:		<input type="text" name="receiverPhone"><br>
		우편번호:	<input type="text" id="receiverPostNo" name="receiverPostNo">
		<input type="button" onclick="receiver_Postcode()" value="우편번호 찾기"><br>
		주소(지번):		<input type="text" id="receiverAddrOld" name="receiverAddrOld">
		주소(도로명):		<input type="text" id="receiverAddrNew" name="receiverAddrNew"><br>
		나머지주소:	<input type="text" name="receiverAddrMisc"><br>
		물품정보:	<input type="text" name="productDetail"><br>
		<input type="hidden" name="deliveryDate" value="<%=today%>">
		<input type="submit" value="신청하기">
	</form>
</body>
</html>