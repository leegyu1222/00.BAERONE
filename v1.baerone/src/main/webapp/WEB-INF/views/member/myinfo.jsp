<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>

 <head>
 
 </head>
 
 <body>
	<div align=center>
		<form id="myinfoform" action="myinfo.do" method="post" >
			<h1>내정보조회</h1>
			${message }
			
			<table > 
				<tr>
					<td>ID </td>
					<td>${requestScope.member.userid} </td>
				</tr>
				
				<tr>
					<td>name </td>
					<td>${requestScope.member.name } </td>
				</tr>
				<tr>
					<td>birthday </td>
					<td>${requestScope.member.birthday } </td>
				</tr>
				<tr>
					<td>gender </td>
					<td>${requestScope.member.gender } </td>
				</tr>
				<tr>
					<td>phone </td>
					<td>${requestScope.member.phone } </td>
				</tr>
				<tr>
					<td>email </td>
					<td>${requestScope.member.email } </td>
				</tr>
				<tr>
					<td>postNo </td>
					<td>${requestScope.member.postNo } </td>
				</tr>
				<tr>
					<td>addressold </td>
					<td>${requestScope.member.addressOld } </td>
				</tr>
				<tr>
					<td>addressnew </td>
					<td>${requestScope.member.addressNew } </td>
				</tr>
				<tr>
					<td>addressMisc </td>
					<td>${requestScope.member.addressMisc } </td>
				</tr>
				<tr>
					<td>mileage </td>
					<td>${requestScope.member.mileage } </td>
				</tr>
			</table>
		<p>
		</form>
		<a href="myinfoModifyView.do"><button type="button">정보변경</button></a>
		<a href="deleteMember.do"><button type="button">회원탈퇴</button></a>
	</div>
 
 </body>
 
 </html>