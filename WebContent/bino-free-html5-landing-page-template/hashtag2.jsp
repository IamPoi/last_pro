<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>hashtag_report</title>
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

<!--Theme Responsive css-->
<link rel="stylesheet" href="assets/css/responsive.css" />

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
   <%
   
   //String data = request.getParameter("search");
   String data = (String)session.getAttribute("search");
      
    String[] array = data.split("/");
    String search = array[0];
    String[] hashtag = array[1].split(",");
    String[] score = array[2].split(",");
    
 
 for(int i =0; i < hashtag.length; i ++){
    System.out.print(hashtag[i] + " ");   
 }
 for(int i =0; i < score.length; i ++){
       System.out.print(score[i] + " ");   
    }
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


                              <a class="navbar-brand" href="firstPage.jsp"> <img
                                 src="images/logo_high_re.png" width=140px, height=50px>
                              </a>
                           </div>

                           <!-- Collect the nav links, forms, and other content for toggling -->



                           <div class="collapse navbar-collapse"
                              id="bs-example-navbar-collapse-1">

                              <ul class="nav navbar-nav navbar-right">

                                 <li><a href="">HOME</a></li>
                                 <!-- 세션값받아와서 influencer/companymain으로 이동 -->
                                 <li><a href="hashtag.jsp">HASGTAG</a></li>
                                 <li><a href="">My Page</a></li>
                                 <!-- 세션값받아와서 mypage/mypage_ad으로 이동 -->
                                 <li><a href="page-login.jsp">LOGIN</a></li>
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

      <!-- 검색어 입력부분 -->

      <!-- 주석주석주석
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
                        placeholder="분석할 해시태그 입력" style="width:300px;height:50px;font-size:20px;">

                  </h2>
                  <div class="home_btn">
                     <a href="" class="btn btn-lg m_t_10"style="font-size:15px;">분석시작</a>
                  </div>
               </form>
               <br><br><br><br><br>
            </div>
         </div>
      </div>
   </section>-->
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
         am4core
               .ready(function() {

                  // Themes begin
                  am4core.useTheme(am4themes_animated);
                  // Themes end

                  var chart = am4core.create("chartdiv",
                        am4plugins_forceDirected.ForceDirectedTree);
                  var networkSeries = chart.series
                        .push(new am4plugins_forceDirected.ForceDirectedSeries())

                   // 차트
                  
                  chart.data = [
  {
    name: "<%=search%>",
    children: [
      {
        name: "<%=hashtag[0]%>",
        children: [
          { name: "<%=hashtag[10]%>", value: 100 },
          { name: "<%=hashtag[11]%>", value: 60 }
        ]
      },
      {
        name: "<%=hashtag[1]%>",
        children: [
          { name: "<%=hashtag[12]%>", value: 135 },
          { name: "<%=hashtag[13]%>", value: 98 }
        ]
      },
      {
        name: "<%=hashtag[2]%>",
        children: [
          {
            name: "<%=hashtag[5]%>",
            children: [
              { name: "<%=hashtag[18]%>", value: 130 },
              { name: "<%=hashtag[19]%>", value: 87 },
              { name: "<%=hashtag[20]%>", value: 55 }
            ]
          },
          { name: "<%=hashtag[14]%>", value: 148 },
          {
            name: "<%=hashtag[16]%>", children: [
              { name: "<%=hashtag[16]%>", value: 53 },
              { name: "<%=hashtag[17]%>", value: 30 }
            ]
          },
          { name: "<%=hashtag[15]%>", value: 26 }
        ]
      },
      {
        name: "<%=hashtag[4]%>",
        children: [
          { name: "<%=hashtag[8]%>", value: 415 },
          { name: "<%=hashtag[24]%>", value: 148 },
          { name: "<%=hashtag[25]%>", value: 89 }
        ]
      },
      {
        name: "<%=hashtag[3]%>",
        children: [
          {
            name: "<%=hashtag[7]%>",
            children: [
              { name: "<%=hashtag[22]%>", value: 33 },
              { name: "<%=hashtag[21]%>", value: 40 },
              { name: "<%=hashtag[23]%>", value: 89 }
            ]
          },
          {
            name: "<%=hashtag[9]%>",
            value: 148
          }
        ]
      }

    ]
  }
];
              

                  networkSeries.dataFields.value = "value";
                  networkSeries.dataFields.name = "name";
                  networkSeries.dataFields.children = "children";
                  networkSeries.nodes.template.tooltipText = "{name}";
                  networkSeries.nodes.template.fillOpacity = 1;

                  networkSeries.nodes.template.label.text = "{name}"
                  networkSeries.fontSize = 10;

                  networkSeries.links.template.strokeWidth = 1;

                  var hoverState = networkSeries.links.template.states
                        .create("hover");
                  hoverState.properties.strokeWidth = 3;
                  hoverState.properties.strokeOpacity = 1;

                  networkSeries.nodes.template.events
                        .on(
                              "over",
                              function(event) {
                                 event.target.dataItem.childLinks
                                       .each(function(link) {
                                          link.isHover = true;
                                       })
                                 if (event.target.dataItem.parentLink) {
                                    event.target.dataItem.parentLink.isHover = true;
                                 }

                              })

                  networkSeries.nodes.template.events
                        .on(
                              "out",
                              function(event) {
                                 event.target.dataItem.childLinks
                                       .each(function(link) {
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
            <div class="col-sm-8 col-xs-offset-2 text-center ">
               <div>
                  <div>
                     <h3>"연관 태그 top 10"</h3>
                  </div>
                  <!-- BASIC TABLE -->
                  <div class="panel">
                     <div class="panel-heading">
                        <h3 class="panel-title">Hashtag Table</h3>
                     </div>
                     <div class="panel-body">
                        <table class="table text-center">
                           <thead>
                              <tr>
                                 <td><b>#</b></td>
                                 <td><b>태그명</b></td>
                                 <td><b>유사도</b></td>
                              </tr>
                           </thead>
                           <tbody>
                           <% for(int i = 0; i<hashtag.length;i++) { %>
                              <tr>
                                 <td><%= i+1 %></td>
                                 <td><%= hashtag[i] %></td>
                                 <td><%= score[i] %></td>
                              </tr>
                           <% } %>
                           </tbody>
                        </table>
                     </div>
                  </div>
                  <!-- END BASIC TABLE -->
               </div>
            </div>
         </div>
      </div>
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