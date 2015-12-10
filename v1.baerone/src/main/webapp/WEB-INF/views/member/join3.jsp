<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, java.text.*"  %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>BAERONE과 함께하세요</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/icomoon-social.css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,600,800' rel='stylesheet' type='text/css'>
		<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/leaflet.css" />
		<!--[if lte IE 8]>
		    <link rel="stylesheet" href="css/leaflet.ie.css" />
		<![endif]-->
		<link rel="stylesheet" href="css/main.css">
		<link rel="stylesheet" type="text/css" href="css/join.css">

        <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<script type="text/javascript" src="js/postCode/postCode.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    </head>
<%
 java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH.mm.ss");
 String today = formatter.format(new java.util.Date());
%>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
	    	<div class="container">
				<div class="row">
					<!-- Sidebar -->
					<!-- End Sidebar -->
				
                            <div class='movable first' style='position: absolute; width: 100%'>
			<div class="table_center">
				<div class="ham_box" style="margin-bottom: 12px;">
					<div class="title">회원가입</div>
					<div class="content_ham no_top_radius">
					
						<!-- Join Form -->
						<form role="form" accept-charset="UTF-8" class="new_user">
							<div style="margin: 0; padding: 0; display: inline">
								<input name="utf8" type="hidden" value="&#x2713;" />
								<input name="authenticity_token" type="hidden" value="+1MmYTq191ghaSmFKgSYXdMXoDTNfIN7Kj29I56r88k=" />
							</div>
							
							<input id="user_password_initialized" name="user[password_initialized]" type="hidden" value="true" />
							<input id="continue" name="continue" type="hidden" />
							
							<!-- Input Form -->
							<div class="input_form">
								<!-- ID -->
								<div class="box_wrapper first" style="margin-bottom: 30px;">
									<input autofocus="autofocus" class="joinbox userid" id="userid" name="userid" placeholder="아이디(E-mail)" size="30" type="email" /> 
									<label for="userid">ID</label>
									<div class="validation_check"></div>
									<div class="warning" id="useridWarning"></div>
								</div>
								
								<!-- Password -->
								<div class="box_wrapper last" style="margin-bottom: 30px;">
									<input class="joinbox password" id="userpw" name="userpw" placeholder="비밀번호 (6자 이상)" size="30" type="password" /> 
									<label for="userpw">비밀번호(6자 이상)</label>
									<div class="validation_check"></div>
									<div class="warning" id="userpwWarning"></div>
								</div>
								
								<!-- Password Check -->
								<div class="box_wrapper last" style="margin-bottom: 30px;">
									<input class="joinbox password" id="userpwCheck" name="userpwCheck" placeholder="비밀번호 확인" size="30" type="password" /> 
									<label for="userpw">비밀번호 확인</label>
									<div class="validation_check"></div>
									<div class="warning" id="userpwCheckWarning"></div>
								</div>
								
								<!-- Nickname -->
								<div class="box_wrapper" style="margin-bottom: 30px;">
									<input class="joinbox name" id="name" name="name" placeholder="이름" size="30" type="text" />
										<label for="nickname">이름</label>
									<div class="validation_check"></div>
									<div class="warning" id="nicknameWarning"></div>
								</div>
								
								<!-- Birth -->
								<div class="box_wrapper last" style="margin-bottom: 30px;">
									<input class="joinbox birth" id="birth" name="birth" placeholder="생년월일 (ex : 1988.02.17)" size="30" type="text" /> 
									<label for="birth">생년월일</label>
									<div class="validation_check"></div>
									<div class="warning" id="birthWarning"></div>
								</div>
								
								<!-- Gender -->
								<div class="box_wrapper last" style="margin-bottom: 30px;">
									<br>
									<input type="radio" name="gender" id="man" value="M">남자
									<label for="man">남자</label>
									&nbsp;&nbsp;&nbsp;
									<input type="radio" name="gender" id="woman" value="W">여자
									<label for="woman">여자</label>
									<div class="validation_check"></div>
									<div class="warning" id="genderWarning"></div>
								</div>
								
								<!-- Mobile -->
								<div class="box_wrapper last" style="margin-bottom: 30px;">
									<input class="joinbox mobile" id="mobile" name="mobile" placeholder="핸드폰 번호 ( ex : xxx-xxxx-xxxx)" size="30"type="text" /> 
									<label for="mobile">핸드폰 번호</label>
									<div class="validation_check"></div>
									<div class="warning" id="mobileWarning"></div>
								</div>
								
								<!-- E-mail -->
								<div class="box_wrapper first" style="margin-bottom: 30px;">
									<input autofocus="autofocus" class="joinbox emal" id="email" name="email" placeholder="E-mail" size="30" type="email" /> 
									<label for="email">Email</label>
									<div class="validation_check"></div>
									<div class="warning" id="useridWarning"></div>
								</div>
								
								<!--  Address -->
								<div class="box_wrapper first" style="margin-bottom: 30px;">
									<input autofocus="autofocus" class="joinbox postNo" id="senderPostNo" name="senderPostNo" placeholder="우편번호" size="30" type="text" style="display:inline;"/> 
									<label for="userid">우편번호</label>
									<div class="validation_check"></div>
									<input type="button" onclick="sender_Postcode()" value="우편번호 찾기">
									<div class="warning" id="useridWarning"></div>
								</div>
								<div class="box_wrapper first" style="margin-bottom: 30px;">
									<input autofocus="autofocus" class="joinbox senderAddrOld" id="senderAddrOld" name="senderAddrOld" placeholder="지번주소" size="30" type="text" /> 
									<label for="addressOld">지번주소</label>
									<div class="validation_check"></div>
									<div class="warning" id="useridWarning"></div>
								</div>
								<div class="box_wrapper first" style="margin-bottom: 30px;">
									<input autofocus="autofocus" class="joinbox senderAddrNew" id="senderAddrNew" name="senderAddrNew" placeholder="도로명주소" size="30" type="text" /> 
									<label for="userid">도로명주소</label>
									<div class="validation_check"></div>
									<div class="warning" id="useridWarning"></div>
								</div>
								<div class="box_wrapper first" style="margin-bottom: 30px;">
									<input autofocus="autofocus" class="joinbox senderAddrMisc" id="senderAddrMisc" name="senderAddrMisc" placeholder="상세주소" size="30" type="text" /> 
									<label for="userid">상세주소</label>
									<div class="validation_check"></div>
									<div class="warning" id="useridWarning"></div>
								</div>
							</div>
							<!-- Register -->
							<div class="btn_join" onclick="join();">
								등록하기
								<div class="email_fake_btn">
									<div class="email_inner_img"></div>
								</div>
							</div>
							<div class="comment_top">
								<br><br>
								<h1>모든 항목을 올바르게 입력해주세요.</h1>
							</div>
							<div class="comment_top">
				            <a id="to_back"href="loginView.do">돌아가기</a>
				         	</div>
						</form>
					</div>
		
				<div class="shadow"></div>
			</div>
		</div>
	    </div>
            </div>
        </div>
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
		<script type="text/javascript" src="js/join-validation/valid.js"></script>
    </body>
</html>