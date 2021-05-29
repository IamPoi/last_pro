<%@page import="com.model.CampaginDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="common.Util"%>
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
   <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
   <!-- VENDOR CSS -->
  <link rel="stylesheet" href="assets/css/style.css">
   <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
   <link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
   <link rel="stylesheet" href="assets/vendor/linearicons/style.css">
   <!-- MAIN CSS -->
   <link rel="stylesheet" href="assets/css/main.css">
   <!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
   <link rel="stylesheet" href="assets/css/demo.css">
   <!-- GOOGLE FONTS -->
   <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
   <!-- ICONS -->
   <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
   <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
   <link rel="stylesheet" href="assets/css/style.css">
   <style type="text/css">
   #sidebar-nav{
      display : none;
   }
   
   .profile-header .profile-main {
    position: relative;
    padding: 0px;
    background-image: none; !important;
    background-color:white; }
   </style>
</head>

<body>
<%

      CampaginDTO info = (CampaginDTO)session.getAttribute("campSelect");
      String campPicture = (String)session.getAttribute("campPicture");
      
      System.out.println("Campinfo.getAd_estimate() : " + info.getAd_estimate());
      
      System.out.println("campPicture : " + campPicture);

   %>


   <!-- WRAPPER -->
   <div id="wrapper">
      <header id="main_menu" class="header navbar-fixed-top" >            
                <div class="main_menu_bg">
                    <div class="container" style = "width:90%">
                        <div class="row" >
                            <div class="nave_menu">
                                <nav class="navbar navbar-default">
                                    <div class="container-fluid" style = "height:75px">
                                        <!-- Brand and toggle get grouped for better mobile display -->
                                        <div class="navbar-header">
                                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                                <span class="sr-only">Toggle navigation</span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                            </button>
                                            
                                            
                                            <a class="navbar-brand" href="klorofil-free-dashboard-template-v2.0/firstPage.jsp">
                                                <img src="images/logo_high_re.png" width = 140px, height = 50px  style = "margin-top:20px;">
                                            </a>
                                        </div>

                                        <!-- Collect the nav links, forms, and other content for toggling -->



                                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                                            <ul class="nav navbar-nav navbar-right">
                                        
                                                <li><a href="">HOME</a></li><!-- 세션값받아와서 influencer/companymain으로 이동 -->
                                                <li><a href="hashtag.jsp">HASGTAG</a></li>
                                                <li><a href="">My Page</a></li><!-- 세션값받아와서 mypage/mypage_ad으로 이동 -->
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
            </header> <!--End of header -->
      <!-- LEFT SIDEBAR -->
      <div id="sidebar-nav" class="sidebar">
         <div class="sidebar-scroll">
            <nav>
               <ul class="nav">
                  <li><a href="index.html" class=""><i class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
                  <li><a href="elements.html" class=""><i class="lnr lnr-code"></i> <span>Elements</span></a></li>
                  <li><a href="charts.html" class=""><i class="lnr lnr-chart-bars"></i> <span>Charts</span></a></li>
                  <li><a href="panels.html" class=""><i class="lnr lnr-cog"></i> <span>Panels</span></a></li>
                  <li><a href="notifications.html" class=""><i class="lnr lnr-alarm"></i> <span>Notifications</span></a></li>
                  <li>
                     <a href="#subPages" data-toggle="collapse" class="active"><i class="lnr lnr-file-empty"></i> <span>Pages</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
                     <div id="subPages" class="collapse in">
                        <ul class="nav">
                           <li><a href="page-profile.html" class="active">Profile</a></li>
                           <li><a href="page-login.html" class="">Login</a></li>
                           <li><a href="page-lockscreen.html" class="">Lockscreen</a></li>
                        </ul>
                     </div>
                  </li>
                  <li><a href="tables.html" class=""><i class="lnr lnr-dice"></i> <span>Tables</span></a></li>
                  <li><a href="typography.html" class=""><i class="lnr lnr-text-format"></i> <span>Typography</span></a></li>
                  <li><a href="icons.html" class=""><i class="lnr lnr-linearicons"></i> <span>Icons</span></a></li>
               </ul>
            </nav>
         </div>
      </div>
      <!-- END LEFT SIDEBAR -->
      <!-- MAIN -->
      <div class="main" style = "width : 100%">
         <!-- MAIN CONTENT -->
         <div class="main-content">
            <div class="container-fluid">
               <div class="panel panel-profile">
                  <div class="clearfix">
                     <!-- LEFT COLUMN -->
                     <div class="profile-left">
                        <!-- PROFILE HEADER -->
                        <div class="profile-header" style = "height:100%;">
                           <div class="overlay"></div>
                           <div class="profile-main" style = "height:90%">
                           
                           <%
                           String campNum = "";
                           for (int i = 0; i < imgFileList.size(); i++) {
                        	   File f = imgFileList.get(i);

                        	   imgName.add(Util.getFileNameNoExt(f.getName()));
                        	   System.out.println("imgName : " + Util.getFileNameNoExt(f.getName()));
                        	 
                        	   if(Util.getFileNameNoExt(f.getName()).equals(campPicture)){
                        		   campNum = String.valueOf(i);                        	   }
                        	   
                        	   System.out.println("campNum : " + campNum);
                        	}
                           
                           %>
                              <img src="images/<%=campNum %>.jpg" alt="Avatar" style = "height:100%; width:100%">
                              <h3 class="name">광고주(브랜드) 이름??</h3>
                              <span class="online-status status-available">Available</span>
                           </div>
                           <div class="profile-stat" style = "height:10%">
                              <div class="row">
                                 <div class="col-md-4 stat-item">
                                    캠페인 유형 <span>무료, 유료</span>
                                 </div>
                                 <div class="col-md-4 stat-item">
                                    신청 가능 인원<span>30명</span>
                                 </div>
                                 <div class="col-md-4 stat-item">
                                    신청한 인원 <span>0명</span>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!-- END PROFILE HEADER -->
                        
                     </div>
                     <!-- END LEFT COLUMN -->
                     <!-- RIGHT COLUMN -->
                     <div class="profile-right">
                        <h4 class="heading">캠페인 이름</h4>
                        <!-- AWARDS -->
                        <div class="awards" style="margin-bottom: 15px;">
                           <div class="row">
                              <div class="col-md-3 col-sm-6">
                                 <div class="award-item">
                                    <div class="hexagon">
                                       <span class="lnr lnr-sun award-icon"></span>
                                    </div>
                                    <span>카테고리</span>
                                 </div>
                              </div>
                              <div class="col-md-3 col-sm-6">
                                 <div class="award-item">
                                    <div class="hexagon">
                                       <span class="lnr lnr-clock award-icon"></span>
                                    </div>
                                    <span>타겟층</span>
                                 </div>
                              </div>
                              <div class="col-md-3 col-sm-6">
                                 <div class="award-item">
                                    <div class="hexagon">
                                       <span class="lnr lnr-magic-wand award-icon"></span>
                                    </div>
                                    <span>견적 비용</span>
                                 </div>
                              </div>
                              <div class="col-md-3 col-sm-6" style = 'display : none'>
                                 <div class="award-item">
                                    <div class="hexagon">
                                       <span class="lnr lnr-heart award-icon"></span>
                                    </div>
                                    <span>Most Loved</span>
                                 </div>
                              </div>
                           </div>
                           <div class="text-center" style = 'display : none'><a href="#" class="btn btn-default">See all awards</a></div>
                        </div>
                        <!-- END AWARDS -->
                        <!-- TABBED CONTENT -->
                        <!-- 이쪽 수정 -->
                        <div class="custom-tabs-line tabs-line-bottom left-aligned">
                           <ul class="nav" role="tablist">
                           <%int a = 0; 
                           if(a == 0){%>
                              <li class="active"><a href="#tab-bottom-left1" role="tab" data-toggle="tab">캠페인 설명</a></li>
                           <%} else{%>
                              <li><a href="#tab-bottom-left2" role="tab" data-toggle="tab">신청 인플푸언서 <span class="badge"></span></a></li>
                              <%} %>
                              
                           </ul>
                        </div>
                        <div class="tab-content">
                           <%if(a == 0){%>
                           <div class="tab-pane fade in active" id="tab-bottom-left1">
                              <ul class="list-unstyled activity-timeline">
                                 <li>
                                    <i class="fa fa-comment activity-icon"></i>
                                    <p>캠페인 설명 <a href="#">?</a> <span class="timestamp">2 minutes ago</span></p>
                                 </li>
                                 <li>
                                    <i class="fa fa-cloud-upload activity-icon"></i>
                                    <p>캠페인 설명 <a href="#">?</a><span class="timestamp">7 hours ago</span></p>
                              </ul>
                              
                              <div class="profile-detail" >
                           <div class="profile-info">
                              <h4 class="heading">광고주 요구사항</h4>
                              <ul class="list-unstyled list-justify">
                                 <li>Birthdate <span>24 Aug, 2016</span></li>
                                 <li>Mobile <span>(124) 823409234</span></li>
                                 <li>Email <span>samuel@mydomain.com</span></li>
                                 <li>Website <span><a href="https://www.themeineed.com">www.themeineed.com</a></span></li>
                              </ul>
                           </div>
                           <div class="profile-info" style = 'display : none'>
                              <h4 class="heading">Social</h4>
                              <ul class="list-inline social-icons">
                                 <li><a href="#" class="facebook-bg"><i class="fa fa-facebook"></i></a></li>
                                 <li><a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a></li>
                                 <li><a href="#" class="google-plus-bg"><i class="fa fa-google-plus"></i></a></li>
                                 <li><a href="#" class="github-bg"><i class="fa fa-github"></i></a></li>
                              </ul>
                           </div>
                           <div class="profile-info" style = 'display : none'>
                              <h4 class="heading">About</h4>
                              <p>Interactively fashion excellent information after distinctive outsourcing.</p>
                           </div>
                           <div class="text-center" style = 'display : none'><a href="#" class="btn btn-primary">Edit Profile</a></div>
                        </div>
                        <div class="text-center"><a href="#" class="btn btn-primary">신청하기</a></div>
                           <%} else{%>
                           
                           <div class="tab-pane fade in active" id="tab-bottom-left2">
                              <div class="table-responsive">
                                 <table class="table project-table">
                                    <thead>
                                       <tr>
                                          <th>랭킹</th>
                                          <th>인플루언서</th>
                                          <th>영향력</th>
                                          <th>Leader</th>
                                          <th> </th>
                                       </tr>
                                    </thead>
                                    <tbody>
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
                                          <td><img src="assets/img/3.48kg.jpg" alt="Avatar" class="avatar img-circle"> <a href="https://www.instagram.com/3.48kg" target= ”_blank”>3.48kg</a></td>
                                          <td><input type = "checkbox"></td>
                                       </tr>
                                       <tr>
                                       <td><span class="label label-success">2</span></td>
                                          <td><a href="#">인플루언서 2</a></td>
                                          <td>
                                             <div>
                                                <div>
                                                   <span>100000</span>
                                                </div>
                                             </div>
                                          </td>
                                          <td><img src="assets/img/user1.png" alt="Avatar" class="avatar img-circle"> <a href="report.jsp">3.48kg</a></td>
                                          <td><input type = "checkbox"></td>
                                       </tr>
                                       <tr>
                                       <td><span class="label label-success">3</span></td>
                                          <td><a href="#">인플루언서 3</a></td>
                                          <td>
                                             <div>
                                                <div>
                                                   <span>50000</span>
                                                </div>
                                             </div>
                                          </td>
                                          <td><img src="assets/img/user1.png" alt="Avatar" class="avatar img-circle"> <a href="#">3.48kg</a></td>
                                          <td><input type = "checkbox"></td>
                                       </tr>
                                       <tr style = 'display : none'>
                                       <td><span class="label label-success">1</span></td>
                                          <td><a href="#">인플루언서 4</a></td>
                                          <td>
                                             <div class="progress">
                                                <div class="progress-bar" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
                                                   <span>75%</span>
                                                </div>
                                             </div>
                                          </td>
                                          <td><img src="assets/img/user2.png" alt="Avatar" class="avatar img-circle"> <a href="#">Michael</a></td>
                                          <td><span class="label label-success">ACTIVE</span></td>
                                       </tr>
                                       <tr style = 'display : none'>
                                          <td><a href="#">인플루언서 5</a></td>
                                          <td>
                                             <div class="progress">
                                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
                                                   <span>100%</span>
                                                </div>
                                             </div>
                                          </td>
                                          <td><img src="assets/img/user1.png" alt="Avatar" class="avatar img-circle" /> <a href="#">Antonius</a></td>
                                          <td><span class="label label-default">CLOSED</span></td>
                                       </tr>
                                       <tr style = 'display : none'>
                                          <td><a href="#">Redesign Landing Page</a></td>
                                          <td>
                                             <div class="progress">
                                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
                                                   <span>100%</span>
                                                </div>
                                             </div>
                                          </td>
                                          <td><img src="assets/img/user5.png" alt="Avatar" class="avatar img-circle" /> <a href="#">Jason</a></td>
                                          <td><span class="label label-default">CLOSED</span></td>
                                       </tr>
                                    </tbody>
                                 </table>
                              </div>
                              <div class="margin-top-30 text-center"><a href="#" class="btn btn-default">매칭하기</a></div>
                           </div>
                           
                              <%}%>
                              
                           
                              
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
      <div class="clearfix"></div>
      <footer>
         <div class="container-fluid">
            <p class="copyright">Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
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