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
<title>마켓어스 | MARKETUS</title>
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
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
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

.korean{
	font-family: 'Noto Sans KR', sans-serif;
}
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
   color: #3A3A3A;
   background-color: white;
}

.profile-header .profile-stat .stat-item:after {
   content: "";
   display: block;
   position: absolute;
   top: 0;
   right: 0;
   width: 1px;
   height: 100%;
   background-color: #F8F8F8;
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
      <header id="main_menu" class = "korean header navbar-fixed-top">
         <div class = "korean main_menu_bg" style="background-color: white;">
            <div class = "korean container" style="width: 100%">
               <div class = "korean row">
                  <div class = "korean nave_menu">
                     <nav class = "korean navbar navbar-default">
                        <div class = "korean container-fluid">
                           <!-- Brand and toggle get grouped for better mobile display -->
                           <div class = "korean navbar-header">
                              <button type="button" class = "korean navbar-toggle collapsed"
                                 data-toggle="collapse"
                                 data-target="#bs-example-navbar-collapse-1"
                                 aria-expanded="false">
                                 <span class = "korean sr-only">Toggle navigation</span> <span
                                    class = "korean icon-bar"></span> <span class = "korean icon-bar"></span> <span
                                    class = "korean icon-bar"></span>
                              </button>


                              <a class = "korean navbar-brand"
                                 href="../bino-free-html5-landing-page-template/firstPage.jsp">
                                 <img src="images/logo_high_re.png"
                                 style="width: 140px; height: 50px; margin-left: 30px;">
                              </a>
                           </div>

                           <!-- Collect the nav links, forms, and other content for toggling -->

                           <div class = "korean collapse navbar-collapse"
                              id="bs-example-navbar-collapse-1">

                              <ul class = "korean nav navbar-nav navbar-right">
                                 <li><a
                                    href="../bino-free-html5-landing-page-template/influencer_main.jsp">HOME</a></li>
                                 <!-- 세션값받아와서 influencer/companymain으로 이동 -->
                                 <li><a
                                    href="../bino-free-html5-landing-page-template/hashtag.jsp">HASHTAG LAB</a></li>
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
      <div id="sidebar-nav" class = "korean sidebar">
         <div class = "korean sidebar-scroll">
            <nav>
               <ul class = "korean nav">
                  <li><a href="index.html" class = "korean "><i class = "korean lnr lnr-home"></i>
                        <span>Dashboard</span></a></li>
                  <li><a href="elements.html" class = "korean "><i
                        class = "korean lnr lnr-code"></i> <span>Elements</span></a></li>
                  <li><a href="charts.html" class = "korean "><i
                        class = "korean lnr lnr-chart-bars"></i> <span>Charts</span></a></li>
                  <li><a href="panels.html" class = "korean "><i class = "korean lnr lnr-cog"></i>
                        <span>Panels</span></a></li>
                  <li><a href="notifications.html" class = "korean "><i
                        class = "korean lnr lnr-alarm"></i> <span>Notifications</span></a></li>
                  <li><a href="#subPages" data-toggle="collapse" class = "korean active"><i
                        class = "korean lnr lnr-file-empty"></i> <span>Pages</span> <i
                        class = "korean icon-submenu lnr lnr-chevron-left"></i></a>
                     <div id="subPages" class = "korean collapse in">
                        <ul class = "korean nav">
                           <li><a href="page-profile.html" class = "korean active">Profile</a></li>
                           <li><a href="page-login.html" class = "korean ">Login</a></li>
                           <li><a href="page-lockscreen.html" class = "korean ">Lockscreen</a></li>
                        </ul>
                     </div></li>
                  <li><a href="tables.html" class = "korean "><i
                        class = "korean lnr lnr-dice"></i> <span>Tables</span></a></li>
                  <li><a href="typography.html" class = "korean "><i
                        class = "korean lnr lnr-text-format"></i> <span>Typography</span></a></li>
                  <li><a href="icons.html" class = "korean "><i
                        class = "korean lnr lnr-linearicons"></i> <span>Icons</span></a></li>
               </ul>
            </nav>
         </div>
      </div>
      <!-- END LEFT SIDEBAR -->



      <!-- MAIN -->
      <div class = "korean main" style="width: 100%">
         <!-- MAIN CONTENT -->
         <div class = "korean main-content">
            <div class = "korean container-fluid">
               <div class = "korean panel panel-profile">
                  <div class = "korean clearfix">
                     <!-- LEFT COLUMN -->

                     <div class = "korean profile-left">
                        <!-- PROFILE HEADER -->
                        <div class = "korean profile-header" style="height: 100%;">
                           <div class = "korean overlay"></div>
                           <div class = "korean profile-main" style="height: 90%">
                              <img src="images/<%=info.getCampaign_Sid()%>.jpg" alt="Avatar"
                                 style="height: 100%; width: 85%">
                              <h3 class = "korean name">광고주(브랜드) 이름??</h3>
                              <span class = "korean online-status status-available">Available</span>
                           </div>
                           <div class = "korean profile-stat" style="height: 10%">
                              <div class = "korean row">
                                 <div class = "korean col-md-4 stat-item">
                                    <strong>캠페인 유형</strong> <span><%=info.getAd_section()%></span>
                                 </div>
                                 <div class = "korean col-md-4 stat-item">
                                    <strong>신청 가능 인원</strong><span><%=info.getRcrtmNmbr()%>명</span>
                                 </div>
                                 <div class = "korean col-md-4 stat-item">
                                    <strong>신청한 인원</strong> <span><%=info.getApplication_num()%>명</span>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!-- END PROFILE HEADER -->
                     </div>


                     <!-- END LEFT COLUMN -->
                     <!-- RIGHT COLUMN -->
                     <div class = "korean profile-right">
                        <h4 class = "korean heading"><%=info.getCampaign_title()%></h4>
                        <!-- AWARDS -->
                        <div class = "korean awards" style="margin-bottom: 15px;">
                           <div class = "korean row">
                              <div class = "korean col-md-3 col-sm-6">
                                 <div class = "korean award-item">
                                    <div class = "korean hexagon">
                                       <span class = "korean lnr lnr-<%=category%> award-icon"></span>
                                    </div>
                                    <span>카테고리</span>
                                 </div>
                              </div>
                              <div class = "korean col-md-3 col-sm-6">
                                 <div class = "korean award-item">
                                    <div class = "korean hexagon"
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
                                       <span class = "korean lnr  award-icon"></span>
                                    </div>
                                    <span>인플루언서 성별</span>


                                 </div>
                              </div>
                              <div class = "korean col-md-3 col-sm-6">
                                 <div class = "korean award-item">
                                    <div class = "korean hexagon">
                                       <%
                                       int c = info.getRq_follower();
                                       %>
                                       <span style="font-size: 35px; font-weight: bold;"><%=c%></span><br>

                                    </div>
                                    <span>기본 팔로워 수</span><br>

                                 </div>
                              </div>
                              <div class = "korean text-center" style='display: none'>
                                 <a href="#" class = "korean btn btn-default">See all awards</a>
                              </div>
                           </div>
                           <!-- END AWARDS -->
                           <!-- TABBED CONTENT -->
                           <!-- 이쪽 수정 -->
                           <div class = "korean custom-tabs-line tabs-line-bottom left-aligned">
                              <ul class = "korean nav" role="tablist">
                                 <%
                                 if (check.equals("inf")) {
                                 %>
                                 <li class = "korean active"><a href="#tab-bottom-left1" style="border-bottom:#3A3A3A !important;"
                                    role="tab" data-toggle="tab">캠페인 설명</a></li>
                                 <%
                                 } else if (check.equals("adver")) {
                                 %>
                                 <li><a href="#tab-bottom-left2" role="tab"
                                    data-toggle="tab">신청 인플루언서 <span class = "korean badge"></span></a></li>
                                 <%
                                 }
                                 %>

                              </ul>
                           </div>
                           <div class = "korean tab-content">
                              <%
                              if (check.equals("inf")) {
                              %>
                              <div class = "korean tab-pane fade in active" id="tab-bottom-left1">
                                 <ul class = "korean list-unstyled activity-timeline">
                                    <li><i class = "korean fa fa-comment activity-icon" style="background-color: #3A3A3A !important"></i>
                                       <p><%=info.getCampaign_title()%>
                                          <a href="#">?</a> <span class = "korean timestamp"><%=info.getCampaign_sub()%></span>
                                       </p></li>

                                 </ul>

                                 <div class = "korean profile-detail">
                                    <div class = "korean profile-info">
                                       <h4 class = "korean heading">1차 필터링</h4>
                                       <ul class = "korean list-unstyled list-justify">
                                          <li>요구 팔로워 수 <span><%=info.getRq_follower()%></span></li>
                                          <li>요구 성별 <span><%=info.getRq_gender()%></span></li>
                                          <li>요구 카테고리<span><%=info.getCategory()%></span></li><br>
                                          <h4 class = "korean heading">캠페인 일정</h4>
                                          <li>캠페인 시작 <span><%=info.getCampaign_start()%></span></li>
                                          <li>캠페인 종료 <span><%=info.getCampaign_end()%></span></li>
                                       </ul>
                                    </div>
                                    <div class = "korean profile-info" style='display: none'>
                                       <h4 class = "korean heading">Social</h4>
                                       <ul class = "korean list-inline social-icons">
                                          <li><a href="#" class = "korean facebook-bg"><i
                                                class = "korean fa fa-facebook"></i></a></li>
                                          <li><a href="#" class = "korean twitter-bg"><i
                                                class = "korean fa fa-twitter"></i></a></li>
                                          <li><a href="#" class = "korean google-plus-bg"><i
                                                class = "korean fa fa-google-plus"></i></a></li>
                                          <li><a href="#" class = "korean github-bg"><i
                                                class = "korean fa fa-github"></i></a></li>
                                       </ul>
                                    </div>
                                    <div class = "korean profile-info" style='display: none'>
                                       <h4 class = "korean heading">About</h4>
                                       <p>Interactively fashion excellent information after
                                          distinctive outsourcing.</p>
                                    </div>
                                    <div class = "korean text-center" style='display: none'>
                                       <a href="#" class = "korean btn btn-primary">Edit Profile</a>
                                    </div>
                                 </div>



                                 <%
                                 session.setAttribute("camp_Info", info);
                                 session.setAttribute("info_login", info_login);

                                 MatchingDTO matDto = (MatchingDTO) session.getAttribute("matDto"); //로그인한 멤머 세션 정보

                                 if (matDto == null) {
                                 %>
                                 <div class = "korean text-center">



                                    <a href="../CampaignMatchingService?ck=inf"
                                       class = "korean btn btn-lg" onclick="alert('신청완료 되었습니다.');">신청하기</a>
                                 </div>
                                 <%
                                 System.out.println("매칭되었음 : ");
                                 } else {
                                 %>
                                 <div class = "korean text-center">
                                    <a href="../CampaignMatchingService?ck=inf"
                                       class = "korean btn btn-lg" style="visibility: hidden">신청하기</a>
                                 </div>

                                 <%
                                 }
                                 }
                                 %>



                                 <!-- PROFILE DETAIL -->

                                 <!-- END PROFILE DETAIL -->
                              </div>

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
         <div class = "korean clearfix"></div>
         <footer>
            <div class = "korean container-fluid">
               <p class = "korean copyright">
                  Shared by <i class = "korean fa fa-love"></i><a
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