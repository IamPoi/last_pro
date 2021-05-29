<%@page import="com.model.influencerInstaDTO"%>
<%@page import="com.model.CampaginDTO"%>
<%@page import="com.model.MemberDTO"%>
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
%>
<!DOCTYPE html>
<html>

<style>
span.imgTitle {
   font-weight: bold;
   display: block;
   margin: 15px;
}
</style>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Bino html5 free Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">

<link rel="stylesheet" href="assets/css/style.css">
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

<!--Theme Responsive css-->
<link rel="stylesheet" href="assets/css/responsive.css" />

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<style>
img {
    max-width: 100%;
    margin:auto;
}
</style>
<body data-spy="scroll" data-target=".navbar-collapse">
   <%
   ArrayList<influencerInstaDTO> influencer_allSelect = (ArrayList<influencerInstaDTO>) session
         .getAttribute("influencer_instaSelect");

   ArrayList<Integer> numList = new ArrayList<Integer>();

   System.out.println("influencer_allSelect :" + influencer_allSelect.size());
   System.out.println("1 :" + influencer_allSelect.get(0).getInflu_id());
   System.out.println("2 :" + influencer_allSelect.get(1).getInflu_id());
   //info.getInflu_gender();
   %>

   <div class='preloader'>
      <div class='loaded'>&nbsp;</div>
   </div>
   <div class="culmn">
      <header id="main_menu" class="header navbar-fixed-top">
         <div class="main_menu_bg" style = "background-color:white;">
            <div class="container">
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


                              <a class="navbar-brand" href="firstPage.jsp"> <img
                                 src="images/logo_high_re.png" style = "width:140px; height:50px;"/>
                              </a>
                           </div>

                           <!-- Collect the nav links, forms, and other content for toggling -->

                           <div class="collapse navbar-collapse"
                              id="bs-example-navbar-collapse-1">

                             <ul class="nav navbar-nav navbar-right">
                                 <li><a href="" >HOME</a></li><!-- 세션값받아와서 influencer/companymain으로 이동 -->
                                            <li><a href="hashtag.jsp">HASHTAG</a></li>
                                            <li><a href="pay.jsp">PAY</a></li>
                                            <li><a href="../InfluencerMypage?name=adver" >My Page</a></li><!-- 세션값받아와서 mypage/mypage_ad으로 이동 -->
                                            <li><a href="../klorofil-free-dashboard-template-v2.0/page-login.jsp">LOGIN</a></li>
                                            
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

      <!--home Section -->
      <section id="home" class="home" style = "background-color:#F0F8FF;">
         <div class="">
            <div class="home_skew_border">
               <div class="container">
                  <div class="row">
                     <div class="col-sm-12 ">
                        <div class="main_home_slider text-center" >

                           <%
                           //이미지 폴더의 네임들 
                           ArrayList<String> imgName = new ArrayList<String>();

                           //   String strImgConFormat = "<div class=\"images\">" + "<span class=\"imgTitle\"> %s </span>"
                           //         + "<img width='300' src=\"%s\"/></div>";

                           for (int i = 0; i < imgFileList.size(); i++) {
                              File f = imgFileList.get(i);

                              imgName.add(Util.getFileNameNoExt(f.getName()));
                              //System.out.println("imgName : " + Util.getFileNameNoExt(f.getName()));

                           }
                           %>

                           <%
                           for (int i = 0; i < imgName.size(); i++) {
                              for (int j = 0; j < influencer_allSelect.size(); j++) {
                                 if (influencer_allSelect.get(j).getInflu_id().equals(imgName.get(i))) {
                              numList.add(i);
                              //System.out.println("influencer_allSelect  : " + i);
                                 }
                              }
                           }

                           if (influencer_allSelect != null) {
                              int num = 3;
                              int s = 0;

                              for (int j = 0; j < ((influencer_allSelect.size() / 3) + 1); j++) {
                                 //System.out.println("반복횟수 : " + ((influencer_allSelect.size() / 3) + 1));
                           %>

                           <div class="single_home_slider" style = "margin:auto;">
                              <%
                              //System.out.println("마지막 : " + num);

                              for (int i = s; i < num; i++) {
                                 //System.out.println("numList  : " + numList.get(i));
                              %>
                              <div class="main_home wow fadeInUp col-sm-4"
                                 data-wow-duration="700ms" >
                                 <%
                                 // 이미지 파일 넘기기
                                 String strImgConFormatl = "<div class=\"images\">" + "<span class=\"imgTitle\"> %s </span>"
                                       + "<a href = \"../CampaignService?id=%s\">  <img width='300' height = '400' src=\"%s\"/></a>" + "</div>";

                                 System.out.println("numList.size(): " + (influencer_allSelect.size() - 1));
                                 File f = imgFileList.get(numList.get(i));//
                                 String title = "";//Util.getFileNameNoExt(f.getName());

                                 System.out.println("I : " + i);
                                 System.out.println("influencer_allSelect.get(i).getInflu_id() : " + influencer_allSelect.get(i).getInflu_id());

                                 String id = influencer_allSelect.get(i).getInflu_id();
                                 String url = Util.getImgSrc(f);

                                 out.print(String.format(strImgConFormatl, title, id, url));
                                 %>
                              </div>
                              <%
                              }

                              if (influencer_allSelect.size() >= 6) {
                              if (num < influencer_allSelect.size()) {
                                 if ((influencer_allSelect.size() - num) >= 3) {
                                    num += 3;
                                 } else {
                                    num = influencer_allSelect.size();
                                 }

                              } else if (num >= influencer_allSelect.size()) {
                                 num = influencer_allSelect.size();
                              }
                              } else {
                              if (influencer_allSelect.size() == 4) {
                                 num += 1;
                              } else if (influencer_allSelect.size() == 5) {
                                 num += 2;
                              } else {
                                 num = 3;
                              }
                              }

                              s = s + 3;
                              %>
                           </div>
                           <%
                           }

                           }
                           %>

                        </div>
                     </div>
                  </div>
               </div>
               <div class="scrooldown col-xs-pull-6" style = "align:center;">
                  <a href="pay.jsp">
                  <i>견적문의</i></a>
               </div>
            </div>
         </div>
      </section>
      <!--End of home section -->



<!-- Blog Section -->
            <section id="blog" class="blog">
                <div class="container-fluid">
                    <div class="row">
                        <div class="main_blog sections">
                            <div class="head_title text-center">
                                <h2>Best Review</h2>
                                <div class="subtitle">
                                    당신의 모든 순간이 하이라이트가 됩니다!
                                </div>
                                <div class="separator"></div>
                            </div><!-- End off Head_title -->

                            <div class="main_blog_content"  style = "padding : 0 5% 0 5%">
                                <div class="col-sm-6">
                                    <div class="single_blog_area textwhite">
                                        <div class="row">
                                            <div class="col-sm-6 no-padding" >
                                                <div class="single_blog_img">
                                                    <img src="images/libra._.lim.jpg" alt="" />
                                                </div>
                                            </div>
                                            <div class="col-sm-6 no-padding">
                                                <div class="single_blog_text s_b_left" style="height :417px;">
                                                    <p>Fashion</p>
                                                    <h3>여성패션 데일리</h3>
                                                    <div class="separator2"></div>
                                                    <p>안녕 안녕안녕 안녕안녕 안녕안녕 안녕안녕 안녕안녕 안녕안녕 안녕안녕 안녕안녕
                                                     안녕안녕 안녕안녕 안녕안녕 안녕안녕 안녕안녕 안녕안녕 안녕안녕안녕안녕 안녕안녕 
                                                     안녕안녕 안녕안녕 안녕안녕 </p>

                                                    <a href="" class="read_more">Read More >></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="single_blog_area textwhite">
                                        <div class="row">
                                            <div class="col-sm-6 no-padding">
                                                <div class="single_blog_img">
                                                    <img src="images/food2.jpg" alt="" />
                                                </div>
                                            </div>
                                            <div class="col-sm-6 no-padding">
                                                <div class="single_blog_text s_b_left" style="height :417px;">
                                                    <p>Food</p>
                                                    <h3>푸드 커피/디저트</h3>
                                                    <div class="separator2"></div>
                                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the indu Stry's 
                                                        standard dummy text ever since the 1500s, an .</p>

                                                    <a href="" class="read_more">Read More >></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="single_blog_area textwhite">
                                        <div class="row">

                                            <div class="col-sm-6 col-sm-push-6 no-padding">
                                                <div class="single_blog_img">
                                                    <img src="images/moduda_2_.jpg" alt="" />
                                                </div>
                                            </div>

                                            <div class="col-sm-6 col-sm-pull-6 no-padding">
                                                <div class="single_blog_text s_b_right" style="height :417px;">
                                                    <p>Beauty</p>
                                                    <h3>뷰티 화장품 일상</h3>
                                                    <div class="separator2"></div>
                                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the indu Stry's 
                                                        standard dummy text ever since the 1500s, an .</p>
                                                    <a href="" class="read_more">Read More >></a>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="single_blog_area textwhite">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-push-6 no-padding">
                                                <div class="single_blog_img">
                                                    <img src="images/taexxhwanss.jpg" alt="" />
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-sm-pull-6 no-padding">
                                                <div class="single_blog_text s_b_right" style="height :417px;">
                                                    <p>Fashion</p>
                                                    <h3>남성패션 라이프스타일</h3>
                                                    <div class="separator2"></div>
                                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the indu Stry's 
                                                        standard dummy text ever since the 1500s, an .</p>

                                                    <a href="" class="read_more">Read More >></a>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    
                                </div>

                            </div>

                        </div>
                    </div>
                </div><!-- End off container -->
            </section><!-- End off Blog Section -->




      <!--feature section -->
      <section id="feature" class="feature sections">
         <div class="container">
            <div class="row">
               <div class="main_feature text-center">

                  <div class="col-sm-3">
                     <div class="single_feature">
                        <div class="single_feature_icon">
                           <i class="fa fa"><img alt="" src="images/as_con.png" style = "width : 45px"></i>
                        </div>

                        <h4>마켓팅 컨설팅</h4>
                        <div class="separator3"></div>
                        <p>설명</p>
                     </div>
                  </div>

                  <div class="col-sm-3">
                     <div class="single_feature">
                        <div class="single_feature_icon">
                           <i class="fa fa"><img alt="" src="images/as_match.png" style = "width : 45px"></i>
                        </div>

                        <h4>인플루언서 모집 및 매칭</h4>
                        <div class="separator3"></div>
                        <p>설명</p>
                     </div>
                  </div>

                  <div class="col-sm-3">
                     <div class="single_feature">
                        <div class="single_feature_icon">
                           <i class="fa fa"><img alt="" src="images/as_cam.png" style = "width : 45px"></i>
                        </div>
                        <h4>캠페인 신청 및 포스팅</h4>
                        <div class="separator3"></div>
                        <p>설명</p>
                     </div>
                  </div>

                  <div class="col-sm-3">
                     <div class="single_feature">
                        <div class="single_feature_icon">
                           <i class="fa fa"><img alt="" src="images/as_report.png" style = "width : 45px"></i>
                        </div>

                        <h4>레포트 제공</h4>
                        <div class="separator3"></div>
                        <p>설명</p>
                     </div>
                  </div>

               </div>
               
            </div>
            
         </div>
         <!--End of container -->
         
      </section>
      
      <!--End of feature Section -->

      <!-- History section -->
      <section id="history" class="history sections">
         <div class="container">
            <div class="row">
               <div class="main_history">
                  <div class="col-sm-6">
                     <div class="single_history_img">
                        <img src="assets/images/img/connect.png" alt="" />
                     </div>
                  </div>

                  <div class="col-sm-6">
                     <div class="single_history_content">
                        <div class="head_title">
                           <h2>About Us</h2>
                        </div>
                        <p style = "font-size: 15px">마케터스는 인플루언서와 광고주를 위한 서비스를 제공하고 있으며, 제공되는 서비스로는 
                        인플루언서 마케팅 분석 솔루션(인플루언서 레포트, 해시태그), 광고주&인플루언서 매칭서비스 구축해 서비스를 전개하고 있습니다. 
                        인플루언서 외 영상 컨텐츠 마케팅과 퍼포먼스 마케팅부분으로 확장해 디지털 전반적인 영역의 광고 대행도 함께 진행하고 있습니다.
                        </p>

                        <a href="" class="btn btn-lg" style = "display : none">BROWSE OUR WORK</a>
                     </div>
                  </div>
               </div>
            </div>
            <!--End of row -->
         </div>
         <!--End of container -->
      </section>
      <!--End of history -->
      <hr />


      <!--Footer section-->
      <section class="footer">
         <div class="container">
            <div class="row">
               <div class="col-sm-12">
                  <div class="main_footer">
                     <div class="row">
                        <div class="col-sm-6 col-xs-12">
                           <div class="flowus">
                              <a href=""><i class="fa fa-facebook"></i></a> <a href=""><i
                                 class="fa fa-twitter"></i></a> <a href=""><i
                                 class="fa fa-google-plus"></i></a> <a href=""><i
                                 class="fa fa-instagram"></i></a> <a href=""><i
                                 class="fa fa-youtube"></i></a> <a href=""><i
                                 class="fa fa-dribbble"></i></a>
                           </div>
                        </div>

                        <div class="col-sm-6 col-xs-12">
                           <div class="copyright_text">
                              <p class=" wow fadeInRight" data-wow-duration="1s">
                                 Made with <i class="fa fa-heart"></i> by MARKETUS 2021.
                              </p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End off footer Section-->











   </div>

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