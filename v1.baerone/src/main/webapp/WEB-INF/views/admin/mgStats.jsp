<%@page import="org.springframework.web.context.request.RequestScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 전용</title>

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/admin-css/local.css" />
    <link id="themecss" rel="stylesheet" type="text/css" href="//www.shieldui.com/shared/components/latest/css/light/all.min.css" />
    <script type="text/javascript" src="//www.shieldui.com/shared/components/latest/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="//www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
    
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

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
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 강의별 선호도</h3>
                        </div>
                        <div class="panel-body">
                            <div id="lectureChart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 직업별 이용률</h3>
                        </div>
                        <div class="panel-body">
                            <div id="jobChart"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-bar-chart-o"></i> 연령별 이용률</h3>
                        </div>
                        <div class="panel-body">
                            <div id="ageChart"></div>
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
            </div>         
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
   <script type="text/javascript">
    $(document).ready(function () {
        $("#lectureChart").shieldChart({
            theme: "light",
            primaryHeader: {
                text: "강의별 선호도"
            },
            exportOptions: {
                image: false,
                print: false
            },
            axisX: {
                categoricalValues: ["Java", "JavaScript", "C/C++", "HTML", "CSS", "JSP", "Servlet", "Node.js"]
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
                collectionAlias: "강의명",
                data: [200, 410, 390, 500, 480, 300, 280, 180]
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
            $("#ageChart").shieldChart({
                theme: "light",
                exportOptions: {
                    image: true,
                    print: true
                },
                primaryHeader: {
                    text: "연령별 이용률"
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
                      ["10대", 10.0],
                        ["20대", 48.2],
                        ["30대", 31.8],
                        ["40대", 11.6],
                        ["50대 이상", 8.4]
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
                      ["남", 75],
                      ["여", 25],
                    ]
                }]
            });
        });
    </script>
</body>
</html>
