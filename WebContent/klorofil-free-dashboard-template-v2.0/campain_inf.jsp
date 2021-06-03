<%@page import="com.common.Util"%>
<%@page import="com.model.MatchingDTO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.CampaginDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%
String servletPath = request.getServletPath();
String ImgDirRealPath = request.getRealPath(servletPath.substring(0, servletPath.lastIndexOf("/") + 1) + "images");

System.out.println(ImgDirRealPath);

File ImgDirObj = new File(ImgDirRealPath);
//현재 jsp파일이 있는 폴더의 images폴더의 이미지 목록 가져오기
List<File> imgFileList = Util.getImgFileList(ImgDirObj);
System.out.println("imgFileList : " + imgFileList.size());

//이미지 폴더의 네임들 
ArrayList<String> imgName = new ArrayList<String>();

//   String strImgConFormat = "<div class=\"images\">" + "<span class=\"imgTitle\"> %s </span>"
//         + "<img width='200' src=\"%s\"/></div>";
%>
<!doctype html>
<html lang="en">

<head>
<title>Profile | Klorofil - Free Bootstrap Dashboard Template</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet"
	href="assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="assets/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
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
#sidebar-nav {
	display: none;
}

.profile-header .profile-main {
	position: relative;
	padding: 0px;
	background-image: none; ! important;
	background-color: white;
}

.col-md-4 {
	color: black;
	background-color: white;
	font-weight: bold;
}

.profile-header .profile-stat .stat-item:after {
	content: "";
	display: block;
	position: absolute;
	top: 0;
	right: 0;
	width: 1px;
	height: 100%;
	background-color: black;
}

.profile-header .profile-stat {
	position: relative;
	background-color: white;
}
</style>
</head>

<body>


	<%
	String check = (String) session.getAttribute("check");
	System.out.println("캠페인 페이지 : " + check);
	String category = null;

	CampaginDTO info = (CampaginDTO) session.getAttribute("campSelect"); // 선택한 캠페인 세션정보
	String campPicture = (String) session.getAttribute("campPicture"); // 선택한 캠페인 이름 정보
	MemberDTO info_login = (MemberDTO) session.getAttribute("info"); //로그인한 멤머 세션 정보
	ArrayList<MatchingDTO> applyAllInfluencer = (ArrayList<MatchingDTO>) session.getAttribute("applyAllInfluencer"); // 모든신청 인플ㄹ루언서 세션
	String a = info.getCategory();
	System.out.println("category : " + a);

	if (a.equals("fashion")) {
		category = "shirt";
	} else if (a.equals("food")) {
		category = "dinner";
	} else {
		category = "magic-wand";
	}
	%>

	<!-- WRAPPER -->
	<div id="wrapper">
		<header id="main_menu" class="header navbar-fixed-top">
			<div class="main_menu_bg" style="background-color: white;">
				<div class="container" style="width: 100%">
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


										<a class="navbar-brand"
											href="../bino-free-html5-landing-page-template/firstPage.jsp">
											<img src="images/logo_high_re.png"
											style="width: 140px; height: 50px; margin-left: 30px;">
										</a>
									</div>

									<!-- Collect the nav links, forms, and other content for toggling -->

									<div class="collapse navbar-collapse"
										id="bs-example-navbar-collapse-1">

										<ul class="nav navbar-nav navbar-right">
											<li><a
												href="../bino-free-html5-landing-page-template/influencer_main.jsp">HOME</a></li>
											<!-- 세션값받아와서 influencer/companymain으로 이동 -->
											<li><a
												href="../bino-free-html5-landing-page-template/hashtag.jsp">HASHTAG</a></li>
											<li><a href="../InfluencerMypage?name=inf">My Page</a></li>
											<!-- 세션값받아와서 mypage/mypage_ad으로 이동 -->
											<li><a href="../LogoutService">LOGOUT</a></li>


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
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="index.html" class=""><i class="lnr lnr-home"></i>
								<span>Dashboard</span></a></li>
						<li><a href="elements.html" class=""><i
								class="lnr lnr-code"></i> <span>Elements</span></a></li>
						<li><a href="charts.html" class=""><i
								class="lnr lnr-chart-bars"></i> <span>Charts</span></a></li>
						<li><a href="panels.html" class=""><i class="lnr lnr-cog"></i>
								<span>Panels</span></a></li>
						<li><a href="notifications.html" class=""><i
								class="lnr lnr-alarm"></i> <span>Notifications</span></a></li>
						<li><a href="#subPages" data-toggle="collapse" class="active"><i
								class="lnr lnr-file-empty"></i> <span>Pages</span> <i
								class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse in">
								<ul class="nav">
									<li><a href="page-profile.html" class="active">Profile</a></li>
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
					<div class="panel panel-profile">
						<div class="clearfix">
							<!-- LEFT COLUMN -->

							<div class="profile-left">
								<!-- PROFILE HEADER -->
								<div class="profile-header" style="height: 100%;">
									<div class="overlay"></div>
									<div class="profile-main" style="height: 90%">
										<img src="images/<%=info.getCampaign_Sid()%>.jpg" alt="Avatar"
											style="height: 100%; width: 100%">
										<h3 class="name">광고주(브랜드) 이름??</h3>
										<span class="online-status status-available">Available</span>
									</div>
									<div class="profile-stat" style="height: 10%">
										<div class="row">
											<div class="col-md-4 stat-item">
												캠페인 유형 <span><%=info.getAd_section()%></span>
											</div>
											<div class="col-md-4 stat-item">
												신청 가능 인원<span><%=info.getRcrtmNmbr()%>명</span>
											</div>
											<div class="col-md-4 stat-item">
												신청한 인원 <span><%=info.getApplication_num()%>명</span>
											</div>
										</div>
									</div>
								</div>
								<!-- END PROFILE HEADER -->
							</div>


							<!-- END LEFT COLUMN -->
							<!-- RIGHT COLUMN -->
							<div class="profile-right">
								<h4 class="heading"><%=info.getCampaign_title()%></h4>
								<!-- AWARDS -->
								<div class="awards" style="margin-bottom: 15px;">
									<div class="row">
										<div class="col-md-3 col-sm-6">
											<div class="award-item">
												<div class="hexagon">
													<span class="lnr lnr-<%=category%> award-icon"></span>
												</div>
												<span>카테고리</span>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<div class="award-item">
												<div class="hexagon"
													style="font-size: 35px; font-weight: bold;">
													<%
													String b = info.getRq_gender();
													if (b.equals("male")) {
													%>
													<span>남자</span>
													<%
													} else if (b.equals("fmale")) {
													%>
													<span>여자</span>
													<%
													} else {
													%>
													<span>무관</span>
													<%
													}
													%>
													<span class="lnr  award-icon"></span>
												</div>
												<span>카테고리</span>


											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<div class="award-item">
												<div class="hexagon">
													<%
													int c = info.getAd_estimate();
													%>
													<span style="font-size: 35px; font-weight: bold;"><%=c / 1000%></span><br>

												</div>
												<span>견적 비용</span><br> <span style="font-size: 8px;">단위
													: 천</span>

											</div>
										</div>
										<div class="text-center" style='display: none'>
											<a href="#" class="btn btn-default">See all awards</a>
										</div>
									</div>
									<!-- END AWARDS -->
									<!-- TABBED CONTENT -->
									<!-- 이쪽 수정 -->
									<div class="custom-tabs-line tabs-line-bottom left-aligned">
										<ul class="nav" role="tablist">
											<%
											if (check.equals("inf")) {
											%>
											<li class="active"><a href="#tab-bottom-left1"
												role="tab" data-toggle="tab">캠페인 설명</a></li>
											<%
											} else if (check.equals("adver")) {
											%>
											<li><a href="#tab-bottom-left2" role="tab"
												data-toggle="tab">신청 인플푸언서 <span class="badge"></span></a></li>
											<%
											}
											%>

										</ul>
									</div>
									<div class="tab-content">
										<%
										if (check.equals("inf")) {
										%>
										<div class="tab-pane fade in active" id="tab-bottom-left1">
											<ul class="list-unstyled activity-timeline">
												<li><i class="fa fa-comment activity-icon"></i>
													<p><%=info.getCampaign_title()%>
														<a href="#">?</a> <span class="timestamp"><%=info.getCampaign_sub()%></span>
													</p></li>

											</ul>

											<div class="profile-detail">
												<div class="profile-info">
													<h4 class="heading">광고주 요구사항</h4>
													<ul class="list-unstyled list-justify">
														<li>요구 팔로워 수 <span><%=info.getRq_follower()%></span></li>
														<li>요구 성별 <span><%=info.getRq_gender()%></span></li>
														<li>요구 카테고리<span><%=info.getCategory()%></span></li>
														<li>캠페인 시작 <span><%=info.getCampaign_start()%></span></li>
														<li>캠페인 종료 <span><%=info.getCampaign_end()%></span></li>
													</ul>
												</div>
												<div class="profile-info" style='display: none'>
													<h4 class="heading">Social</h4>
													<ul class="list-inline social-icons">
														<li><a href="#" class="facebook-bg"><i
																class="fa fa-facebook"></i></a></li>
														<li><a href="#" class="twitter-bg"><i
																class="fa fa-twitter"></i></a></li>
														<li><a href="#" class="google-plus-bg"><i
																class="fa fa-google-plus"></i></a></li>
														<li><a href="#" class="github-bg"><i
																class="fa fa-github"></i></a></li>
													</ul>
												</div>
												<div class="profile-info" style='display: none'>
													<h4 class="heading">About</h4>
													<p>Interactively fashion excellent information after
														distinctive outsourcing.</p>
												</div>
												<div class="text-center" style='display: none'>
													<a href="#" class="btn btn-primary">Edit Profile</a>
												</div>
											</div>



											<%
											session.setAttribute("camp_Info", info);
											session.setAttribute("info_login", info_login);

											MatchingDTO matDto = (MatchingDTO) session.getAttribute("matDto"); //로그인한 멤머 세션 정보

											if (matDto == null) {
											%>
											<div class="text-center">



												<a href="../CampaignMatchingService?ck=inf"
													class="btn btn-lg" onclick="alert('신청완료 되었습니다.');">신청하기</a>
											</div>
											<%
											System.out.println("매칭되었음 : ");
											} else {
											%>
											<div class="text-center">
												<a href="../CampaignMatchingService?ck=inf"
													class="btn btn-lg" style="visibility: hidden">신청하기</a>
											</div>

											<%
											}
											}
											%>



											<!-- PROFILE DETAIL -->

											<!-- END PROFILE DETAIL -->
										</div>



										<%
										session.setAttribute("camp_Info", info);
										session.setAttribute("info_login", info_login);
										%>
										
										<%
										
										MatchingDTO session2 = (MatchingDTO) session.getAttribute("matDto"); // 선택한 캠페인 세션정보
											
										System.out.print(session2.getCamp_ck());
											
											
											if(session2.getCamp_ck() == 0){
										%>
									
										<div class="text-center">
											<a href="../CampaignMatchingService?ck=inf"
												class="btn btn-lg">신청하기</a>
										</div>
										
										<%}else{ %>
										<div class="text-center">
											<a href="../CampaignMatchingService?ck=inf"
												class="btn btn-lg" style = "visibility: hidden">신청하기</a>
										</div>
										<%} %>
										<%
										} else if (check.equals("adver")) {
										%>

										<div class="tab-pane fade in active" id="tab-bottom-left2">
											<div class="table-responsive">
												<table class="table project-table">
													<thead>
														<tr>
															<th>랭킹</th>
															<th>인플루언서</th>
															<th>영향력</th>
															<th>Leader</th>
															<th></th>
														</tr>
													</thead>
													<tbody>

														<!-- 신청한 인플루언서 중 선택한 인플루언서만 매칭으로 이용하기 -->
														<form action="" method="post">
															<%
															for (int i = 0; i < 3; i++) {
															%>
															<tr>
																<td><span class="label label-success">1</span></td>
																<td><a href="#">인플루언서 1</a></td>
																<td>
																	<div>
																		<div>
																			<span>150000</span>
																		</div>
																	</div>
																</td>
																<td><img src="assets/img/3.48kg.jpg" alt="Avatar"
																	class="avatar img-circle"> <a
																	href="https://www.instagram.com/3.48kg" target=”_blank”>3.48kg</a></td>
																<td><input type="checkbox" name="ck"></td>
															</tr>
															<%
															}
															%>
															<input type="submit">
														</form>


														<tr style='display: none'>
															<td><span class="label label-success">2</span></td>
															<td><a href="#">인플루언서 2</a></td>
															<td>
																<div>
																	<div>
																		<span>100000</span>
																	</div>
																</div>
															</td>
															<td><img src="assets/img/user1.png" alt="Avatar"
																class="avatar img-circle"> <a href="report.jsp">3.48kg</a></td>
															<td><input type="checkbox"></td>
														</tr>
														<tr style='display: none'>
															<td><span class="label label-success">3</span></td>
															<td><a href="#">인플루언서 3</a></td>
															<td>
																<div>
																	<div>
																		<span>50000</span>
																	</div>
																</div>
															</td>
															<td><img src="assets/img/user1.png" alt="Avatar"
																class="avatar img-circle"> <a href="#">3.48kg</a></td>
															<td><input type="checkbox"></td>
														</tr>
														<tr style='display: none'>
															<td><span class="label label-success">1</span></td>
															<td><a href="#">인플루언서 4</a></td>
															<td>
																<div class="progress">
																	<div class="progress-bar" role="progressbar"
																		aria-valuenow="75" aria-valuemin="0"
																		aria-valuemax="100" style="width: 75%;">
																		<span>75%</span>
																	</div>
																</div>
															</td>
															<td><img src="assets/img/user2.png" alt="Avatar"
																class="avatar img-circle"> <a href="#">Michael</a></td>
															<td><span class="label label-success">ACTIVE</span></td>
														</tr>
														<tr style='display: none'>
															<td><a href="#">인플루언서 5</a></td>
															<td>
																<div class="progress">
																	<div class="progress-bar progress-bar-success"
																		role="progressbar" aria-valuenow="100"
																		aria-valuemin="0" aria-valuemax="100"
																		style="width: 100%;">
																		<span>100%</span>
																	</div>
																</div>
															</td>
															<td><img src="assets/img/user1.png" alt="Avatar"
																class="avatar img-circle" /> <a href="#">Antonius</a></td>
															<td><span class="label label-default">CLOSED</span></td>
														</tr>
														<tr style='display: none'>
															<td><a href="#">Redesign Landing Page</a></td>
															<td>
																<div class="progress">
																	<div class="progress-bar progress-bar-success"
																		role="progressbar" aria-valuenow="100"
																		aria-valuemin="0" aria-valuemax="100"
																		style="width: 100%;">
																		<span>100%</span>
																	</div>
																</div>
															</td>
															<td><img src="assets/img/user5.png" alt="Avatar"
																class="avatar img-circle" /> <a href="#">Jason</a></td>
															<td><span class="label label-default">CLOSED</span></td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="margin-top-30 text-center">
												<a href="#" class="btn btn-default">매칭하기</a>
											</div>
										</div>

										<%
										}
										%>



										<!-- PROFILE DETAIL -->

										<!-- END PROFILE DETAIL -->
									</div>
									<!-- END TABBED CONTENT -->
								</div>
								<!-- END RIGHT COLUMN -->
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
		<script src="assets/scripts/klorofil-common.js"></script>
</body>

</html>