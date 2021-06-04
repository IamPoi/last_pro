<!-- 최신본 -->
<%@page import="com.common.Util"%>
<%@page import="com.model.MatchingDTO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.AdvertiserDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@page import="com.model.CampaginDTO" %>
<!doctype html>
<html lang="en">

<!-- 기존의 head 코드 start -->
<!-- <head>
   <title>Profile | Klorofil - Free Bootstrap Dashboard Template</title>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
   VENDOR CSS
   
   <link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
   <link rel="stylesheet" href="assets/vendor/linearicons/style.css">
   MAIN CSS
   <link rel="stylesheet" href="assets/css/main.css">
   FOR DEMO PURPOSES ONLY. You should remove this in your project
   <link rel="stylesheet" href="assets/css/demo.css">
   GOOGLE FONTS
   <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
   ICONS
   <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
   <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
   <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
   <link rel="stylesheet" href="assets/css/style.css">
</head> -->
<!-- 기존의 head코드 end -->


<!-- 새로운 head + style 코드 start  -->
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
   href="assets/img/apple-icon.png">fz
<link rel="icon" type="image/png" sizes="96x96"
   href="assets/img/favicon.png">
   <link rel="stylesheet" href="assets/css/style.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
</head>


<style type="text/css">

.korean{
	font-family: 'Noto Sans KR', sans-serif;
}
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

.show-modal {
   opacity: 1;
   visibility: visible;
   transform: scale(1.0);
   transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s;
}
</style>
<!-- 새로운 head + style 코드 end -->

<body>
<%
AdvertiserDTO info = (AdvertiserDTO) session.getAttribute("info");

ArrayList<CampaginDTO> campignList = (ArrayList<CampaginDTO>)session.getAttribute("adverCampaignSelect");

System.out.println("campignList ::" +campignList.get(0).getAd_estimate());
session.removeAttribute("matchingadv12345");
%>

<%
String servletPath = request.getServletPath();
String ImgDirRealPath = request.getRealPath(servletPath.substring(0, servletPath.lastIndexOf("/") + 1) + "images");

System.out.println(ImgDirRealPath);

File ImgDirObj = new File(ImgDirRealPath);
//현재 jsp파일이 있는 폴더의 images폴더의 이미지 목록 가져오기
List<File> imgFileList = Util.getImgFileList(ImgDirObj);
System.out.println("imgFileList : " + imgFileList.size());
%>

   <!-- WRAPPER -->
   <div id="wrapper">
      <!-- NAVBAR -->
      <header id="main_menu" class = "korean header navbar-fixed-top">
         <div class = "korean main_menu_bg" style = "background-color:white;">
            <div class = "korean container" style = "width : 100%">
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


                              <a class = "korean navbar-brand" href="../bino-free-html5-landing-page-template/firstPage.jsp"> <img
                                 src="images/logo_high_re.png" style = "width:140px; height:50px; margin-left: 30px; ">
                              </a>
                           </div>

                           <!-- Collect the nav links, forms, and other content for toggling -->

                           <div class = "korean collapse navbar-collapse"
                              id="bs-example-navbar-collapse-1">

                             <ul class = "korean nav navbar-nav navbar-right">
                                 <li><a href="../bino-free-html5-landing-page-template/company_main2.jsp" >HOME</a></li><!-- 세션값받아와서 influencer/companymain으로 이동 -->
                                            <li><a href="../bino-free-html5-landing-page-template/hashtag.jsp">HASHTAG LAB</a></li>
                                            <li><a href="../bino-free-html5-landing-page-template/pay.jsp">INQUIRUY</a></li>
                                            <li><a href="../InfluencerMypage?name=adver" >MY PAGE</a></li><!-- 세션값받아와서 mypage/mypage_ad으로 이동 -->
                                             <%if(info == null){ %>
                                 <li><a href="../klorofil-free-dashboard-template-v2.0/page-login.jsp?value=inf">LOGIN</a></li>
                                 <%} else{ %>
                                 <li><a href="../LogoutService">LOGOUT</a></li>
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
      <!-- END NAVBAR -->
      
      
      <!-- LEFT SIDEBAR -->
      <div id="sidebar-nav" class = "korean sidebar" style = 'display : none'>
         <div class = "korean sidebar-scroll">
            <nav>
               <ul class = "korean nav">
                  <li><a href="index.html" class = "korean "><i class = "korean lnr lnr-home"></i> <span>Dashboard</span></a></li>
                  <li><a href="elements.html" class = "korean "><i class = "korean lnr lnr-code"></i> <span>Elements</span></a></li>
                  <li><a href="charts.html" class = "korean "><i class = "korean lnr lnr-chart-bars"></i> <span>Charts</span></a></li>
                  <li><a href="panels.html" class = "korean "><i class = "korean lnr lnr-cog"></i> <span>Panels</span></a></li>
                  <li><a href="notifications.html" class = "korean "><i class = "korean lnr lnr-alarm"></i> <span>Notifications</span></a></li>
                  <li>
                     <a href="#subPages" data-toggle="collapse" class = "korean active"><i class = "korean lnr lnr-file-empty"></i> <span>Pages</span> <i class = "korean icon-submenu lnr lnr-chevron-left"></i></a>
                     <div id="subPages" class = "korean collapse in">
                        <ul class = "korean nav">
                           <li><a href="page-profile.html" class = "korean active">Profile</a></li>
                           <li><a href="page-login.html" class = "korean ">Login</a></li>
                           <li><a href="page-lockscreen.html" class = "korean ">Lockscreen</a></li>
                        </ul>
                     </div>
                  </li>
                  <li><a href="tables.html" class = "korean "><i class = "korean lnr lnr-dice"></i> <span>Tables</span></a></li>
                  <li><a href="typography.html" class = "korean "><i class = "korean lnr lnr-text-format"></i> <span>Typography</span></a></li>
                  <li><a href="icons.html" class = "korean "><i class = "korean lnr lnr-linearicons"></i> <span>Icons</span></a></li>
               </ul>
            </nav>
         </div>
      </div>
      <!-- END LEFT SIDEBAR -->
      <!-- MAIN -->
      <div class = "korean main" style = "width : 100%">
         <!-- MAIN CONTENT -->
         
<%
   AdvertiserDTO img = (AdvertiserDTO) session.getAttribute("adverMypage");
   System.out.println("인포값 : "+info);
   System.out.println("인포값1 : "+img);
   ArrayList<MatchingDTO> qList = (ArrayList<MatchingDTO>) session.getAttribute("adverMypageMatching");
   System.out.println("인포값2 : "+qList);

   System.out.println("info.getInflu_instaAddr() : " + img.getAdver_mbr());
   System.out.println("qList.size() : " + qList.size());
   
 
   
   %>         
         
         <%
         String name = info.getName();
         String phone = info.getPhone();
         String mail = info.getMail();               
         %>
         <div class = "korean main-content">
            <div class = "korean container-fluid">
               <div class = "korean panel panel-profile">
                  <div class = "korean clearfix">
                     <!-- LEFT COLUMN -->
                     <div class = "korean profile-left" style="text-align: left;">
                        <!-- PROFILE HEADER -->
                        <div class = "korean profile-header">
                           <div class = "korean overlay"></div>
                           <div class = "korean profile-main" style = "background-image: url('assets/img/profile-bg.jpg');">
                           <img src="assets/img/<%="innisfree"%>.png" class = "korean img" alt="Avatar" style  = "width : 220px; height : 160px;">
                              <!--  <img src="assets/img/<%=info.getName() %>.png" class = "korean img" alt="Avatar" >-->
                              <h3 class = "korean name" style = "color: black"><%=name %></h3>
                              <span class = "korean online-status status-available"></span>
                           </div>
                           <div class = "korean profile-stat" style = "display : none">
                              <div class = "korean row">
                                 <div class = "korean col-md-4 stat-item">
                                    45 <span>게시글</span>
                                 </div>
                                 <div class = "korean col-md-4 stat-item">
                                    1500 <span>팔로워</span>
                                 </div>
                                 <div class = "korean col-md-4 stat-item">
                                    300 <span>팔로잉</span>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!-- END PROFILE HEADER -->
                        <!-- PROFILE DETAIL -->
                        <br>
                        <div class = "korean profile-detail">
                           <div class = "korean profile-info">
                              <h4 class = "korean heading">Basic Info</h4>
                              <ul class = "korean list-unstyled list-justify">
                                 <li>핸드폰 <span><%=phone %></span></li>
                                 <li>Email <span><%=mail %></span></li>
                                 
                              </ul>
                           </div>
                           <br>
                           <div class = "korean profile-info">
                              <h4 class = "korean heading">Social</h4>
                              <ul class = "korean list-inline social-icons">
                                 <li><a href="#" class = "korean facebook-bg"><i class = "korean fa fa-facebook"></i></a></li>
                                 <li><a href="#" class = "korean twitter-bg"><i class = "korean fa fa-twitter"></i></a></li>
                                 <li><a href="#" class = "korean google-plus-bg"><i class = "korean fa fa-google-plus"></i></a></li>
                                 <li><a href="#" class = "korean github-bg"><i class = "korean fa fa-github"></i></a></li>
                              </ul>
                           </div>
                           <br><br><br>
                           <div class = "korean profile-info" style = "display : none">
                              <h4 class = "korean heading">About</h4>
                              <p>Interactively fashion excellent information after distinctive outsourcing.</p>
                           </div>
                           <div class = "korean text-center"><a href="#" class = "korean btn btn-lg">정보 수정</a></div>
                        </div>
                        <!-- END PROFILE DETAIL -->
                     </div>
                     <!-- END LEFT COLUMN -->
                     <!-- RIGHT COLUMN -->
                     <!-- START... -->
                     <div class = "korean profile-right">
                     <h4 class = "korean heading">진행중인 캠페인</h4>
                     
                     <%
                                 int k=0;
                                 int j = 4;
                                 for (int i = 0; i < campignList.size(); i++) {
                                    System.out.println("campignList.size() : " + campignList.size());
                                    if (k == 4) {
                                       break;
                                    }else{

                                    if (campignList.get(i).getCampaign_status() == 0 || campignList.get(i).getCampaign_status() == 1) {
                                    	j--;
                                       k++;
                                       System.out.println("getCampaign_status() : " + campignList.get(i).getCampaign_status());
                                 %>
                                 <div class = "korean col-md-3 col-sm-6">
                                    <div class = "korean award-item">
                                       <img src="images/<%=campignList.get(i).getCampaign_Sid()%>.jpg"
                                          alt="Avatar"> <br> <br> <span><a href = ../CampaignMatchingService?ck=adver&&camnum=<%=campignList.get(i).getCampaign_Sid() + "," + campignList.get(i).getCampaign_status()%>><%=campignList.get(i).getCampaign_title()%></a></span>
                                    </div>
                                 </div>
                                 <%
                                 }
                                    }
                                 }
                                 %>
                                 <% 
                                 System.out.print("j : "+j);
                                 for (int z = 0; z < j ; z++){
                                    %>
                                    <div class = "korean col-md-3 col-sm-6">
                                     <div class = "korean award-item" style = "visibility: hidden;">

                                        <img src="images/<%=campignList.get(z).getCampaign_Sid()%>.jpg"
                                           alt="Avatar"> <br> <br> <span><%=campignList.get(z).getCampaign_title()%></span>
                                           
                                         

                                     </div>
                                  </div>
                                    
                                    <%
                                 }
                                 %>
                                 
                     
                     
                     
                     
                        
                  <!--       <div class = "korean awards" style = "display:none">
                           <div class = "korean row">
                              <a href = 'campain.jsp'>
                              <div class = "korean col-md-3 col-sm-6">
                                 <div class = "korean award-item">
                                    <img alt="" src="assets/img/3.48kg.jpg">
                                       <span> </span>
                                    <br><br>
                                    <span>캠페인 1</span>
                                 </div>
                              </div>
                              </a>
                              
                              
                              <a href = 'campain.jsp'>
                              <div class = "korean col-md-3 col-sm-6">
                                 <div class = "korean award-item">
                                    <div class = "korean hexagon">
                                       <span class = "korean lnr lnr-clock award-icon"></span>
                                    </div>
                                    <span>캠페인 2</span>
                                 </div>
                              </div>
                              </a>
                              
                              <a href = 'campain.jsp'>
                              <div class = "korean col-md-3 col-sm-6">
                                 <div class = "korean award-item">
                                    <div class = "korean hexagon">
                                       <span class = "korean lnr lnr-magic-wand award-icon"></span>
                                    </div>
                                    <span>캠페인 3</span>
                                 </div>
                              </div>
                              </a>
                              
                              <a href = 'campain.jsp'>
                              <div class = "korean col-md-3 col-sm-6">
                                 <div class = "korean award-item">
                                    <div class = "korean hexagon">
                                       <span class = "korean lnr lnr-heart award-icon"></span>
                                    </div>
                                    <span>캠페인 4</span>
                                 </div>
                              </div>
                              </a>
                              
                           
                           <br><br>
                           </div>
                           ...End
                           <div class = "korean text-center" style = "display : none"><a href="#" class = "korean btn btn-default">모든 캠페인 보기</a></div>
                        </div> -->
                        <!-- END AWARDS -->
                        <!-- TABBED CONTENT -->
                        <div class = "korean custom-tabs-line tabs-line-bottom left-aligned">
                           <ul class = "korean nav" role="tablist" style = "display : none">
                              <li class = "korean active"><a href="#tab-bottom-left1" role="tab" data-toggle="tab">레포트</a></li>
                              <li><a href="#tab-bottom-left2" role="tab" data-toggle="tab">포인트 내역 <span class = "korean badge">7</span></a></li>
                           </ul>
                        </div>
                        <br><br>
                        <h4 class = "korean heading">이전 캠페인</h4>
                        <!-- AWARDS -->
                        <div class = "korean awards">
                           <div class = "korean row">
                        <%
                                 int k1=0;
                                 for (int i = 0; i < campignList.size(); i++) {
                                    System.out.println("campignList.size() : " + campignList.size());
                                    if (k1 == 4) {
                                       break;
                                    }else{

                                    if (campignList.get(i).getCampaign_status() == 2) {
                                       k1++;
                                       System.out.println("getCampaign_status() : " + campignList.get(i).getCampaign_status());
                                 %>
                                 <div class = "korean col-md-3 col-sm-6">
                                    <div class = "korean award-item">

                                       <img src="images/<%=campignList.get(i).getCampaign_Sid()%>.jpg"
                                          alt="Avatar"> <br> <br> <span><%=campignList.get(i).getCampaign_title()%></span>

                                    </div>
                                 </div>
                                 <%
                                 }
                                    }
                                 }
                                 %>
                           </div>
                           <br><br>
                           <div class = "korean text-center"><button class = "korean btn btn-lg trigger">모든 캠페인 보기</button></div>
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
            <p class = "korean copyright">Shared by <i class = "korean fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
</p>
         </div>
      </footer>
   </div>

         <!-- 팝업 될 레이어 -->
   <div class = "korean modal1" data-spy="scroll">
      <div class = "korean modal-content" style = "width : 50%; height : 70%; overflow: scroll"">
         <span class = "korean close-button">&times;</span>
         <h1 class = "korean title">모든 캠페인</h1>
         <div class = "korean table-responsive">
            
            <br> <br>
            <%
                                 
                                 for (int i = 0; i < campignList.size(); i++) {

                                    
                                    if (campignList.get(i).getCampaign_status() == 2) {
                                       
                                       System.out.println("getMatch_ck() : " + campignList.get(i).getCampaign_Sid());
                                 %>
                                 <div class = "korean col-md-3 col-sm-6">
                                    <div class = "korean award-item">

                                       <img src="images/<%=campignList.get(i).getCampaign_Sid()%>.jpg"
                                          alt="Avatar"> <br> <br> <span><%=campignList.get(i).getCampaign_Sid()%></span>

                                    </div>
                                 </div>
                                 <%
                                 }
                                    
                                 }
                                 %>
         </div>
         
      </div>
   </div>
      
   
   <!-- END WRAPPER -->
   <!-- Javascript -->
      <script src="assets/vendor/jquery/jquery.min.js"></script>
   <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
   <script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
   <script src="assets/scripts/klorofil-common.js"></script>
   <script type="text/javascript">
      var modal = document.querySelector(".modal1");
      var trigger = document.querySelector(".trigger");
      var closeButton = document.querySelector(".close-button");
      var cancelButton = document.querySelector("#cancel");

      //console.log(modal);

      function toggleModal() {
         console.log("ㅎㅇ");
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
   
   
<!--    <script src="assets/vendor/jquery/jquery.min.js"></script>
   <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
   <script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
   <script src="assets/scripts/klorofil-common.js"></script> -->
</body>

</html>