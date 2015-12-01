<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>

 <head>
 
 </head>
 
 <body>
	<div align=center>
		<form id="myinfomodifyform" action="myinfoModify.do" method="post">
			<h1>내정보변경</h1>
			${message }
			
			<table > 
				<tr>
					<td>ID </td>
					<td><input type="text" name="userid" value="${member.userid }" readonly /> </td>
				</tr>
				<tr>
					<td>PW </td>
					<td><input type="text" name="userpw" value="${member.userpw }" /> </td>
				</tr>
				<tr>
					<td>name </td>
					<td><input type="text" name="name" value="${member.name }" /> </td>
				</tr>
				<tr>
					<td>birthday </td>
					<td><input type="text" name="birthday" value="${member.birthday }" /> </td>
				</tr>
				<tr>
					<td>gender </td>
					<td><input type="text" name="gender" value="${member.gender }" /> </td>
				</tr>
				<tr>
					<td>phone </td>
					<td><input type="text" name="phone" value="${member.phone }" /> </td>
				</tr>
				<tr>
					<td>email </td>
					<td><input type="text" name="email" value="${member.email }" /> </td>
				</tr>
				<tr>
					<td>postNo </td>
					<td><input type="text" name="postNo" value="${member.postNo }" /> </td>
				</tr>
				<tr>
					<td>addressOld </td>
					<td><input type="text" name="addressOld" value="${member.addressOld }" /> </td>
				</tr>
				<tr>
					<td>addressNew </td>
					<td><input type="text" name="addressNew" value="${member.addressNew }" /> </td>
				</tr>
				<tr>
					<td>addressNewMisc </td>
					<td><input type="text" name="addressMisc" value="${member.addressMisc }" /> </td>
				</tr>
			</table>
			<p>
			<button type="submit" >변경사항저장</button>
		</form>
		</div>
 
 </body>
 
 </html>