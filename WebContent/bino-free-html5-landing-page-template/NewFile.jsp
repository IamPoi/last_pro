<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Bino html5 free Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">


<link rel="stylesheet" href="assets/css/iconfont.css">
<link rel="stylesheet" href="assets/css/slick/slick.css">
<link rel="stylesheet" href="assets/css/slick/slick-theme.css">
<link rel="stylesheet" href="assets/css/stylesheet.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/jquery.fancybox.css">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->


<!--For Plugins external css-->
<link rel="stylesheet" href="assets/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/style.css">
<!--Theme Responsive css-->
<link rel="stylesheet" href="assets/css/responsive.css" />

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
	<div class='preloader'>
		<div class='loaded'>&nbsp;</div>
	</div>
	<div class="culmn">
	<header id="main_menu" class="header navbar-fixed-top">            
                <div class="main_menu_bg">
                    <div class="container">
                        <div class="row">
                            <div class="nave_menu">
                                <nav class="navbar navbar-default">
                                    <div class="container-fluid">
                                        <!-- Brand and toggle get grouped for better mobile display -->
                                        <div class="navbar-header">
                                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                                <span class="sr-only">Toggle navigation</span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                            </button>
                                            
                                            
                                            <a class="navbar-brand" href="#home">
                                                <img src="assets/images/logo.png"/>
                                            </a>
                                        </div>

                                        <!-- Collect the nav links, forms, and other content for toggling -->



                                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                            <ul class="nav navbar-nav navbar-right">
                                                <li><a href="#home">HOME</a></li>
                                                <li><a href="#history">ABOUT US</a></li>
                                                <li><a href="#pricing">PRICING</a></li>
                                                <li><a href="#team">TEAM</a></li>
                                                <li><a href="#blog">BLOG</a></li>
                                                <li><a href="">My Page</a></li>
                                            </ul>


                                        </div>

                                    </div>
                                </nav>
                            </div>	
                        </div>

                    </div>

                </div>
            </header> <!--End of header -->

	<!-- 검색어 입력부분 -->
	
	<section class = "home">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 text-center ">
				<br><br><br><br><br>
					<h2>"해시태그분석"</h2>
					<br>
					<form>
						<h2>
							<label for="tm_name">#</label> <input type="text"
								placeholder="분석할 해시태그 입력">

						</h2>
						<div class="home_btn">
							<a href="" class="btn btn-lg m_t_10">분석시작</a>
						</div>
					</form>
					<br><br><br><br><br>
				</div>
			</div>
		</div>
	</section>
	<!-- Styles -->
	<style>
#chartdiv {
	width: 100%;
	height: 550px;
	max-width: 100%;
}
</style>

	<!-- Resources -->
	<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/plugins/forceDirected.js"></script>
	<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

	<!-- Chart code -->
	<script>
		am4core.ready(function() {

			// Themes begin
			am4core.useTheme(am4themes_animated);
			// Themes end

			var chart = am4core.create("chartdiv",
					am4plugins_forceDirected.ForceDirectedTree);
			var networkSeries = chart.series
					.push(new am4plugins_forceDirected.ForceDirectedSeries())

			chart.data = [ {
				name : "Core",
				children : [ {
					name : "First",
					children : [ {
						name : "A1",
						value : 100
					}, {
						name : "A2",
						value : 60
					} ]
				}, {
					name : "Second",
					children : [ {
						name : "B1",
						value : 135
					}, {
						name : "B2",
						value : 98
					} ]
				}, {
					name : "Third",
					children : [ {
						name : "C1",
						children : [ {
							name : "EE1",
							value : 130
						}, {
							name : "EE2",
							value : 87
						}, {
							name : "EE3",
							value : 55
						} ]
					}, {
						name : "C2",
						value : 148
					}, {
						name : "C3",
						children : [ {
							name : "CC1",
							value : 53
						}, {
							name : "CC2",
							value : 30
						} ]
					}, {
						name : "C4",
						value : 26
					} ]
				}, {
					name : "Fourth",
					children : [ {
						name : "D1",
						value : 415
					}, {
						name : "D2",
						value : 148
					}, {
						name : "D3",
						value : 89
					} ]
				}, {
					name : "Fifth",
					children : [ {
						name : "E1",
						children : [ {
							name : "EE1",
							value : 33
						}, {
							name : "EE2",
							value : 40
						}, {
							name : "EE3",
							value : 89
						} ]
					}, {
						name : "E2",
						value : 148
					} ]
				}

				]
			} ];

			networkSeries.dataFields.value = "value";
			networkSeries.dataFields.name = "name";
			networkSeries.dataFields.children = "children";
			networkSeries.nodes.template.tooltipText = "{name}:{value}";
			networkSeries.nodes.template.fillOpacity = 1;

			networkSeries.nodes.template.label.text = "{name}"
			networkSeries.fontSize = 10;

			networkSeries.links.template.strokeWidth = 1;

			var hoverState = networkSeries.links.template.states
					.create("hover");
			hoverState.properties.strokeWidth = 3;
			hoverState.properties.strokeOpacity = 1;

			networkSeries.nodes.template.events.on("over", function(event) {
				event.target.dataItem.childLinks.each(function(link) {
					link.isHover = true;
				})
				if (event.target.dataItem.parentLink) {
					event.target.dataItem.parentLink.isHover = true;
				}

			})

			networkSeries.nodes.template.events.on("out", function(event) {
				event.target.dataItem.childLinks.each(function(link) {
					link.isHover = false;
				})
				if (event.target.dataItem.parentLink) {
					event.target.dataItem.parentLink.isHover = false;
				}
			})

		}); // end am4core.ready()
	</script>

	<!-- HTML -->
	<div id="chartdiv"></div>
	</div>
	
	<section>
	<div class="container">
			<div class="row">
				<div class="col-sm-12 text-center ">
	<div>
		<div>
		<h3>"연관 태그 top 10"</h3>
		</div>
		<!-- BASIC TABLE -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Basic Table</h3>
								</div>
								<div class="panel-body">
									<table class="table text-center">
										<thead>
											<tr class = "text-center">
												<th>#</th>
												<th>태그명</th>
												<th>사용횟수</th>
												<th>유사도</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>Steve</td>
												<td>Jobs</td>
												<td>@steve</td>
											</tr>
											<tr>
												<td>2</td>
												<td>Simon</td>
												<td>Philips</td>
												<td>@simon</td>
											</tr>
											<tr>
												<td>3</td>
												<td>Jane</td>
												<td>Doe</td>
												<td>@jane</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- END BASIC TABLE -->
	</div></div></div></div>
	</section>
	
	
	<!-- START SCROLL TO TOP  -->

        <div class="scrollup">
            <a href="#"><i class="fa fa-chevron-up"></i></a>
        </div>

        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>

        <script src="assets/js/jquery.magnific-popup.js"></script>
        <script src="assets/js/jquery.mixitup.min.js"></script>
        <script src="assets/js/jquery.easing.1.3.js"></script>
        <script src="assets/js/jquery.masonry.min.js"></script>

        <!--slick slide js -->
        <script src="assets/css/slick/slick.js"></script>
        <script src="assets/css/slick/slick.min.js"></script>


        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
	
</body>
</html>