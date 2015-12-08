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
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/admin-css/local.css" />
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/shieldui-all.min.css" />
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />

    <script type="text/javascript" src="js/admin-js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
    <script type="text/javascript" src="http://www.prepbootstrap.com/Content/js/gridData.js"></script>

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
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 게시판 관리</h3>
                        </div>
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>no</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>작성일</th>
                                            <th>조회수</th>
                                        </tr>
                                    </thead>
                                   	<c:forEach var="dto" items="${list}">
										<tbody>
											<tr class="gradeA">
												<td>${dto.postNo}</td>
												<td><a href="boardInfo.do?postNo=${dto.postNo}&page=${page}">${dto.title}</a></td>
												<td>${dto.nickname}</td>
												<td>${dto.writeDate}</td>
												<td>${dto.hit}</td>
											</tr>
										</tbody>
									</c:forEach>
                                </table>
                                <!-- 
                                <div align="right">
                                    <button type="button" class="btn btn-primary">글쓰기</button>
                                    <button type="button" class="btn btn-default">취소</button>
                                </div>
                                 -->    
                            </div>
                            
                            <!-- Pagination -->
							<div class="pagination-wrapper">
								<ul class="pagination pagination-sm">
								
								<c:if test="${paging.startPage > 1}">
							  		<li>
							  			<a href="mgBoard.do?page=${paging.startPage - 1}">Previous</a>
							  		</li>
							  	</c:if>
							  	
							  	<c:forEach var="i" begin="${paging.startPage}" end="${paging.startPage + paging.groupCount - 1}" step="1">
								    <c:if test="${i  <= paging.totalPage}">
								    	<c:if test="${i eq page}">
									    	<li class="active">
									    		<a href="mgBoard.do?page=${i}">${i}</a>
									    	</li>
									    </c:if>
									    <c:if test="${i != page}">
									    	<li>
									    		<a href="mgBoard.do?page=${i}">${i}</a>
									    	</li>
									    </c:if>
								    </c:if>
							    </c:forEach>
							  	
							  	 <c:if test="${paging.startPage + paging.groupCount <= paging.totalPage}">
							    	<li>
							    		<a href="mgBoard.do?page=${paging.startPage + paging.groupCount}">Next</a>
							    	</li>
							    </c:if>
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
