<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 전용</title>

    <link rel="stylesheet" type="text/css" href="css/admin-css/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/admin-css/local.css" />
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="css/admin-css/bootstrap/bootstrap/js/bootstrap.min.js"></script>

    <!-- you need to include the shieldui css and js assets in order for the charts to work -->
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/shieldui-all.min.css" />
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
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
                <div class="col-lg-12" style="text-align:center">
                    <div class="panel-body">
                            <div class="row alert-success col-lg-4">
                                <div class="col-xs-6 text-center">
                                    <i class="fa fa-user fa-5x"></i>
                                    <h2 style="display:inline"><samll>전체사용자</samll></h2>
                                </div>
                                <div class="col-xs-5 text-center">
                                    <p class="alerts-heading">${memberCount }</p>
                                </div>
                            </div>
                            <div class="row alert-success col-lg-4">
                                <div class="col-xs-5 text-center">
                                    <i class="fa fa-krw fa-5x"></i>
                                </div>
                                <div class="col-xs-5 text-center">
                                    <p class="alerts-heading">${thisIncome }</p>
                                </div>
                            </div>
                            <div class="row alert-danger col-lg-4">
                                <div class="col-xs-5">
                                    <i class="fa fa-shopping-cart fa-5x"></i>
                                </div>
                                <div class="col-xs-5 text-right">
                                    <p class="alerts-heading">${thisOrder }</p>
                                </div>
                            </div>
                        </div>   
                </div>
                
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 월별 매출</h3>
                        </div>
                        <div class="panel-body">
                            <div id="profit"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 연령별 이용률</h3>
                        </div>
                        <div class="panel-body">
                            <div id="age"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 성별 이용률</h3>
                        </div>
                        <div class="panel-body">
                            <div id="genderChart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> Sales personnel Data</h3>
                        </div>
                        <div class="panel-body">
                           <table class="jobs-list">
	    				<c:forEach var="list" items="${list}">
	    					<tr>
	    						<th>보내는 사람</th>
								<th>휴대폰 번호</th>
								<th>신청시간</th>
								<th>물품정보</th>
								<th style="text-align:center">신청 취소</th>
	    					</tr>
	    					<tr>
	    						<td>${list.senderName}</td>
								<td>${list.senderPhone}</td>
								<td>${list.deliveryDate}</td>
								<td>${list.productDetail}</td>
								<th rowspan="3" style="text-align:center"><a href="cancelDelivery.do?deliveryNo=${list.deliveryNo}"><input type="button" value="취소"></a><th>
	    					</tr>
	    					<tr>
								<th>받는 사람</th>
								<th>휴대폰 번호</th>
								<th>배송상태</th>
								<th>물품정보</th>
							</tr>
							<tr>
								<td>${list.receiverName}</td>
								<td>${list.receiverPhone}</td>
								<td>${list.deliveryStatus}</td>
								<td>${list.productDetail}</td>
							</tr>
							<tr>
								<td colspan="5" style="background:#ECEEF3; height:2px;padding-top: 2px;padding-bottom: 1px;"></td>
							</tr>
							</c:forEach>
	    				</table>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <script type="text/javascript">
    $(document).ready(function () {
        $("#profit").shieldChart({
            theme: "light",
            primaryHeader: {
                text: "월별 매출액"
            },
            exportOptions: {
                image: false,
                print: false
            },
            axisX: {
                categoricalValues: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
            },
            tooltipSettings: {
                chartBound: true,
                axisMarkers: {
                    enabled: true,
                    mode: 'xy'
                }                    
            },
            dataSeries: [{
                seriesType: 'line',
                collectionAlias: "월별",
                data: [100, 320, 453, 234, 553, 665, 345, 123, 432, 545, 654, 345]
            }]
        });
    });
</script>
    <script type="text/javascript">
   $(function () {
        $("#jobChart").shieldChart({
            theme: "light",
            primaryHeader: {
                text: "직업별 이용률"
            },
            exportOptions: {
                image: false,
                print: false
            },
            axisX: {
                categoricalValues: ["중고등학생", "대학생", "교사", "대학교수", "IT관련 직종", "기타"]
            },
            tooltipSettings: {
                chartBound: true,
                axisMarkers: {
                    enabled: true,
                    mode: 'x'
                }                    
            },
            dataSeries: [{
                seriesType: 'bar',
                collectionAlias: "직업명",
                data: [Number('${job1}'), Number('${job2}'), Number('${job3}'), Number('${job4}'), Number('${job5}'), Number('${job6}')]
            }]
        });
    });
</script>
     <script type="text/javascript">
        $(function () {
            $("#age").shieldChart({
                theme: "light",
                seriesSettings: {
                    donut: {
                        enablePointSelection: true,
                        addToLegend: true,
                        dataPointText: {
                            enabled: true,
                            borderRadius: 4,
                            borderWidth: 2,
                            borderColor: "red"
                        }
                    }
                },               
                tooltipSettings: {
                    customPointText: "{point.collectionAlias}: {point.y}"
                },
                chartLegend: {
                    align: "center",
                    borderRadius: 2,
                    borderWidth: 2,
                    verticalAlign: "top"
                },
                exportOptions: {
                    image: false,
                    print: false
                },
                primaryHeader: {
                    text: "연령별 이용률"
                },
                dataSeries: [{
                    seriesType: "donut",
                    collectionAlias: "Usage",
                    data: [
                         ["10대", 9.0],
                        ["20대", 26.8],
                        ["30대", 55.8],
                        ["40대", 3.8],
                        ["50대", 1.9]
                    ]
                }]
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $("#genderChart").shieldChart({
                theme: "light",
                exportOptions: {
                    image: true,
                    print: true
                },
                primaryHeader: {
                    text: "성별 이용률"
                },
                seriesSettings: {
                    pie: {
                        enablePointSelection: true
                    }
                },
                tooltipSettings: {
                    customPointText: "{point.collectionAlias}: {point.y}"
                },
                dataSeries: [{
                    seriesType: "pie",
                    collectionAlias: "Usage",
                    data: [
                      ["남", 8],
                      ["여", 4],
                    ]
                }]
            });
        });
    </script>
</body>
</html>
