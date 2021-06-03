<%@page import="com.common.Util"%>
<%@page import="com.model.ReportDTO"%>
<%@page import="com.model.MatchingDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDTO"%>
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
%>
<!doctype html>
<html lang="en">

<head>
<title>마켓어스 | MARKETUS</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
   content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- VENDOR CSS -->

<!-- 문제 css -->
<link rel="stylesheet"
   href="assets/vendor/bootstrap/css/bootstrap.min.css">
<!-- 문제 css -->


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

</head>


<style type="text/css">
body {
   text-align: center;
   display: block;
   margin: 0 auto;
   font-size: 16px;
   color: #999;
}

h1 {
   font-family: 'Oswald', sans-serif;
   font-size: 30px;
   color: #216182;
}

label {
   display: block;
   margin-top: 20px;
   letter-spacing: 2px;
}

form {
   margin: 0 auto;
   width: 459px;
}

input, textarea {
   width: 439px;
   height: 27px;
   background-color: #efefef;
   border-radius: 6px;
   border: 1px solid #dedede;
   padding: 10px;
   margin-top: 3px;
   font-size: 0.9em;
   color: #3a3a3a;
}

input:focus, textarea:focus {
   border: 1px solid #97d6eb;
}

textarea {
   height: 60px;
   background-color: #efefef;
}

#submit {
   width: 127px;
   height: 48px;
   text-align: center;
   border: none;
   margin-top: 20px;
   cursor: pointer;
}

#submit:hover {
   color: #fff;
   background-color: #216282;
   opacity: 0.9;
}

#cancel {
   width: 127px;
   height: 48px;
   text-align: center;
   border: none;
   margin-top: 20px;
   cursor: pointer;
}

#cancel:hover {
   color: #fff;
   background-color: #216282;
   opacity: 0.9;
}

#cancel2 {
   width: 127px;
   height: 48px;
   text-align: center;
   border: none;
   margin-top: 20px;
   cursor: pointer;
}

#cancel2:hover {
   color: #fff;
   background-color: #216282;
   opacity: 0.9;
}

.modal1 {
   position: fixed;
   left: 0;
   top: 0;
   width: 100%;
   height: 100%;
   background-color: rgba(0, 0, 0, 0.5);
   opacity: 0;
   visibility: hidden;
   transform: scale(1.1);
   transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform
      0.25s;
}

.modal2 {
   position: fixed;
   left: 0;
   top: 0;
   width: 100%;
   height: 100%;
   background-color: rgba(0, 0, 0, 0.5);
   opacity: 0;
   visibility: hidden;
   transform: scale(1.1);
   transition: visibility 0s linear 0.25s, opacity 0.25s 0s, transform
      0.25s;
}

.modal-content {
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
   background-color: white;
   padding: 1rem 1.5rem;
   width: 500px;
   height: 350px;
   border-radius: 0.5rem;
}

.modal2-content {
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
   background-color: white;
   padding: 1rem 1.5rem;
   width: 500px;
   height: 350px;
   border-radius: 0.5rem;
}

.close-button {
   float: right;
   width: 1.5rem;
   line-height: 1.5rem;
   text-align: center;
   cursor: pointer;
   border-radius: 0.25rem;
   background-color: lightgray;
}

.close-button:hover {
   background-color: darkgray;
}

.close-button2 {
   float: right;
   width: 1.5rem;
   line-height: 1.5rem;
   text-align: center;
   cursor: pointer;
   border-radius: 0.25rem;
   background-color: lightgray;
}

.close-button2:hover {
   background-color: darkgray;
}

.show-modal {
   opacity: 1;
   visibility: visible;
   transform: scale(1.0);
   transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
}

.show-modal2 {
   opacity: 1;
   visibility: visible;
   transform: scale(1.0);
   transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
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

<body>

   <%
   MemberDTO info = (MemberDTO) session.getAttribute("influMypage");
   ArrayList<MatchingDTO> qList = (ArrayList<MatchingDTO>) session.getAttribute("influMypageMatching");

   System.out.println("info.getInflu_instaAddr() : " + info.getInflu_instaAddr());
   System.out.println("qList.size() : " + qList.size());

   ReportDTO report = (ReportDTO) session.getAttribute("report");
   System.out.println("ReportDTO.getAd_estimate() : " + report.getAll_avg_like());

   ArrayList<Integer> numList = new ArrayList<Integer>();
   numList.add(report.getAssesment());
   numList.add(report.getCommunication());
   numList.add(report.getInquire());
   %>


   <!-- WRAPPER -->
   <div id="wrapper">
      <!-- NAVBAR -->
      <header id="main_menu" class="header navbar-fixed-top">
         <div class="main_menu_bg">
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
                                 <img src="images/logo_high_re.png" width=140px, height=50px
                                 style="margin-left: 30px;">
                              </a>
                           </div>

                           <!-- Collect the nav links, forms, and other content for toggling -->



                           <div class="collapse navbar-collapse"
                              id="bs-example-navbar-collapse-1">

                              <ul class="nav navbar-nav navbar-right"
                                 style="font-size: 20px;">

                                 <li><a href="../bino-free-html5-landing-page-template/influencer_main.jsp">HOME</a></li>
                                 <!-- 세션값받아와서 influencer/companymain으로 이동 -->
                                 <li><a href="../bino-free-html5-landing-page-template/hashtag.jsp">HASHTAG LAB</a></li>
                                 <li><a href="">MY PAGE</a></li>
                                 <!-- 세션값받아와서 mypage/mypage_ad으로 이동 -->
                                 <%
                                 if (info == null) {
                                 %>
                                 <li><a href="page-login.jsp">LOGIN</a></li>
                                 <%
                                 } else {
                                 %>
                                 <li><a href="../LogoutService">LOGOUT</a></li>
                                 <%
                                 }
                                 %>
                              </ul>


                           </div>
                        </div>
                     </nav>
                  </div>
               </div>

            </div>

         </div>
      </header>
      <!-- LEFT SIDEBAR -->
      <div id="sidebar-nav" class="sidebar" style='display: none'>
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
                        <div class="profile-header">
                           <div class="overlay"></div>
                           <div class="profile-main"
                              style="background-image: url('assets/img/profile-bg02.jpg');">
                              <%
                              String x = "3.48kg";
                              %>
                              <img src="assets/img/<%=x%>.jpg" class="img-circle"
                                 alt="Avatar">
                              <h3 class="name">임보라</h3>
                              <span class="online-status status-available"></span>
                           </div>
                           <div class="profile-stat">
                              <div class="row">
                                 <div class="col-md-4 stat-item">
                                    45 <span>게시글</span>
                                 </div>
                                 <div class="col-md-4 stat-item">
                                    1500 <span>팔로워</span>
                                 </div>
                                 <div class="col-md-4 stat-item">
                                    300 <span>팔로잉</span>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!-- END PROFILE HEADER -->
                        <!-- PROFILE DETAIL -->
                        <div class="profile-detail" style="text-align: left;">
                           <div class="profile-info">
                              <h4 class="heading">Basic Info</h4>
                              <ul class="list-unstyled list-justify">
                                 <li>인스타 주소 <span><%=info.getInflu_instaAddr()%></span></li>
                                 <li>연락처 <span><%=info.getInflu_phone()%></span></li>
                                 <li>나이 <span><%=info.getInflu_age()%></span></li>
                                 <li>계정 타켓층 연령대 <span><%=info.getInflu_targetAge()%></span></li>
                                 <li>계정 타켓층 성별 <span><%=info.getInflu_targetGender()%></span></li>
                                 <li>카테고리 <span><%=info.getInflu_category()%></span></li>
                                 <li>포인트 <span><%=info.getInflu_point()%></span></li>

                              </ul>
                           </div>
                           <div class="profile-info">
                              <h4 class="heading">포인트</h4>
                              <ul class="list-inline social-icons">
                                 <h2>10000 p</h2>
                              </ul>
                           </div>
                           <div class="profile-info" style="display: none">
                              <h4 class="heading">About</h4>
                              <p>Interactively fashion excellent information after
                                 distinctive outsourcing.</p>
                           </div>
                           <div class="text-center" style="display: none">
                              <a href="#" class="btn btn-lg">정보 수정</a>
                           </div>
                        </div>
                        <!-- END PROFILE DETAIL -->
                     </div>
                     <!-- END LEFT COLUMN -->
                     <!-- RIGHT COLUMN -->
                     <div class="profile-right">

                        <!-- TABBED CONTENT -->
                        <div class="custom-tabs-line tabs-line-bottom left-aligned">
                           <ul class="nav" role="tablist">
                              <li class="active"><a href="#tab-bottom-left1" role="tab"
                                 data-toggle="tab">매칭된 캠페인</a></li>
                              <li><a href="#tab-bottom-left2" role="tab"
                                 data-toggle="tab">신청한 캠페인</a></li>

                           </ul>
                        </div>

                        <div class="tab-content">
                           <div class="tab-pane fade in active" id="tab-bottom-left1">
                              <div class="table-responsive">
                                 <div>매칭된 캠페인</div>
                                 <br> <br>
                                 <%
                                 int k = 0;
                                 for (int i = 0; i < qList.size(); i++) {

                                    if (k == 4) {
                                       break;
                                    } else {

                                       if (qList.get(i).getMatch_ck() == 1) {
                                    k++;
                                    System.out.println("getMatch_ck() : " + qList.get(i).getCampaign_Sid());
                                 %>
                                 <div class="col-md-3 col-sm-6">
                                    <div class="award-item">

                                       <img src="images/<%=qList.get(i).getCampaign_Sid()%>.jpg"
                                          alt="Avatar" style="height: 250px;"> <br> <br>
                                       <span><%=qList.get(i).getCampaign_title()%></span>

                                    </div>
                                 </div>
                                 <%
                                 }
                                 }
                                 }
                                 %>
                              </div>

                              <div class="margin-top-30 text-center">
                                 <button class="btn btn-default trigger">모든 매칭캠페인 보기</button>
                              </div>

                           </div>

                           <!-- END WRAPPER -->
                           <!-- Javascript -->
                           <script src="assets/vendor/jquery/jquery.min.js"></script>
                           <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
                           <script
                              src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
                           <script src="assets/scripts/klorofil-common.js"></script>


                           <div class="tab-pane fade" id="tab-bottom-left2">
                              <div class="table-responsive">
                                 <div>신청한 캠페인</div>
                                 <br> <br>


                                 <%
                                 for (int i = 0; i < qList.size(); i++) {
                                    System.out.println("======================");
                                    System.out.println("qList.size() : " + qList.size());
                                    if (i == 4) {
                                       break;
                                    }
                                    if (qList.get(i).getMatch_ck() == 0) {
                                 %>
                                 <div class="col-md-3 col-sm-6">
                                    <div class="award-item">

                                       <img src="images/<%=qList.get(i).getCampaign_Sid()%>.jpg"
                                          alt="Avatar" style="height: 250px;"> <br> <br>
                                       <span><%=qList.get(i).getCampaign_title()%></span>

                                    </div>
                                 </div>
                                 <%
                                 }
                                 }
                                 %>
                              </div>
                              <div class="margin-top-30 text-center">
                                 <button class="btn btn-default trigger2">모든 신청캠페인 보기</button>
                              </div>
                           </div>

                        </div>
                        <!-- END TABBED CONTENT -->


                        <div class="custom-tabs-line tabs-line-bottom left-aligned">

                        </div>
                        <h4 class="heading" style="display:">레포트</h4>
                        <!-- AWARDS -->
                        <div class="awards">
                           <div class="row" id="tab-match">

                              <!-- 댓글 유형 -->

                              <!-- TASKS -->
                              <!-- 원형 -->
                              <div class="panel">
                                 <div class="panel-body">
                                    <div class="left" style="width: 60%">
                                       <div class="panel-heading">
                                          <h3 class="panel-title" align="left">평균</h3>
                                       </div>
                                    </div>
                                    <div class="panel-body">
                                       <!-- HTML -->
                                       <div id="chartdiv8"></div>

                                    </div>
                                 </div>
                                 <!--  end -->
                              </div>

                              <div class="margin-top-30 text-center">

                                 <%
                                 if (info.getPaidMember() == 0) {
                                 %>
                                 <a href="void(0);"
                                    onclick="alert('유료회원만 접근 가능합니다.');return false;"
                                    class="btn btn-default">레포트 자세히보기</a>

                                 <%
                                 } else {
                                 %>
                                 <a href="../ReportService?info_adver=0,0" class="btn btn-default">레포트
                                    자세히보기</a>
                                 <%
                                 }
                                 %>

                              </div>

                              <div class="text-center" style="display: none">
                                 <form name="frm" method="post">
                                    <input type="button" value="전송" onclick="valuesend()">
                              </div>
                              </form>
                           </div>
                           <!-- END AWARDS -->

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





      <!-- 팝업 될 레이어 -->
      <div class="modal1" data-spy="scroll">
         <div class="modal-content"
            style="width: 50%; height: 70%; overflow: scroll">
            <span class="close-button">&times;</span>
            <h1 class="title">모든 매칭 캠페인</h1>
            <div class="table-responsive">
               <!-- 스크롤 구현하기 -->

               <br> <br>
               <%
               for (int i = 0; i < qList.size(); i++) {

                  if (qList.get(i).getMatch_ck() == 1) {

                     System.out.println("getMatch_ck() : " + qList.get(i).getCampaign_Sid());
               %>
               <div class="col-md-3 col-sm-6">
                  <div class="award-item">

                     <img src="images/<%=qList.get(i).getCampaign_Sid()%>.jpg"
                        alt="Avatar" style="height: 250px;"> <br> <br> <span><%=qList.get(i).getCampaign_title()%></span>

                  </div>
               </div>
               <%
               }

               }
               %>
            </div>

         </div>
      </div>







      <!-- 레이어 팝업창-->

      <!-- start -->

      <!-- 팝업 될 레이어 -->
      <div class="modal2" data-spy="scroll">
         <div class="modal-content"
            style="width: 50%; height: 70%; overflow: scroll">
            <span class="close-button2">&times;</span>
            <h1 class="title">모든 신청 캠페인</h1>
            <div class="table-responsive">

               <br> <br>
               <%
               for (int i = 0; i < qList.size(); i++) {

                  if (qList.get(i).getMatch_ck() == 0) {

                     System.out.println("getMatch_ck() : " + qList.get(i).getCampaign_Sid());
               %>
               <div class="col-md-3 col-sm-6">
                  <div class="award-item">

                     <img src="images/<%=qList.get(i).getCampaign_Sid()%>.jpg"
                        alt="Avatar" style="height: 250px;"> <br> <br> <span><%=qList.get(i).getCampaign_title()%></span>

                  </div>
               </div>
               <%
               }

               }
               %>
            </div>

         </div>
      </div>


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
         src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
      <script
         src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
      -->




      <style>
#chartdiv8 {
   width: 100%;
   height: 300px;
}
</style>

      <!-- Resources -->
      <script src="https://cdn.amcharts.com/lib/4/core.js"></script>
      <script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
      <script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>

      <!-- Chart code -->
      <script>
         am4core
               .ready(function() {

                  // Themes begin
                  am4core.useTheme(am4themes_animated);
                  // Themes end

                  var chart = am4core.create('chartdiv8',
                        am4charts.XYChart)
                  chart.colors.step = 2;

                  chart.legend = new am4charts.Legend()
                  chart.legend.position = 'top'
                  chart.legend.paddingBottom = 20
                  chart.legend.labels.template.maxWidth = 95

                  var xAxis = chart.xAxes
                        .push(new am4charts.CategoryAxis())
                  xAxis.dataFields.category = 'category'
                  xAxis.renderer.cellStartLocation = 0.1
                  xAxis.renderer.cellEndLocation = 0.9
                  xAxis.renderer.grid.template.location = 0;

                  var yAxis = chart.yAxes.push(new am4charts.ValueAxis());
                  yAxis.min = 0;

                  function createSeries(value, name) {
                     var series = chart.series
                           .push(new am4charts.ColumnSeries())
                     series.dataFields.valueY = value
                     series.dataFields.categoryX = 'category'
                     series.name = name

                     series.events.on("hidden", arrangeColumns);
                     series.events.on("shown", arrangeColumns);

                     var bullet = series.bullets
                           .push(new am4charts.LabelBullet())
                     bullet.interactionsEnabled = false
                     bullet.dy = 30;
                     bullet.label.text = '{valueY}'
                     bullet.label.fill = am4core.color('#ffffff')

                     return series;
                  }

                  chart.data = [
                        {
                           category : '평균 좋아요',
                           first :
      <%=report.getAll_avg_like()%>
         ,
                           second :
      <%=report.getInflu_inde_avg_like()%>
         },
                        {
                           category : '평균 댓글 수',
                           first :
      <%=report.getAll_avg_like_comment()%>
         ,
                           second :
      <%=report.getInflu_inde_avg_comment()%>
         },
                        {
                           category : '평균 진짜 댓글 수',
                           first :
      <%=report.getAll_real_avg_comment()%>
         ,
                           second :
      <%=report.getInflu_inde_real_avg_comment()%>
         } ]

                  createSeries('first', '평균');
                  createSeries('second', '회원');

                  function arrangeColumns() {

                     var series = chart.series.getIndex(0);

                     var w = 1 - xAxis.renderer.cellStartLocation
                           - (1 - xAxis.renderer.cellEndLocation);
                     if (series.dataItems.length > 1) {
                        var x0 = xAxis.getX(series.dataItems
                              .getIndex(0), "categoryX");
                        var x1 = xAxis.getX(series.dataItems
                              .getIndex(1), "categoryX");
                        var delta = ((x1 - x0) / chart.series.length)
                              * w;
                        if (am4core.isNumber(delta)) {
                           var middle = chart.series.length / 2;

                           var newIndex = 0;
                           chart.series.each(function(series) {
                              if (!series.isHidden
                                    && !series.isHiding) {
                                 series.dummyData = newIndex;
                                 newIndex++;
                              } else {
                                 series.dummyData = chart.series
                                       .indexOf(series);
                              }
                           })
                           var visibleCount = newIndex;
                           var newMiddle = visibleCount / 2;

                           chart.series
                                 .each(function(series) {
                                    var trueIndex = chart.series
                                          .indexOf(series);
                                    var newIndex = series.dummyData;

                                    var dx = (newIndex - trueIndex
                                          + middle - newMiddle)
                                          * delta

                                    series
                                          .animate(
                                                {
                                                   property : "dx",
                                                   to : dx
                                                },
                                                series.interpolationDuration,
                                                series.interpolationEasing);
                                    series.bulletsContainer
                                          .animate(
                                                {
                                                   property : "dx",
                                                   to : dx
                                                },
                                                series.interpolationDuration,
                                                series.interpolationEasing);
                                 })
                        }
                     }
                  }

               }); // end am4core.ready()
      </script>


      <script type="text/javascript">
         var modal = document.querySelector(".modal1");
         var trigger = document.querySelector(".trigger");
         var closeButton = document.querySelector(".close-button");
         var cancelButton = document.querySelector("#cancel");

         //console.log(modal);

         function toggleModal() {
            modal.classList.toggle("show-modal");
         }

         function windowOnClick(event) {
            if (event.target === modal) {
               toggleModal();
            }
         }

         trigger.addEventListener("click", toggleModal);
         closeButton.addEventListener("click", toggleModal);
         cancel.addEventListener("click", toggleModal);
         window.addEventListener("click", windowOnClick);
      </script>









      <script type="text/javascript">
         var modal2 = document.querySelector(".modal2");
         var trigger2 = document.querySelector(".trigger2");
         var closeButton2 = document.querySelector(".close-button2");
         var cancelButton2 = document.querySelector("#cancel2");

         //console.log(modal);

         function toggleModal2() {
            modal2.classList.toggle("show-modal2");
         }

         function windowOnClick2(event) {
            if (event.target === modal2) {
               toggleModal();
            }
         }

         trigger2.addEventListener("click", toggleModal2);
         closeButton2.addEventListener("click", toggleModal2);
         cancel2.addEventListener("click", toggleModal2);
         window2.addEventListener("click", windowOnClick2);
      </script>
</body>

</html>