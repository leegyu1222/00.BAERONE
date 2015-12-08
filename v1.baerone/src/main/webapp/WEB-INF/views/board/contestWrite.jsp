<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>환영합니다!</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/icomoon-social.css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="css/leaflet.css" />
		<!--[if lte IE 8]>
		    <link rel="stylesheet" href="css/leaflet.ie.css" />
		<![endif]-->
		<link rel="stylesheet" href="css/main.css">

        <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <!-- 스마트 에디터 -->
        <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
		<script type="text/javascript" src="resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>
<!-- Start of Header -->
<jsp:include page="../inc/header.jsp" />
<!-- End of Header -->
		
	<!-- Start of Contents -->
	<div class="section">
		<div class="container">
			<form role="form">
			<input type="hidden" name="page" value="${page}" />
			<div class="row">
				<div class="col-sm-9 col-md-offset-2">
					<div class="blog-post blog-single-post">
						<div class="single-post-title">
							<label>제목</label> <input type="text" placeholder="제목을 입력하세요" name="title" id="title">
						</div>
						<div>
							<textarea name="content" id="content" rows="10" cols="100" style="width:100%; height:412px;"></textarea>
						</div>
					</div>
				</div>
			</div>
			</form>
			<div class="row">
				<div class="col-sm-9 col-md-offset-2">
					<div>
						<button type="submit" class="btn pull-right" style="margin: 5px;" id="register">등록</button>
						<button type="submit" class="btn pull-right" style="margin: 5px;" id="cancel">취소</button>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- End of Contents -->
	    
	<!-- Footer -->
	<jsp:include page="../inc/footer.jsp" />
	<!-- End of Footer -->

        <!-- Javascripts -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script>
        <script src="js/bootstrap.min.js"></script>
        <script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
        <script src="js/jquery.fitvids.js"></script>
        <script src="js/jquery.sequence-min.js"></script>
        <script src="js/jquery.bxslider.js"></script>
        <script src="js/main-menu.js"></script>
        <script src="js/template.js"></script>
        <script type="text/javascript">
        
        $(document).ready(function() {
        	var form = $('form[role="form"]');
			$('#cancel').on('click', function() {
				form.attr('action', 'contestList.do')
				form.attr('method', 'get');
				form.submit();
			});
		});
		</script>
<!--  
<script type="text/javascript" src="se/js/HuskyEZCreator.js" charset="utf-8"></script>
-->
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