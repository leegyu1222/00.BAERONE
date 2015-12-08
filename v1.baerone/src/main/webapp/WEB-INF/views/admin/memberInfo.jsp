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
<!-- 스마트 에디터 -->
<script type="text/javascript"
	src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>
	<div id="wrapper">

		<!-- Start of adminInc -->
		<jsp:include page="adminInc/adminInc.jsp" />
		<!-- End of adminInc -->

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-4">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="fa fa-bar-chart-o"></i> 회원 관리
							</h3>
						</div>
						<div class="panel-body">
							<form action="adminWithdraw.do" role="form">
								<fieldset>
									<div class="form-group">
										<label for="id">ID</label> <input type="text" value="${member.userid}" class="form-control" id="userid" name="userid" placeholder="">
									</div>
									<div class="form-group">
										<label for="id">비밀번호</label> <input type="password" value="${member.userpw}" class="form-control" id="userpw" name="userpw" placeholder="" >
									</div>
									<div class="form-group">
										<label for="id">가입일</label> <input type="text" value="${member.entryDate}" class="form-control" id="entryDate" name="entryDate" placeholder="">
									</div>
									<div class="form-group">
										<label for="id">닉네임</label> <input value="${member.nickname}" class="form-control" id="nickname" type="text" name="nickname" placeholder="">
									</div>
									<div class="form-group">
										<label for="id">전화번호</label> <input value="${member.mobile}" class="form-control" id="mobile" type="text" name="mobile" placeholder="">
									</div>

									<div class="form-group">
										<label for="id">생년월일</label> <input value="${member.birth}" class="form-control" id="birth" type="text" name="birth" placeholder="">
									</div>
									<div class="form-group">
										<label for="id">성별</label> <label class="radio-inline">
											<input value="${member.gender}" type="radio" name="gender"
											id="M" value="M" checked> 남자
										</label> <label class="radio-inline"> <input type="radio"
											name="gender" id="W" value="W"> 여자
										</label>
									</div>
									<div class="form-group">
										<label for="id">직업</label> <input value="${member.job}"
											class="form-control" id="job" type="text" name="job"
											placeholder="">
									</div>

									<div class="form-group">
										<label for="id">등급</label> <input value="${member.grade}"
											class="form-control" id="job" type="text" name="grade"
											placeholder="">
									</div>
									<div class="form-group">
										<label for="id">최근접속일</label> <input
											value="${member.lastDate}" class="form-control" id="lastDate" name="lastDate"
											type="text" placeholder="">
									</div>
								</fieldset>
								<div align="right">
								 
									<button type="submit" class="btn btn-danger">탈퇴</button>
									<a href="adminMain.do" class="btn btn-default">취소</a>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="fa fa-bar-chart-o"></i> 회원 정보 변경
							</h3>
						</div>
						<div class="panel-body">
						<form action="updateUserInfo.do">
										<div class="form-group">
											<label for="id">등급</label>
											<div class="btn-group">
												<select name="grade" id="grade">
													<option value="G">G</option>
													<option value="S">S</option>
													<option value="A">A</option>
												</select>
											</div>
										</div>
							<div align="right">
							<input type="hidden" value="${member.userid}" name="userid">
								<button type="submit" class="btn btn-primary">저장</button>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- /.row -->
		</div>
	</div>
	<!-- 스마트에디터프레임 + 전송버튼클릭이벤트스크립트 -->
	<script>
	$(function(){
	    //전역변수
	    var obj = [];               
	    //스마트에디터 프레임생성
	    nhn.husky.EZCreator.createInIFrame({
	        oAppRef: obj,
	        elPlaceHolder: "content",
	        sSkinURI: "resources/editor/SmartEditor2Skin.html", 
	        htParams : {
	            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
	            bUseToolbar : true,             
	            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
	            bUseVerticalResizer : true,     
	            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
	            bUseModeChanger : true
	        }     
	    });
	    var form = $('form[role="form"]');
		$('#register').on('click', function() {
			obj.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
			form.attr('action', 'contestSave.do')
			form.attr('method', 'post');
			form.submit();
		});
	})
	</script>
</body>
</html>

