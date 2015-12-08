<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 전용</title>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="css/admin-css/local.css" />

<script type="text/javascript" src="js/admin-js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<!-- you need to include the shieldui css and js assets in order for the charts to work -->
<link rel="stylesheet" type="text/css"
	href="http://www.shieldui.com/shared/components/latest/css/shieldui-all.min.css" />
<link rel="stylesheet" type="text/css"
	href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
<script type="text/javascript"
	src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
<script type="text/javascript"
	src="http://www.prepbootstrap.com/Content/js/gridData.js"></script>
</head>
<body>

	<div id="wrapper">
		<!-- Start of adminInc -->
		<jsp:include page="adminInc/adminInc.jsp" />
		<!-- End of adminInc -->
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="fa fa-bar-chart-o"></i> 회원 관리
							</h3>
						</div>
						<div class="panel-body">
							<div class="btn-group">
								<form action="gradeDetailSearchList.do">
									<div class="form-group">
										<label for="id">등급</label>
										<div class="btn-group">
											</button>
											<select name="grade" id="grade">
												<option value="all">All</option>
												<option value="G">G</option>
												<option value="S">S</option>
											</select>
										</div>
										<button type="submit" class="btn btn-primary">등급조회</button>
									</div>
								</form>
							</div>
							<div class="dataTable_wrapper">
								<table class="table table-striped table-bordered table-hover"
									id="dataTables-example">
									<thead>
										<tr>
											<th>아이디</th>
											<th>닉네임</th>
											<th>등급</th>
											<th>가입일</th>
											<th>최근접속일</th>
										</tr>
									</thead>
									<c:forEach var="dto" items="${list}">
										<tbody>
											<tr class="gradeA">
												<td><a href="memberInfo.do?userid=${dto.userid}">${dto.userid}</a></td>
												<td>${dto.nickname}</td>
												<td>${dto.grade}</td>
												<td>${dto.entryDate}</td>
												<td>${dto.lastDate}</td>
											</tr>
										</tbody>
									</c:forEach>
								</table>
								<div align="right">
									<button type="button" class="btn btn-primary">추가</button>
									<button type="button" class="btn btn-default">취소</button>
								</div>
							</div>
							<div align="center">
								<ul class="pagination">
									<li class="disabled"><a href="#">&laquo;</a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">&raquo;</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->
	</div>
	<!-- /#wrapper -->
</body>
</html>
