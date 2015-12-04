<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


<form action="memberListSelect.do" method="post">
<select name="memberListSelect" id="memberSelect" >
	<option value="none">=선택=</option>
	<option value="userid">userid</option>
	<option value="birthday">birthday</option>
	<option value="email">email</option>
</select>
<input type="text" name="memberListInput">
<button  type="submit">검색</button>
${message }
</form>

	<h1>회원목록</h1>
	<table>
		<thead>
			<tr>
				<td>아이디</td>
				<td>이름</td>
				<td>생년월일</td>
				<td>성별</td>
				<td>휴대전화</td>
				<td>이메일</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="memberList" items="${memberList }">
			<tr>
				<td><a href="myinfo.do">${memberList.userid }</a></td>
				<td>${memberList.name }</td>
				<td>${memberList.birthday }</td>
				<td>${memberList.gender }</td>
				<td>${memberList.phone }</td>
				<td>${memberList.email }</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>