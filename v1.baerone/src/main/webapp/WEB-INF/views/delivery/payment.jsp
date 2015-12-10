<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>
	function complete(dto){
		alert("결제완료");
		document.payment.action = "deliveryService.do?dto="+dto;
		document.payment.submit();
		
	}
</script>
</head>
<body>
	<form id="payment"  method="post">
		<div>
		결제요청금액 <input type="text" name="fare" value=${dto.fare } size="8">원 <br>
		신용카드 번호 <input type="text" maxlength="4" size="5"> - <input type="text" maxlength="4" size="5"> - 
				  <input type="text" maxlength="4" size="5"> - <input type="text" maxlength="4" size="5"> <br>
		카드유효기간 <select name="validYear" id="validYear">					
					 <option value="null">년</option>
					 <option value="2015">15</option>
					 <option value="2014">16</option>
					 <option value="2014">17</option>
					 <option value="2014">18</option>
					 <option value="2014">19</option>
					 <option value="2014">20</option>
				 </select>년
				 <select name="validMonth" id="validMonth">
					<option value="null">월</option>
					<option value="01">01</option>
					<option value="02">02</option>
					<option value="03">03</option>
					<option value="04">04</option>
					<option value="05">05</option>
					<option value="06">06</option>
					<option value="07">07</option>
					<option value="08">08</option>
					<option value="09">09</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>월 <br>
		주민등록번호 ****** - <input type="password" maxlength="7" size="6"> <br>
		카드비밀번호 <input type="password" maxlength="2" size="2">** <br><br>
		
		※ 드론이 출발 후에는 취소가 불가능하오니 잘 고려하여 결제해 주십시오. <br><br>
		
		<p align="center"><a href="main.do"><input type="button" value="결제완료"></a> <input type="button" value="취소"></p>
		
		</div>
	</form>
</body>
</html>