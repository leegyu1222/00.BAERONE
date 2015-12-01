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
		<h1>신청내역 확인</h1>
		<h1>보내는사람</h1><hr>
		<form name = "deliveryCheck" id = "deliveryCheck">
		
		이름:		<input type="text" name="senderName" value="${delivery.senderName}" readOnly><br>
		휴대폰:		<input type="text" name="senderPhone" value="${delivery.senderPhone}"><br>
		우편번호:	<input type="text" id = "senderPostNo" name="senderPostNo" value="${delivery.senderPostNo}"> 
		<input type="button" onclick="sender_Postcode()" value="우편번호 찾기"><br>
		주소(지번):		<input type="text" id = "senderAddrOld" name="senderAddrOld" value="${delivery.senderAddrOld}">
		주소(도로명):		<input type="text" id = "senderAddrNew" name="senderAddrNew" value="${delivery.senderAddrNew}"> <br>
		나머지주소:	<input type="text" name="senderAddrMisc" value="${delivery.senderAddrMisc}" size="50"><br>
		
		<h1>받는사람</h1><hr>
		ID 	:	 	<input type="text" name="receiverId" value="${delivery.receiverId}"><br>
		이름: 		<input type="text" name="receiverName" value="${delivery.receiverName}"><br>
		휴대폰:		<input type="text" name="receiverPhone" value="${delivery.receiverPhone}"><br>
		우편번호:		<input type="text" id ="receiverPostNo" name="receiverPostNo" value="${delivery.receiverPostNo}">
		<input type="button" onclick="receiver_Postcode()" value="우편번호 찾기"><br>
		주소(지번):	<input type="text" id="receiverPostNo" name="receiverAddrOld" value="${delivery.receiverAddrOld}">
		주소(도로명):	<input type="text" id="receiverPostNo" name="receiverAddrNew" value="${delivery.receiverAddrNew}"><br>
		나머지주소:	<input type="text" name="receiverAddrMisc" value="${delivery.receiverAddrMisc}"><br>
		물품정보:		<input type="text" name="productDetail" value="${delivery.productDetail}"><br>
		배송거리:		<input type="text" name="distance" value="${distance }" readOnly> km
		배송요금:		<input type="text" name="fare" value=${delivery.fare } readOnly> 원<br>
		<input type="hidden" name="deliveryDate" value="<%=today%>">
		<input type="hidden" name="deliveryStatus" value="결제완료">
		<input type="button" onclick="modifyDelivery()" value="신청수정">
		<input type="button" onclick="payment()" value="결제하기">
		<a href="cancelAppl.do"><input type="button" value="신청취소"></a>
	</form>
</body>
</html>