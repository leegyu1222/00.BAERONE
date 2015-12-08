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
				<div class="col-lg-8 col-lg-offset-2">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="fa fa-bar-chart-o"></i> 강의 관리
							</h3>
						</div>
						<div class="panel-body">
							<form role="form">
								         <c:forEach var="list" items="${list}">
								      	        <textarea rows="50" cols="144" name="content" id="content">${list.content}</textarea>
    	                                        <input type="hidden" id="lectureNo" name="lectureNo" value="${list.lectureNo}">
    	                                        <input type="hidden" id="subject" name="subject" value="${list.subject}">
    	                                        <input type="hidden" id="title" name="title" value="${list.title}">
                						  </c:forEach>
								<div align="right">
									<button type="submit" class="btn btn-primary">수정</button>
									<a href="mgLecture.do" class="btn btn-danger">취소</a>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
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
			form.attr('action', 'lectureModify.do')
			form.attr('method', 'post');
			form.submit();
		});
	})
	</script>
</body>
</html>

