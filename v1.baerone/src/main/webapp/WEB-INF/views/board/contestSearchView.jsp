<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</head>
<body>
<!-- Start of Header -->
<jsp:include page="../inc/header.jsp" />
<!-- End of Header -->

		<!-- Start of Contents -->
        <div class="section">
	    	<div class="container">
				<div class="row">
					<!-- Blog Post -->
					<div class="col-sm-9 col-md-offset-2">
						<div class="blog-post blog-single-post">
						<form role="form">
						<input type="hidden" name="postNo" value="${board.postNo}">
							<div class="single-post-title">
								<h3>${board.title}</h3>
							</div>
							<div class="single-post-info">
								<i class="glyphicon glyphicon-time"></i>${board.writeDate} <a href="#" title="Show Comments"><i class="glyphicon glyphicon-comment"></i>${replyCount}</a>
							</div>
							<div class="single-post-content">
								${board.content}
							</div>
						</form>
							<div>
							<c:if test="${board.nickname eq sessionScope.nickname}">
								<button type="submit" class="btn pull-right" style="margin: 5px;" id="modify">수정</button>
								<button type="submit" class="btn pull-right" style="margin: 5px;" id="delete">삭제</button>
							</c:if>
								<button type="submit" class="btn pull-right" style="margin: 5px;" id="list">목록</button>
								<button type="submit" class="btn pull-right" style="margin: 5px;" id="write">글쓰기</button>
							</div>
							<!-- Comments -->
							<div class="post-coments">
								<h4>Comments (${replyCount})</h4>
								<ul class="post-comments" id="replyList">
								<c:forEach var="reply" items="${replyList}">
									<li class="reply" data-replyNo="${reply.replyNo}">
										<div class="comment-wrapper">
											<div class="comment-author">${reply.nickname}</div>
											<p>${reply.content}</p>
											<!-- Comment Controls -->
											<div class="comment-actions">
												<span class="comment-date">${reply.writeDate}</span>
												<a href="#" data-toggle="tooltip" data-original-title="Vote Up" class="show-tooltip"><i class="glyphicon glyphicon-thumbs-up"></i></a>
												<a href="#" data-toggle="tooltip" data-original-title="Vote Down" class="show-tooltip"><i class="glyphicon glyphicon-thumbs-down"></i></a>
												<span class="label label-success">+8</span>
												<a href="#" class="btn btn-micro btn-grey comment-reply-btn"><i class="glyphicon glyphicon-share-alt"></i> Reply</a>
											</div>
										</div>
									</li>
								</c:forEach>
								</ul>
								
								<!-- Reply Pagination
								<div class="pagination-wrapper ">
									<ul class="pagination pagination-sm">
									
									<c:if test="${replyPaging.startPage > 1}">
								  		<li class="disabled">
								  			<a href="getReplyList.do?replyPage=${replyPaging.startPage - 1}&postNo=${board.postNo}">Previous</a>
								  		</li>
								  	</c:if>
			  	
									<c:forEach var="i" begin="${replyPaging.startPage}" end="${replyPaging.startPage + replyPaging.groupCount - 1}" step="1">
									    <c:if test="${i  <= replyPaging.totalPage}">
									    	<li>
									    		<a href="getReplyList.do?replyPage=${i}&postNo=${board.postNo}">${i}</a>
									    	</li>
									    </c:if>
								    </c:forEach>
								    
								    <c:if test="${replyPaging.startPage + replyPaging.groupCount <= replyPaging.totalPage}">
								    	<li>
								    		<a href="getReplyList.do?replyPage=${replyPaging.startPage + replyPaging.groupCount}&postNo=${board.postNo}">Next</a>
								    	</li>
								    </c:if>
								    	
									</ul>
								</div>
								-->
								
								<!-- new Pagination -->
								<div class="row">
									<div class="col-md-2 col-md-offset-5">
										<button type="button" id="getReplyMore" data-loading-text="가져오는중..." class="btn btn-primary" autocomplete="off">
										  댓글 더보기
										</button>
									</div>
								</div>
								
								<!-- Comments Form -->
								<h4>댓글을 남겨주세요.</h4>
								<div class="comment-form-wrapper">
									<form id="replyForm">
										<div class="form-group">
											<label for="comment-message"><i class="glyphicon glyphicon-comment"></i><b>내용</b></label>
											<textarea class="form-control" rows="5" id="reply_content" name="content"></textarea>
										</div>
				        			</form>
				        			<div class="form-group">
										<button class="btn btn-large pull-right" id="reply_register">댓글등록</button>
									</div>
									<div class="clearfix"></div>
								</div>
								<!-- End Comment Form -->
							</div>
							<!-- End Comments -->
						</div>
					</div>
					<!-- End Blog Post -->
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
				var title = '${board.title}';
				var content = '${board.content}';
				
				var form = $('form[role="form"]');
				
				var replyFormat = 	'<li style="list-style:none;" class="reply">' +
										'<div class="comment-wrapper">' +
											'<div class="comment-author" id="nickname"></div>' +
											'<p id="replyContent"></p>' +
											'<div class="comment-actions">' +
												'<span class="comment-date" id="replyWriteDate"></span>' +
												'<a href="#" data-toggle="tooltip" data-original-title="Vote Up" class="show-tooltip"> <i class="glyphicon glyphicon-thumbs-up"></i></a>' +
												'<a href="#" data-toggle="tooltip" data-original-title="Vote Down" class="show-tooltip">  <i class="glyphicon glyphicon-thumbs-down"></i></a>' +
												'<span class="label label-success">+8</span>' +
												'<a href="#" class="btn btn-micro btn-grey comment-reply-btn"><i class="glyphicon glyphicon-share-alt"></i> Reply</a>' +
										 	'</div>' +
										'</div>' +
									'</li>';
				
				$('#write').on('click', function() {
					$('<input />').attr({
						type:'hidden',
						name:'page',
						value:'${page}'
					}).appendTo(form);
					
					form.attr('action', 'contestWrite.do');
					form.attr('method', 'get');
					form.submit();
				});
				
				$('#delete').on('click', function() {
					if(confirm("게시글을 삭제하시겠습니까?")) {
						$('<input />').attr({
							type:'hidden',
							name:'page',
							value:'${page}'
						}).appendTo(form);
						
						form.attr('action', 'contestDelete.do')
						form.attr('method', 'post');
						form.submit();
					}
				});
				
				$('#list').on('click', function() {
					$('<input />').attr({
						type:'hidden',
						name:'page',
						value:'${page}'
					}).appendTo(form);
					
					$('<input />').attr({
						type:'hidden',
						name:'page',
						value:'${searchType}'
					}).appendTo(form);
					
					$('<input />').attr({
						type:'hidden',
						name:'page',
						value:'${keyword}'
					}).appendTo(form);
					
					
					form.attr('action', 'searchBoard.do')
					form.attr('method', 'get');
					form.submit();
				});
				
				$('#modify').on('click', function() {
					$('<input />').attr({
						type:'hidden',
						name:'title',
						value:title
					}).appendTo(form);
					
					$('<input />').attr({
						type:'hidden',
						name:'content',
						value:content
					}).appendTo(form);
					
					$('<input />').attr({
						type:'hidden',
						name:'page',
						value:'${page}'
					}).appendTo(form);
					
					form.attr('action', 'contestModify.do')
					form.attr('method', 'post');
					form.submit();
				});
				
				/*
				 * 댓글 더보기 요청
				 */
				var getReplyMoreCount = 1;
				$('#getReplyMore').on('click', function () {
				    var $btn = $(this).button('loading');
				    getReplyMoreCount++;
				    $.ajax({
						url:'getReplyMore.do',
						data:{
							replyPage:getReplyMoreCount,
							postNo:'${board.postNo}',
						},
						dataType:'json',
						type:'post',
						success:function(replyList) {
							var str = '';
							var replies = $('#replyList').html();
							$(replyList).each(function() {
								str += '<li style="list-style:none;" class="reply" data-replyNo=' + this.replyNo + '>' +
											'<div class="comment-wrapper">' +
												'<div class="comment-author" id="nickname">' + this.nickname +'</div>' +
												'<p id="replyContent">' + this.content + '</p>' +
												'<div class="comment-actions">' +
													'<span class="comment-date" id="replyWriteDate">' + this.writeDate + '</span>' +
													'<a href="#" data-toggle="tooltip" data-original-title="Vote Up" class="show-tooltip"> <i class="glyphicon glyphicon-thumbs-up"></i></a>' +
													'<a href="#" data-toggle="tooltip" data-original-title="Vote Down" class="show-tooltip">  <i class="glyphicon glyphicon-thumbs-down"></i></a>' +
													'<span class="label label-success">+8</span>' +
													'<a href="#" class="btn btn-micro btn-grey comment-reply-btn"><i class="glyphicon glyphicon-share-alt"></i> Reply</a>' +
											 	'</div>' +
												'</div>' +
										'</li>';
							});

							$('#replyList').html(replies + str);
						}
					});
				    
				    $btn.button('reset');
				});
				
				/*
				 * 댓글 등록 요청
				 */
				$('#reply_register').on('click', function() {
					getReplyMoreCount = 1;
					$.ajax({
						url:'addReply.do',
						data:{
							replyPage:'${replyPage}',
							postNo:'${board.postNo}',
							content:$('#reply_content').val()
						},
						dataType:'json',
						type:'post',
						success:function(replyList) {
							$('.reply').remove();
							for(var index = replyList.length - 1; index >= 0; index--) {
								$('#replyList').after(replyFormat);
								$('#nickname').text(replyList[index].nickname);
								$('#replyContent').text(replyList[index].content);
								$('#replyWriteDate').text(replyList[index].writeDate);
							}
							window.location.reload(true);
						}
					});
				});
			});
        </script>
    </body>
</html>