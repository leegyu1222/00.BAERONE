<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
 java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH.mm.ss");
 String today = formatter.format(new java.util.Date());
%>
<body>
		<h1>보내는사람</h1><hr>
		<form name = "modifyDelivery" id = "modifyDelivery" action="deliveryCheck.do" method="post">
		
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
		<input type="hidden" name="deliveryDate" value="<%=today%>">
		<input type="hidden" name="deliveryStatus" value="결제완료">
		<input type="submit" value="신청하기">
		<a href="cancelAppl.do"><input type="button" value="신청취소"></a>
	</form>

</body>
</html>