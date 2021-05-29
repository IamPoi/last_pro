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
//ÇöÀç jspÆÄÀÏÀÌ ÀÖ´Â Æú´õÀÇ imagesÆú´õÀÇ ÀÌ¹ÌÁö ¸ñ·Ï °¡Á®¿À±â
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
         <div class="main_menu_bg">
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


                              <a class="navbar-brand" href="#home"> <img
                                 src="assets/images/logo.png" />
                              </a>
                           </div>

                           <!-- Collect the nav links, forms, and other content for toggling -->

                           <div class="collapse navbar-collapse"
                              id="bs-example-navbar-collapse-1">

                              <ul class="nav navbar-nav navbar-right">
                                 <li><a href="#home">HOME</a></li>
                                 <li><a href="#history">ABOUT US</a></li>
                                 <li><a href="#pricing">PRICING</a></li>
                                 <li><a href="#team">TEAM</a></li>
                                 <li><a href="#blog">BLOG</a></li>
                                 <li><a href="../InfluencerMypage?name=adver">My Page</a></li>
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
      <section id="home" class="home">
         <div class="overlay">
            <div class="home_skew_border">
               <div class="container">
                  <div class="row">
                     <div class="col-sm-12 ">
                        <div class="main_home_slider text-center">

                           <%
                           //ÀÌ¹ÌÁö Æú´õÀÇ ³×ÀÓµé 
                           ArrayList<String> imgName = new ArrayList<String>();

                           //   String strImgConFormat = "<div class=\"images\">" + "<span class=\"imgTitle\"> %s </span>"
                           //         + "<img width='200' src=\"%s\"/></div>";

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
                                 //System.out.println("¹Ýº¹È½¼ö : " + ((influencer_allSelect.size() / 3) + 1));
                           %>

                           <div class="single_home_slider">
                              <%
                              //System.out.println("¸¶Áö¸· : " + num);

                              for (int i = s; i < num; i++) {
                                 //System.out.println("numList  : " + numList.get(i));
                              %>
                              <div class="main_home wow fadeInUp col-sm-4"
                                 data-wow-duration="700ms">
                                 <%
                                 // ÀÌ¹ÌÁö ÆÄÀÏ ³Ñ±â±â
                                 String strImgConFormatl = "<div class=\"images\">" + "<span class=\"imgTitle\"> %s </span>"
                                       + "<a href = \"../CampaignService?id=%s\">  <img width='200' height = '400' src=\"%s\"/></a>" + "</div>";

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
               <div class="scrooldown">
                  <a href="#feature"><i class="fa fa-arrow-down"></i></a>
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
                                    ´ç½ÅÀÇ ¸ðµç ¼ø°£ÀÌ ÇÏÀÌ¶óÀÌÆ®°¡ µË´Ï´Ù!
                                </div>
                                <div class="separator"></div>
                            </div><!-- End off Head_title -->

                            <div class="main_blog_content">
                                <div class="col-sm-6">
                                    <div class="single_blog_area textwhite">
                                        <div class="row">
                                            <div class="col-sm-6 no-padding">
                                                <div class="single_blog_img">
                                                    <img src="images/libra._.lim.jpg" alt="" />
                                                </div>
                                            </div>
                                            <div class="col-sm-6 no-padding">
                                                <div class="single_blog_text s_b_left">
                                                    <p>Fashion</p>
                                                    <h3>¿©¼ºÆÐ¼Ç µ¥ÀÏ¸®</h3>
                                                    <div class="separator2"></div>
                                                    <p>¾È³ç ¾È³ç¾È³ç ¾È³ç¾È³ç ¾È³ç¾È³ç ¾È³ç¾È³ç ¾È³ç¾È³ç ¾È³ç¾È³ç ¾È³ç¾È³ç ¾È³ç¾È³ç
                                                     ¾È³ç¾È³ç ¾È³ç¾È³ç ¾È³ç¾È³ç ¾È³ç¾È³ç ¾È³ç¾È³ç ¾È³ç¾È³ç ¾È³ç¾È³ç¾È³ç¾È³ç ¾È³ç¾È³ç 
                                                     ¾È³ç¾È³ç ¾È³ç¾È³ç ¾È³ç¾È³ç </p>

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
                                                <div class="single_blog_text s_b_left">
                                                    <p>Food</p>
                                                    <h3>Çªµå Ä¿ÇÇ/µðÀúÆ®</h3>
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
                                                <div class="single_blog_text s_b_right">
                                                    <p>Beauty</p>
                                                    <h3>ºäÆ¼ È­ÀåÇ° ÀÏ»ó</h3>
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
                                                <div class="single_blog_text s_b_right">
                                                    <p>Fashion</p>
                                                    <h3>³²¼ºÆÐ¼Ç ¶óÀÌÇÁ½ºÅ¸ÀÏ</h3>
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
                           <i class="fa fa-clone"></i>
                        </div>

                        <h4>SLEEK DESIGN</h4>
                        <div class="separator3"></div>
                        <p>Lorem Ipsum is simply dummy text of the printing and
                           typesetting let. Lorem Ipsum has been the industry.</p>
                     </div>
                  </div>

                  <div class="col-sm-3">
                     <div class="single_feature">
                        <div class="single_feature_icon">
                           <i class="fa fa-heart-o"></i>
                        </div>

                        <h4>CLEAN CODE</h4>
                        <div class="separator3"></div>
                        <p>Lorem Ipsum is simply dummy text of the printing and
                           typesetting let. Lorem Ipsum has been the industry.</p>
                     </div>
                  </div>

                  <div class="col-sm-3">
                     <div class="single_feature">
                        <div class="single_feature_icon">
                           <i class="fa fa-lightbulb-o"></i>
                        </div>
                        <h4>CREATIVE IDEAS</h4>
                        <div class="separator3"></div>
                        <p>Lorem Ipsum is simply dummy text of the printing and
                           typesetting let. Lorem Ipsum has been the industry.</p>
                     </div>
                  </div>

                  <div class="col-sm-3">
                     <div class="single_feature">
                        <div class="single_feature_icon">
                           <i class="fa fa-comments-o"></i>
                        </div>

                        <h4>FREE SUPPORT</h4>
                        <div class="separator3"></div>
                        <p>Lorem Ipsum is simply dummy text of the printing and
                           typesetting let. Lorem Ipsum has been the industry.</p>
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
                           <h2>OUR HISTORY</h2>
                        </div>
                        <p>It is a long established fact that a reader will be
                           distracted by the readable content of a page when looking at
                           its layout. The point of using Lorem Ipsum is that it has a
                           more-or-less normal distribution of letters, as opposed to
                           using 'Content here, content here', making it look like
                           readable English. Many desktop publishing packages and web page
                           editors now use Lorem Ipsum as their default model text, and a
                           search for 'lorem ipsum'</p>

                        <a href="" class="btn btn-lg">BROWSE OUR WORK</a>
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


      <section id="trial" class="trial text-center wow fadeIn"
         data-wow-duration="2s" data-wow-dealy="1.5s">
         <div class="main_trial_area">
            <div class="video_overlay sections">
               <div class="container">
                  <div class="row">
                     <div class="main_trial">
                        <div class="col-sm-12">
                           <h2>
                              Let's Get Started Now. <span>It's FREE!</span>
                           </h2>
                           <h4>30 day free trial. Free plan allows up to 2 projects.
                              Pay if you need more. Cancel anytime. No catches.</h4>
                           <a href="" class="btn btn-lg">start free trial</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- End of Trial section -->


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
                                 Made with <i class="fa fa-heart"></i> by <a
                                    href="http://bootstrapthemes.co">Bootstrap Themes</a>2016.
                                 All Rights Reserved
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