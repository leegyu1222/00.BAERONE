<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 전용</title>

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/admin-css/local.css" />

    <script type="text/javascript" src="js/admin-js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <!-- you need to include the shieldui css and js assets in order for the charts to work -->
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/shieldui-all.min.css" />
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
    <script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
    <script type="text/javascript" src="http://www.prepbootstrap.com/Content/js/gridData.js"></script>
</head>
<body>
<div id="wrapper">
        <!-- Start of adminInc -->,
		<jsp:include page="adminInc/adminInc.jsp" />
		<!-- End of adminInc -->
         <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 강의 관리</h3>
                        </div>
                        <div class="panel-body">
                            <div class="btn-group">
                                <form action="mgLectureList.do">
									<div class="form-group">
										<label for="id">강의과목</label>
										<div class="btn-group">
											<select name="subject" id="subject">
												<option value="all">All</option>
												<option value="Java">Java</option>
												<option value="C언어">C언어</option>
												<option value="JavaScript">JavaScript</option>
												<option value="정규 표현식">정규 표현식</option>
												<option value="Phyton">Phyton</option>
											</select>
										</div>
										<button type="submit" class="btn btn-primary">강의조회</button>
									</div>
								</form>
							</div>
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>글번호</th>
                                            <th>과목</th>
                                            <th>챕터</th>
                                            <th>작성자</th>
                                            <th>작성일</th>
                                            <th>조회수</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                  		  <c:forEach var="list" items="${list}">
	                                        <tr>
    	                                        <td>${list.lectureNo}</td>
        	                                    <td>${list.subject}</td>
            	                                <td><a href="mgLectureInfo.do?title=${list.title}">${list.title}</a></td>
                	                            <td>${list.name}</td>
                    	                        <td class="center">${list.writeDate}</td>
                        	                    <td class="center">${list.hit}</td>
                            	            </tr>
                						  </c:forEach>
                                    </tbody>
                                </table>
                                <div align="right">
                            
                            	<a href="registerLecture.do" class="btn btn-primary">등록</a>
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
                                    <li><a href="#">&laquo;</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
    </div>
</body>
</html>

