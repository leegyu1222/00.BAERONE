<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="adminMain.do" style="padding-top: 5px;"><img src="img/admin-toplogo.png"></a>
	</div>
	<div class="collapse navbar-collapse navbar-ex1-collapse">
		<ul class="nav navbar-nav side-nav" style="box-shadow: 1px 1px 10px">
			<li class="active"><a href="adminMain.do"><i class="fa fa-bullseye"></i> 홈</a></li>

			<li><a href="mgDelivery.do"><i class="fa fa-tasks"></i> 배송 관리</a></li>

			<li><a href="mgMember.do"><i class="fa fa-globe"></i> 회원 관리</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right navbar-user">
			<li class="dropdown messages-dropdown"><a href="cancelAppl.do">
				<i class="fa fa-envelope"></i>사용자 페이지로</a>
			</li>
			<li class="dropdown user-dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
				<i class="fa fa-user"></i> 관리자 <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#"><i class="fa fa-user"></i> 관리자정보</a></li>
						<li><a href="logout.do"><i class="fa fa-power-off"></i> 로그아웃</a></li>
					</ul>
			</li>
		</ul>
	</div>
</nav>
