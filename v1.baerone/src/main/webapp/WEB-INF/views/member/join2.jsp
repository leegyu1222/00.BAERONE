<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<!--
<link href="css/bootstrap.min.css" rel="stylesheet">
 -->
<script type="text/javascript">
	//<![CDATA[
	window.gon = {};
	//]]>
</script>
<link rel="stylesheet" type="text/css" href="css/join.css">
<script src="https://d12hfz37g51hrt.cloudfront.net/assets/join_login-764e9a72c5fbb62f1d36b1814b31f25c.js"
	type="text/javascript"></script>
<meta content="authenticity_token" name="csrf-param" />
<meta content="+1MmYTq191ghaSmFKgSYXdMXoDTNfIN7Kj29I56r88k="
	name="csrf-token" />


</head>
<body class="intro">
	<div id="contents">
		<div class="login_background"></div>
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
									<input autofocus="autofocus" class="joinbox userid" id="email" name="email" placeholder="E-mail" size="30" type="email" /> 
									<label for="userid">Email</label>
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
				</div>
				<div class="shadow"></div>
			</div>
		</div>
	</div>
	<!-- Validation Script -->
	<script type="text/javascript" src="js/join-validation/valid.js"></script>
</body>
</html>