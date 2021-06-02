<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.ReportDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<script> jQuery(document).ready(function($) {
$('.counter').counterUp({ delay: 10, time: 1000 }); });</script>

<title>Dashboard | Klorofil - Free Bootstrap Dashboard Template</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->


<link rel="stylesheet"
	href="assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
<link rel="stylesheet"
	href="assets/vendor/chartist/css/chartist-custom.css">
<!-- MAIN CSS -->
<link rel="stylesheet" href="assets/css/main.css">
<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
<link rel="stylesheet" href="assets/css/demo.css">
<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700"
	rel="stylesheet">
<!-- ICONS -->
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="assets/img/favicon.png">
<link rel="stylesheet" href="assets/css/style.css">
<style type="text/css">

.col-md-4-1 {
	width: 50%;
	font-weight: bold;
}

.col-md-3-1 {
	width: 50%;
	font-weight: bold;
}

.col-md-4 {
	font-weight: bold;
}

.col-md-3 {
	font-weight: bold;
}


.pro {
	width: 30%
}

.col{
	font-weight: bold;
}

.panel{
	font-size: 20px;
	font-weight: bold;
}

h3.panel-title{
	font-weight: bold;
}

</style>
</head>

<body>
	<%
	ReportDTO report = (ReportDTO) session.getAttribute("report");
	MemberDTO info = (MemberDTO) session.getAttribute("influMypage");
	System.out.println("ReportDTO.getAd_estimate() : " + report.getAll_avg_like());

	ArrayList<Integer> numList = new ArrayList<Integer>();
	ArrayList<Integer> categoryList = new ArrayList<Integer>();

	numList.add(report.getAssesment());
	numList.add(report.getCommunication());
	numList.add(report.getInquire());

	categoryList.add(report.getCategory_dailylife());
	categoryList.add(report.getCategory_beauty());
	categoryList.add(report.getCategory_fashion());
	categoryList.add(report.getCategory_food());

	System.out.println("report.getCategory_dailylife() : " + report.getCategory_dailylife());
	%>

	<!-- WRAPPER -->
	<div id="wrapper">





		<header id="main_menu" class="header navbar-fixed-top">
         <div class="main_menu_bg" style = "background-color:white;">
            <div class="container" style = "width:100%;">
               <div class="row">
                  <div class="nave_menu">
                     <nav class="navbar navbar-default">
                        <div class="container-fluid">
                           <!-- Brand and toggle get grouped for better mobile display -->
                           <div class="navbar-header">
                              <button type="button" class="navbar-toggle collapsed"
                                 data-toggle="collapse"
                                 data-target="#bs-example-navbar-collapse-1"
                                 aria-expanded="false">
                                 <span class="sr-only">Toggle navigation</span> <span
                                    class="icon-bar"></span> <span class="icon-bar"></span> <span
                                    class="icon-bar"></span>
                              </button>


                              <a class="navbar-brand" href="../bino-free-html5-landing-page-template/firstPage.jsp"> <img
                                 src="images/logo_high_re.png" style = "width:120px; height:50px; margin-left: 30px; margin-top:10px"/>
                              </a>
                           </div>

                           <!-- Collect the nav links, forms, and other content for toggling -->

                           <div class="collapse navbar-collapse"
                              id="bs-example-navbar-collapse-1">

                              <ul class="nav navbar-nav navbar-right">
                                 <li><a href="" >HOME</a></li><!-- 세션값받아와서 influencer/companymain으로 이동 -->
                                            <li><a href="hashtag.jsp">HASHTAG</a></li>
                                            <li><a href="../InfluencerMypage?name=inf" >My Page</a></li><!-- 세션값받아와서 mypage/mypage_ad으로 이동 -->
                                            <%if(info == null){ %>
                                 <li><a href="page-login.jsp">LOGIN</a></li>
                                 <%} else{ %>
                                 <li><a href="">LOGOUT</a></li>
                                 <%} %>
                              </ul>
                           </div>
                        </div>
                     </nav>
                  </div>
               </div>

            </div>

         </div>
      </header>
      <!--End of header -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar" style="display: none">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="index.html" class="active"><i
								class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
						<li><a href="elements.html" class=""><i
								class="lnr lnr-code"></i> <span>Elements</span></a></li>
						<li><a href="charts.html" class=""><i
								class="lnr lnr-chart-bars"></i> <span>Charts</span></a></li>
						<li><a href="panels.html" class=""><i class="lnr lnr-cog"></i>
								<span>Panels</span></a></li>
						<li><a href="notifications.html" class=""><i
								class="lnr lnr-alarm"></i> <span>Notifications</span></a></li>
						<li><a href="#subPages" data-toggle="collapse"
							class="collapsed"><i class="lnr lnr-file-empty"></i> <span>Pages</span>
								<i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a href="page-profile.html" class="">Profile</a></li>
									<li><a href="page-login.html" class="">Login</a></li>
									<li><a href="page-lockscreen.html" class="">Lockscreen</a></li>
								</ul>
							</div></li>
						<li><a href="tables.html" class=""><i
								class="lnr lnr-dice"></i> <span>Tables</span></a></li>
						<li><a href="typography.html" class=""><i
								class="lnr lnr-text-format"></i> <span>Typography</span></a></li>
						<li><a href="icons.html" class=""><i
								class="lnr lnr-linearicons"></i> <span>Icons</span></a></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main" style="width: 100%">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<!-- OVERVIEW -->



					<!-- 사진 게시글 팔로워 팔로잉 -->
					<div class="col-md-4 col-md-4-1" style="width: 50%">
						<!-- TASKS -->
						<!-- 원형 -->
						<div class="panel">
							<div>
								<br> <br>

								<div class="row">
								<div class = "left" >
								<img alt="" src="assets/img/3.48kg.jpg" class="img-circle" style="height: 150px; visibility: hidden">
										<img alt="" src="assets/img/3.48kg.jpg" class="img-circle" style="height: 150px;">
										</div>
										<div class="right" style = "padding-right: 60px; ">

									<div>
										<h2 class="" style="position:absolute !important; right : 100px !important; bottom : 200px !important; color: black; text-align: right; ">100000 점</h2><br>
										<script
											src="//cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
										<script src="jquery.counterup.min.js"></script>
									</div>

									<div>
										<h6 style="padding-left: 100px; text-align: center; margin-bottom: 100px" ><b>영향력의 의미는 인플루언서의 정보를 바탕으로<br> 광고를 게시했을때 나타날수있는 예상값</b></h6>
									</div>

								</div>
										

								</div>
								<br>
																<br> <br>
								<div class="panel-body">

									<div class="col-md-3 col-md-3-1 pro">
										<div class="metric">
											<span class="icon"><i class="fa fa-shopping-bag"></i></span>
											<p>
												<span class="number"><%=report.getNum_media()%></span> <span
													class="title">게시글</span>
											</p>
										</div>
									</div>
									<div class="col-md-3 col-md-3-1 pro">
										<div class="metric">
											<p>
												<span class="number"><%=report.getFake_follower()%></span> <span
													class="title">팔로워</span>
											</p>
										</div>
									</div>
									<div class="col-md-3 col-md-3-1 pro">
										<div class="metric">
											<span class="icon"><i class="fa fa-shopping-bag"></i></span>
											<p>
												<span class="number"><%=report.getNum_following()%></span> <span
													class="title">팔로잉</span>
											</p>
										</div>
									</div>

								</div>
							</div>
							<div class="right">
								<div class="panel-body"></div>
							</div>
						</div>
					</div>

					<!-- 다른 정보 -->
					<div class="col-md-4 col-md-4-1">
						<!-- TASKS -->
						<!-- 원형 -->
						<div class="panel">

							<div class="panel-body">

								<div class="col-md-3 col-md-3-1">
									<div class="metric">
										<span class="icon"><i class="fa fa-shopping-bag"></i></span>
										<p>
											<span class="number"><%=report.getRank_percent()%>%</span> <span
												class="title">상위 %</span>
										</p>
									</div>
								</div>
								<div class="col-md-3 col-md-3-1">
									<div class="metric">
										<span class="icon"><i class="fa fa-shopping-bag"></i></span>
										<p>
											<span class="number"><%=info.getInflu_category()%></span> <span
												class="title">카테고리</span>
										</p>
									</div>
								</div>
								<div class="col-md-3 col-md-3-1">
									<div class="metric">
										<span class="icon"><i class="fa fa-shopping-bag"></i></span>
										<p>
											<span class="number"><%=info.getInflu_targetGender()%></span>
											<span class="title">타겟 성별</span>
										</p>
									</div>
								</div>
								<div class="col-md-3 col-md-3-1">
									<div class="metric">
										<span class="icon"><i class="fa fa-shopping-bag"></i></span>
										<p>
											<span class="number"><%=info.getInflu_targetAge()%></span> <span
												class="title">타겟 연령</span>
										</p>
									</div>
								</div>
								<div class="col-md-3 col-md-3-1">
									<div class="metric">
										<span class="icon"><i class="fa fa-shopping-bag"></i></span>
										<p>
											<span class="number"><%=report.getTot_like()%></span> <span
												class="title">총 좋아요</span>
										</p>
									</div>
								</div>
								<div class="col-md-3 col-md-3-1">
									<div class="metric">
										<span class="icon"><i class="fa fa-shopping-bag"></i></span>
										<p>
											<span class="number"><%=report.getTot_comment()%></span> <span
												class="title">총 댓글</span>
										</p>
									</div>
								</div>

							</div>
						</div>
						<div class="right">
							<div class="panel-body"></div>
						</div>
					</div>

					<!-- END VISIT CHART -->
					<!-- END TASKS -->
				</div>


				<div class="row">
					<!-- 댓글 유형 -->
					<div class="col-md-4 col-md-4-1">
						<!-- TASKS -->
						<!-- 원형 -->
						<div class="panel">
							<div class="left" style="width: 60%">
								<div class="panel-heading">
									<h3 class="panel-title" style = "font-weight: bold; font-size: 30px; text-align: right;">댓글 유형</h3>

								</div>
								<ul class="list-unstyled list-justify">

								</ul>
							</div>

							<div class="panel-body">
								<div id="chartdiv"></div>

							</div>


							<br> <br>
							<ul class="list-unstyled task-list">
						</div>
					</div>

					<!-- END VISIT CHART -->
					<!-- END TASKS -->





					<!-- 카테고리 -->
					<div class="col-md-4 col-md-4-1">
						<!-- TASKS -->
						<!-- 원형 -->
						<div class="panel">
							<div class="left" style="width: 60%">
								<div class="panel-heading">
									<h3 class="panel-title" style = "font-weight: bold; font-size: 30px; text-align: right;">카테고리</h3>

								</div>
							</div>
							<ul class="list-unstyled list-justify">
								<div class="panel-body">


									<!-- HTML -->
									<div class="panel-body">
										<div id="chartdiv2"></div>

									</div>
							</ul>
						</div>
					</div>
				</div>
				<!-- END VISIT CHART -->



				<div class="row">
					<!-- 진짜 가짜 팔로워 -->
					<div class="col-md-4 col-md-4-1">
						<!-- TASKS -->
						<!-- 원형 -->
						<div class="panel">
							<div class="left" style="width: 100%">
								<div class="panel-heading">
									<h3 class="panel-title" style = "font-weight: bold; font-size: 30px; text-align: center;">진짜 / 가짜 팔로워</h3>

								</div>

							</div>
							<div class="panel-body">

								<div class="panel-body">
									<div id="chartdiv3"></div>

								</div>

								<div>
									<li>
										<p>
											진짜 팔로워 <span class="label-percent"><%=report.getReal_follower()%>%</span>
										</p>
										<div class="progress progress-xs">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="80" aria-valuemin="0"
												aria-valuemax="100"
												style="width: <%=report.getReal_follower()%>%; background-color: #4AB34A">
												<span class="sr-only">80% Complete</span>
											</div>
										</div>
									</li>



									<li>
										<p>
											가짜 팔로워 <span class="label-percent"><%=report.getFake_follower()%>%</span>
										</p>
										<div class="progress progress-xs">
											<div class="progress-bar progress-bar-danger"
												role="progressbar" aria-valuenow="23" aria-valuemin="0"
												aria-valuemax="100"
												style="width: <%=report.getFake_follower()%>%; background-color: #FF3232">
												<span class="sr-only">23% Complete</span>
											</div>
										</div>
									</li>





									</ul>
								</div>

							</div>

							<!-- END VISIT CHART -->
							<!-- END TASKS -->
						</div>
					</div>

					<!-- 진짜 / 가짜 댓글 -->
					<div class="col-md-4 col-md-4-1">
						<!-- TASKS -->
						<!-- 원형 -->
						<div class="panel">
							<div class="left" style="width: 100%">
								<div class="panel-heading">
									<h3 class="panel-title" style = "font-weight: bold; font-size: 30px; text-align: center;">진짜 / 가짜 댓글</h3>

								</div>
							</div>
							<div class="panel-body">
								<div class="panel-body">
									<div id="chartdiv4"></div>
								</div>
							</div>

							<div>
								<li>
									<p>
										진짜 댓글 <span class="label-percent"><%=report.getReal_comment()%>%</span>
									</p>
									<div class="progress progress-xs">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="80" aria-valuemin="0"
											aria-valuemax="100"
											style="width: <%=report.getReal_comment()%>%; background-color: #4AB34A">
											<span class="sr-only">80% Complete</span>
										</div>
									</div>
								</li>



								<li>
									<p>
										가짜 댓글 <span class="label-percent"><%=report.getFake_comment()%>%</span>
									</p>
									<div class="progress progress-xs">
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="23" aria-valuemin="0"
											aria-valuemax="100"
											style="width: <%=report.getFake_comment()%>%; background-color: #FF3232">
											<span class="sr-only">23% Complete</span>
										</div>
									</div>
								</li>
								</ul>
							</div>


						</div>
					</div>



					<!-- END VISIT CHART -->
					<!-- END TASKS -->
				</div>

			</div>




			<!-- 요일별 -->
			<div class="col-md-4 col-md-4-1">
				<!-- VISIT CHART -->
				<div class="panel">
					<div class="left" style="width: 60%">
						<div class="panel-heading">
							<h3 class="panel-title" style = "font-weight: bold; font-size: 30px; text-align: right;">단골 댓글</h3>
						</div>
					</div>
					<div class="panel-body">
						<div class="panel-body">
							<div id="week-chart" class="ct-chart"></div>
						</div>
					</div>
				</div>
			</div>

			<!-- 시간별 -->
			<div class="col-md-4 col-md-4-1">
				<!-- VISIT CHART -->

				<div class="panel">
					<div class="left" style="width: 60%">
						<div class="panel-heading">
							<h3 class="panel-title" style = "font-weight: bold; font-size: 30px; text-align: right;">단골 좋아요</h3>

						</div>
					</div>
					<div class="panel-body">
						<div class="panel-body">
							<div id="like-chart" class="ct-chart"></div>
						</div>
					</div>
				</div>


				<!-- END VISIT CHART -->
			</div>





			<!-- 좋아요 변화율 -->
			<div class="col-md-6" style="width: 100%">
				<!-- MULTI CHARTS -->
				<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title" style = "font-weight: bold; font-size: 30px; text-align: center;">좋아요 변화율</h3>

					</div>

					<div class="panel-body">

						<!-- HTML -->
						<div id="chartdiv5"></div>



					</div>


				</div>
				<!-- END MULTI CHARTS -->
			</div>




			<!-- END MULTI CHARTS -->

			<div class="col-md-4 col-md-4-1">
				<!-- 포스트 성향(요일별) -->

				<!-- VISIT CHART -->
				<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title" style = "font-weight: bold; font-size: 30px; text-align: center;">요일별 포스트 성향</h3>

					</div>
					<div class="panel-body">
						<!-- HTML -->
						<div id="chartdiv6"></div>

					</div>
				</div>


				<!-- END VISIT CHART -->

			</div>

			<!-- 포스트 성향(시간별) -->
			<div class="col-md-4 col-md-4-1">

				<!-- VISIT CHART -->
				<div class="panel">
					<div class="panel-heading" >
						<h3 class="panel-title" style = "font-weight: bold; font-size: 30px; text-align: center;">시간별 포스트 성향</h3>

					</div>

					<div class="panel-body">
						<!-- HTML -->
						<div id="chartdiv7"></div>

					</div>
				</div>
				<!-- END VISIT CHART -->

			</div>









			<div class="col-md-6" style="width: 100%">
				<!-- 반응 좋아요 & 댓글 -->

				<!-- VISIT CHART -->
				<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title" style = "font-weight: bold; font-size: 30px; text-align: center;">좋아요 반응</h3>

					</div>
					<div class="panel-body">
						<!-- HTML -->
						<div id="chartdiv8"></div>

					</div>
				</div>
				<!-- END VISIT CHART -->

			</div>









		</div>
	</div>
	</div>
	<!-- END MAIN CONTENT -->
	</div>
	<!-- END MAIN -->
	<div class="clearfix"></div>
	<footer>
		<div class="container-fluid">
			<p class="copyright">
				Shared by <i class="fa fa-love"></i><a
					href="https://bootstrapthemes.co">BootstrapThemes</a>
			</p>
		</div>
	</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script
		src="assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="assets/vendor/chartist/js/chartist.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
	<script src="assets/vendor/jquery/jquery.counterup.min.js"></script>
	<script src="assets/vendor/jquery/jquery.counterup.js"></script>



	<!--  원 그래프 문제 스크립트 
	<script src="assets/vendor/jquery/main.js"></script>
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
-->



	<script>
	
	
	
	   $(function() {
		  
		      var data, options;

		      

			      
			      


		      // 단골 댓글
		      data = {
		         labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
		         series: [{
		            name: 'series-real',
		            data: [200, 380, 350, 320, 410, 450, 570, 400, 555, 620, 750, 900],
		         }, {
		            name: 'series-projection',
		            data: [240, 350, 360, 380, 400, 450, 480, 523, 555, 600, 700, 800],
		         }]
		      };

		      options = {
		         fullWidth: true,
		         lineSmooth: false,
		         height: "270px",
		         low: 0,
		         high: 'auto',
		         series: {
		            'series-projection': {
		               showArea: true,
		               showPoint: false,
		               showLine: false
		            },
		         },
		         axisX: {
		            showGrid: false,

		         },
		         axisY: {
		            showGrid: false,
		            onlyInteger: true,
		            offset: 0,
		         },
		         chartPadding: {
		            left: 20,
		            right: 20
		         }
		      };

		      new Chartist.Line('#week-chart', data, options);

		      


		      // 단골 좋아요
		      data = {
		         labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
		         series: [{
		            name: 'series-real',
		            data: [200, 380, 350, 320, 410, 450, 570, 400, 555, 620, 750, 900],
		         }, {
		            name: 'series-projection',
		            data: [240, 350, 360, 380, 400, 450, 480, 523, 555, 600, 700, 800],
		         }]
		      };

		      options = {
		         fullWidth: true,
		         lineSmooth: false,
		         height: "270px",
		         low: 0,
		         high: 'auto',
		         series: {
		            'series-projection': {
		               showArea: true,
		               showPoint: false,
		               showLine: false
		            },
		         },
		         axisX: {
		            showGrid: false,

		         },
		         axisY: {
		            showGrid: false,
		            onlyInteger: true,
		            offset: 0,
		         },
		         chartPadding: {
		            left: 20,
		            right: 20
		         }
		      };

		      new Chartist.Line('#like-chart', data, options);
		   });
		   </script>
	<style>
#chartdiv {
	width: 100%;
	height: 500px;
}
</style>

	<!-- Resources -->
	<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

	<!-- Chart code -->
	<script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

// Create chart instance
var chart = am4core.create("chartdiv", am4charts.PieChart);

// Add and configure Series
var pieSeries = chart.series.push(new am4charts.PieSeries());
pieSeries.dataFields.value = "litres";
pieSeries.dataFields.category = "country";

// Let's cut a hole in our Pie chart the size of 30% the radius
chart.innerRadius = am4core.percent(30);

// Put a thick white border around each Slice
pieSeries.slices.template.stroke = am4core.color("#fff");
pieSeries.slices.template.strokeWidth = 2;
pieSeries.slices.template.strokeOpacity = 1;
pieSeries.slices.template
  // change the cursor on hover to make it apparent the object can be interacted with
  .cursorOverStyle = [
    {
      "property": "cursor",
      "value": "pointer"
    }
  ];

pieSeries.alignLabels = false;
pieSeries.labels.template.bent = true;
pieSeries.labels.template.radius = 3;
pieSeries.labels.template.padding(0,0,0,0);

pieSeries.ticks.template.disabled = true;

// Create a base filter effect (as if it's not there) for the hover to return to
var shadow = pieSeries.slices.template.filters.push(new am4core.DropShadowFilter);
shadow.opacity = 0;

// Create hover state
var hoverState = pieSeries.slices.template.states.getKey("hover"); // normally we have to create the hover state, in this case it already exists

// Slightly shift the shadow and make it more prominent on hover
var hoverShadow = hoverState.filters.push(new am4core.DropShadowFilter);
hoverShadow.opacity = 0.7;
hoverShadow.blur = 5;

// Add a legend
chart.legend = new am4charts.Legend();

chart.data = [{
  "country": "소통",
  "litres": <%=report.getCommunication()%>
},{
  "country": "평가",
  "litres":  <%=report.getAssesment()%>
}, {
  "country": "문의",
  "litres":  <%=report.getInquire()%>
}];

}); // end am4core.ready()
</script>



	<style>
#chartdiv2 {
	width: 100%;
	height: 500px;
}
</style>

	<!-- Resources -->
	<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

	<!-- Chart code -->
	<script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

// Create chart instance
var chart = am4core.create("chartdiv2", am4charts.PieChart);

// Add and configure Series
var pieSeries = chart.series.push(new am4charts.PieSeries());
pieSeries.dataFields.value = "litres";
pieSeries.dataFields.category = "country";

// Let's cut a hole in our Pie chart the size of 30% the radius
chart.innerRadius = am4core.percent(30);

// Put a thick white border around each Slice
pieSeries.slices.template.stroke = am4core.color("#fff");
pieSeries.slices.template.strokeWidth = 2;
pieSeries.slices.template.strokeOpacity = 1;
pieSeries.slices.template
  // change the cursor on hover to make it apparent the object can be interacted with
  .cursorOverStyle = [
    {
      "property": "cursor",
      "value": "pointer"
    }
  ];

pieSeries.alignLabels = false;
pieSeries.labels.template.bent = true;
pieSeries.labels.template.radius = 3;
pieSeries.labels.template.padding(0,0,0,0);

pieSeries.ticks.template.disabled = true;

// Create a base filter effect (as if it's not there) for the hover to return to
var shadow = pieSeries.slices.template.filters.push(new am4core.DropShadowFilter);
shadow.opacity = 0;

// Create hover state
var hoverState = pieSeries.slices.template.states.getKey("hover"); // normally we have to create the hover state, in this case it already exists

// Slightly shift the shadow and make it more prominent on hover
var hoverShadow = hoverState.filters.push(new am4core.DropShadowFilter);
hoverShadow.opacity = 0.7;
hoverShadow.blur = 5;

// Add a legend
chart.legend = new am4charts.Legend();

chart.data = [{
  "country": "뷰티",
  "litres": <%=report.getCategory_beauty()%>
},{
  "country": "패션",
  "litres": <%=report.getCategory_fashion()%>
},{
  "country": "푸드",
  "litres": <%=report.getCategory_food()%>
   },
{
  "country": "기타",
  "litres": <%=report.getCategory_dailylife()%>
}];

}); // end am4core.ready()
</script>


	<!-- Styles -->
	<style>
#chartdiv3 {
	width: 100%;
	height: 500px;
}
</style>

	<!-- Resources -->
	<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

	<!-- Chart code -->
	<script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

// Create chart instance
var chart = am4core.create("chartdiv3", am4charts.PieChart);

// Let's cut a hole in our Pie chart the size of 40% the radius
chart.innerRadius = am4core.percent(40);



// Add and configure Series
var pieSeries = chart.series.push(new am4charts.PieSeries());
pieSeries.dataFields.value = "value";
pieSeries.dataFields.category = "category";
pieSeries.slices.template.stroke = am4core.color("#fff");
pieSeries.innerRadius = 10;
pieSeries.slices.template.fillOpacity = 0.5;

pieSeries.slices.template.propertyFields.disabled = "labelDisabled";
pieSeries.labels.template.propertyFields.disabled = "labelDisabled";
pieSeries.ticks.template.propertyFields.disabled = "labelDisabled";


// Add data
pieSeries.data = [{
  "category": " ",
  "value": 100
}, {
  "category": "Unused",
  "value": 0,
  "labelDisabled":true
}];


// Disable sliding out of slices
pieSeries.slices.template.states.getKey("hover").properties.shiftRadius = 0;
pieSeries.slices.template.states.getKey("hover").properties.scale = 1;

// Add second series
var pieSeries2 = chart.series.push(new am4charts.PieSeries());
pieSeries2.dataFields.value = "value";
pieSeries2.dataFields.category = "category";
pieSeries2.slices.template.states.getKey("hover").properties.shiftRadius = 0;
pieSeries2.slices.template.states.getKey("hover").properties.scale = 1;
pieSeries2.slices.template.propertyFields.fill = "fill";

// Add data
pieSeries2.data = [{
  "category": "잔짜 팔로워",
  "value": <%=report.getReal_follower()%>
}, {
  "category": "가짜 팔로워",
  "value": <%=report.getFake_follower()%>
}];


pieSeries.adapter.add("innerRadius", function(innerRadius, target){
  return am4core.percent(40);
})

pieSeries2.adapter.add("innerRadius", function(innerRadius, target){
  return am4core.percent(60);
})

pieSeries.adapter.add("radius", function(innerRadius, target){
  return am4core.percent(100);
})

pieSeries2.adapter.add("radius", function(innerRadius, target){
  return am4core.percent(80);
})

}); // end am4core.ready()
</script>


	<!-- Styles -->
	<style>
#chartdiv4 {
	width: 100%;
	height: 500px;
}
</style>

	<!-- Resources -->
	<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

	<!-- Chart code -->
	<script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

// Create chart instance
var chart = am4core.create("chartdiv4", am4charts.PieChart);

// Let's cut a hole in our Pie chart the size of 40% the radius
chart.innerRadius = am4core.percent(40);



// Add and configure Series
var pieSeries = chart.series.push(new am4charts.PieSeries());
pieSeries.dataFields.value = "value";
pieSeries.dataFields.category = "category";
pieSeries.slices.template.stroke = am4core.color("#fff");
pieSeries.innerRadius = 10;
pieSeries.slices.template.fillOpacity = 0.5;

pieSeries.slices.template.propertyFields.disabled = "labelDisabled";
pieSeries.labels.template.propertyFields.disabled = "labelDisabled";
pieSeries.ticks.template.propertyFields.disabled = "labelDisabled";


// Add data
pieSeries.data = [{
  "category": "",
  "value": 100
  
}, {
  "category": "Unused",
  "value": 0,
  "labelDisabled":true
}];

// Disable sliding out of slices
pieSeries.slices.template.states.getKey("hover").properties.shiftRadius = 0;
pieSeries.slices.template.states.getKey("hover").properties.scale = 1;


var pieSeries2 = chart.series.push(new am4charts.PieSeries());
pieSeries2.dataFields.value = "value";
pieSeries2.dataFields.category = "category";
pieSeries2.slices.template.states.getKey("hover").properties.shiftRadius = 0;
pieSeries2.slices.template.states.getKey("hover").properties.scale = 1;
pieSeries2.slices.template.propertyFields.fill = "fill";

// Add data
pieSeries2.data = [{
  "category": "진짜 댓글",
  "value": <%=report.getReal_comment()%>
}, {
  "category": "가짜 댓글",
  "value": <%=report.getFake_comment()%>
}];


pieSeries.adapter.add("innerRadius", function(innerRadius, target){
  return am4core.percent(40);
})

pieSeries2.adapter.add("innerRadius", function(innerRadius, target){
  return am4core.percent(60);
})

pieSeries.adapter.add("radius", function(innerRadius, target){
  return am4core.percent(100);
})

pieSeries2.adapter.add("radius", function(innerRadius, target){
  return am4core.percent(80);
})

}); // end am4core.ready()
</script>


	<!-- Styles -->
	<style>
#chartdiv5 {
	width: 100%;
	height: 500px;
}
</style>

	<!-- Resources -->
	<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

	<!-- Chart code -->
	<script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

// Create chart instance
var chart = am4core.create("chartdiv5", am4charts.XYChart);

// Create daily series and related axes
var dateAxis1 = chart.xAxes.push(new am4charts.DateAxis());
dateAxis1.renderer.grid.template.location = 0;
dateAxis1.renderer.minGridDistance = 40;

var valueAxis1 = chart.yAxes.push(new am4charts.ValueAxis());

var series1 = chart.series.push(new am4charts.ColumnSeries());
series1.dataFields.valueY = "value";
series1.dataFields.dateX = "date";
series1.data = generateDailyData();
series1.xAxis = dateAxis1;
series1.yAxis = valueAxis1;
series1.tooltipText = "{dateX}: [bold]{valueY}[/]";

// Create hourly series and related axes
var dateAxis2 = chart.xAxes.push(new am4charts.DateAxis());
dateAxis2.renderer.grid.template.location = 0;
dateAxis2.renderer.minGridDistance = 40;
dateAxis2.renderer.labels.template.disabled = true;
dateAxis2.renderer.grid.template.disabled = true;
dateAxis2.renderer.tooltip.disabled = true;

var valueAxis2 = chart.yAxes.push(new am4charts.ValueAxis());
valueAxis2.renderer.opposite = true;
valueAxis2.renderer.grid.template.disabled = true;
valueAxis2.renderer.labels.template.disabled = true;
valueAxis2.renderer.tooltip.disabled = true;

var series2 = chart.series.push(new am4charts.LineSeries());
series2.dataFields.valueY = "value";
series2.dataFields.dateX = "date";
series2.data = generateHourlyData();
series2.xAxis = dateAxis2;
series2.yAxis = valueAxis2;
series2.strokeWidth = 3;
series2.tooltipText = "{dateX.formatDate('yyyy-MM-dd hh:00')}: [bold]{valueY}[/]";

// Add cursor
chart.cursor = new am4charts.XYCursor();

function generateDailyData() {
    var firstDate = new Date();
    firstDate.setDate(firstDate.getDate() - 10);
    firstDate.setHours(0, 0, 0, 0);
    var data = [];
    for(var i = 0; i < 10; i++) {
      var newDate = new Date(firstDate);
      newDate.setDate(newDate.getDate() + i);
      data.push({
        date: newDate,
        value: Math.round(Math.random() * 12) + 1
      });
    }
  return data;
}

function generateHourlyData() {
    var firstDate = new Date();
    firstDate.setDate(firstDate.getDate() - 10);
    var data = [];
    for(var i = 0; i < 10 * 24; i++) {
        var newDate = new Date(firstDate);
      newDate.setHours(newDate.getHours() + i);

        if (i == 0) {
            var value = Math.round(Math.random() * 10) + 1;
        } else {
            var value = Math.round(data[data.length - 1].value / 100 * (90 + Math.round(Math.random() * 20)) * 100) / 100;
        }
      data.push({
        date: newDate,
        value: value
      });
    }
  return data;
}

}); // end am4core.ready()
</script>

	<!-- Styles -->
	<style>
#chartdiv6 {
	width: 100%;
	height: 500px;
}
</style>

	<!-- Resources -->
	<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

	<!-- Chart code -->
	<script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

var chart = am4core.create("chartdiv6", am4charts.XYChart);

chart.data = [{
 "country": "월요일",
 "visits": <%=report.getDispos_mon()%>
}, {
 "country": "화요일",
 "visits": <%=report.getDispos_tue()%>
}, {
 "country": "수요일",
 "visits": <%=report.getDispos_wed()%>
}, {
 "country": "목요일",
 "visits": <%=report.getDispos_thu()%>
}, {
 "country": "금요일",
 "visits": <%=report.getDispos_fri()%>
}, {
 "country": "토요일",
 "visits": <%=report.getDispos_sat()%>
}, {
 "country": "일요일",
 "visits": <%=report.getDispos_sun()%>
}];

chart.padding(40, 40, 40, 40);

var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
categoryAxis.renderer.grid.template.location = 0;
categoryAxis.dataFields.category = "country";
categoryAxis.renderer.minGridDistance = 60;
categoryAxis.renderer.inversed = true;
categoryAxis.renderer.grid.template.disabled = true;

var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
valueAxis.min = 0;
valueAxis.extraMax = 0.1;
//valueAxis.rangeChangeEasing = am4core.ease.linear;
//valueAxis.rangeChangeDuration = 1500;

var series = chart.series.push(new am4charts.ColumnSeries());
series.dataFields.categoryX = "country";
series.dataFields.valueY = "visits";
series.tooltipText = "{valueY.value}"
series.columns.template.strokeOpacity = 0;
series.columns.template.column.cornerRadiusTopRight = 10;
series.columns.template.column.cornerRadiusTopLeft = 10;
//series.interpolationDuration = 1500;
//series.interpolationEasing = am4core.ease.linear;
var labelBullet = series.bullets.push(new am4charts.LabelBullet());
labelBullet.label.verticalCenter = "bottom";
labelBullet.label.dy = -10;
labelBullet.label.text = "{values.valueY.workingValue.formatNumber('#.')}";

chart.zoomOutButton.disabled = true;

// as by default columns of the same series are of the same color, we add adapter which takes colors from chart.colors color set
series.columns.template.adapter.add("fill", function (fill, target) {
 return chart.colors.getIndex(target.dataItem.index);
});



categoryAxis.sortBySeries = series;

}); // end am4core.ready()
</script>






	<!-- Styles -->
	<style>
#chartdiv7 {
	width: 100%;
	height: 500px;
}
</style>

	<!-- Resources -->
	<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

	<!-- Chart code -->
	<script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end

var chart = am4core.create("chartdiv7", am4charts.XYChart);

chart.data = [{
 "country": "0~4시",
 "visits": <%=report.getDispos_first_time()%>
}, {
 "country": "4~8시",
 "visits": <%=report.getDispos_second_time()%>
}, {
 "country": "8~12시",
 "visits": <%=report.getDispos_third_time()%>
}, {
 "country": "12~16시",
 "visits": <%=report.getDispos_fourth_time()%>
}, {
 "country": "16~20시",
 "visits": <%=report.getDispos_fifth_time()%>
}, {
 "country": "20~24시",	//추가해야함!!!!!!
 "visits": <%=540%>
}];

chart.padding(40, 40, 40, 40);

var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
categoryAxis.renderer.grid.template.location = 0;
categoryAxis.dataFields.category = "country";
categoryAxis.renderer.minGridDistance = 60;
categoryAxis.renderer.inversed = true;
categoryAxis.renderer.grid.template.disabled = true;

var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
valueAxis.min = 0;
valueAxis.extraMax = 0.1;
//valueAxis.rangeChangeEasing = am4core.ease.linear;
//valueAxis.rangeChangeDuration = 1500;

var series = chart.series.push(new am4charts.ColumnSeries());
series.dataFields.categoryX = "country";
series.dataFields.valueY = "visits";
series.tooltipText = "{valueY.value}"
series.columns.template.strokeOpacity = 0;
series.columns.template.column.cornerRadiusTopRight = 10;
series.columns.template.column.cornerRadiusTopLeft = 10;
//series.interpolationDuration = 1500;
//series.interpolationEasing = am4core.ease.linear;
var labelBullet = series.bullets.push(new am4charts.LabelBullet());
labelBullet.label.verticalCenter = "bottom";
labelBullet.label.dy = -10;
labelBullet.label.text = "{values.valueY.workingValue.formatNumber('#.')}";

chart.zoomOutButton.disabled = true;

// as by default columns of the same series are of the same color, we add adapter which takes colors from chart.colors color set
series.columns.template.adapter.add("fill", function (fill, target) {
 return chart.colors.getIndex(target.dataItem.index);
});



categoryAxis.sortBySeries = series;

}); // end am4core.ready()
</script>



	<!-- Styles -->
	<style>
#chartdiv8 {
	width: 100%;
	height: 500px;
}
</style>

	<!-- Resources -->
	<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

	<!-- Chart code -->
	<script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end



var chart = am4core.create('chartdiv8', am4charts.XYChart)
chart.colors.step = 2;

chart.legend = new am4charts.Legend()
chart.legend.position = 'top'
chart.legend.paddingBottom = 20
chart.legend.labels.template.maxWidth = 95

var xAxis = chart.xAxes.push(new am4charts.CategoryAxis())
xAxis.dataFields.category = 'category'
xAxis.renderer.cellStartLocation = 0.1
xAxis.renderer.cellEndLocation = 0.9
xAxis.renderer.grid.template.location = 0;

var yAxis = chart.yAxes.push(new am4charts.ValueAxis());
yAxis.min = 0;

function createSeries(value, name) {
    var series = chart.series.push(new am4charts.ColumnSeries())
    series.dataFields.valueY = value
    series.dataFields.categoryX = 'category'
    series.name = name

    series.events.on("hidden", arrangeColumns);
    series.events.on("shown", arrangeColumns);

    var bullet = series.bullets.push(new am4charts.LabelBullet())
    bullet.interactionsEnabled = false
    bullet.dy = 30;
    bullet.label.text = '{valueY}'
    bullet.label.fill = am4core.color('#ffffff')

    return series;
}

chart.data = [
    {
        category: '평균 좋아요',
        first: <%=report.getAll_avg_like()%>,
        second: <%=report.getInflu_inde_avg_like()%>
       
    },
    {
        category: '평균 댓글 수',
        first: <%=report.getAll_avg_like_comment()%>,
        second: <%=report.getInflu_inde_avg_comment()%>
    },
    {
        category: '평균 진짜 댓글 수',
        first: <%=report.getAll_real_avg_comment()%>,
        second: <%=report.getInflu_inde_real_avg_comment()%>
    }
]


createSeries('first', '평균');
createSeries('second', '회원');

function arrangeColumns() {

    var series = chart.series.getIndex(0);

    var w = 1 - xAxis.renderer.cellStartLocation - (1 - xAxis.renderer.cellEndLocation);
    if (series.dataItems.length > 1) {
        var x0 = xAxis.getX(series.dataItems.getIndex(0), "categoryX");
        var x1 = xAxis.getX(series.dataItems.getIndex(1), "categoryX");
        var delta = ((x1 - x0) / chart.series.length) * w;
        if (am4core.isNumber(delta)) {
            var middle = chart.series.length / 2;

            var newIndex = 0;
            chart.series.each(function(series) {
                if (!series.isHidden && !series.isHiding) {
                    series.dummyData = newIndex;
                    newIndex++;
                }
                else {
                    series.dummyData = chart.series.indexOf(series);
                }
            })
            var visibleCount = newIndex;
            var newMiddle = visibleCount / 2;

            chart.series.each(function(series) {
                var trueIndex = chart.series.indexOf(series);
                var newIndex = series.dummyData;

                var dx = (newIndex - trueIndex + middle - newMiddle) * delta

                series.animate({ property: "dx", to: dx }, series.interpolationDuration, series.interpolationEasing);
                series.bulletsContainer.animate({ property: "dx", to: dx }, series.interpolationDuration, series.interpolationEasing);
            })
        }
    }
}

}); // end am4core.ready()
</script>