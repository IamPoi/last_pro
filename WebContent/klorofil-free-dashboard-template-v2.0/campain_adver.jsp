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
//���� jsp������ �ִ� ������ images������ �̹��� ��� ��������
List<File> imgFileList = Util.getImgFileList(ImgDirObj);
System.out.println("imgFileList : " + imgFileList.size());



//�̹��� ������ ���ӵ� 
ArrayList<String> imgName = new ArrayList<String>();

//   String strImgConFormat = "<div class=\"images\">" + "<span class=\"imgTitle\"> %s </span>"
//         + "<img width='200' src=\"%s\"/></div>";

%>
<!doctype html>
<html lang="en">

<head>
   <title>���Ͼ | MARKETUS</title>
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
   <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
   <!-- GOOGLE FONTS -->
   <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
   <!-- ICONS -->
   <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
   <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
   <link rel="stylesheet" href="assets/css/style.css">
   <style type="text/css">
   
   .korean{
	font-family: 'Noto Sans KR', sans-serif;
}
   #sidebar-nav{
      display : none;
   }
   
   .profile-header .profile-main {
    position: relative;
    padding: 0px;
    background-image: none; !important;
    background-color:white; }
    
    .col-md-4{
    	color:black;
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
    tr{
		text-align: center;    
    }
    th{
    	text-align: center;
    }
    
   </style>
</head>

<body>
<% 
	String check = (String) session.getAttribute("check");
	System.out.println("ķ���� ������ : " + check);
	ArrayList<MatchingDTO> matList2 = null;
	ArrayList<MatchingDTO> matList = (ArrayList<MatchingDTO>)session.getAttribute("applyAllInfluencer");
	String category = null;
	
	
	CampaginDTO camList = (CampaginDTO)session.getAttribute("camDto");
	String a = camList.getCategory();
	System.out.println("category : "+a);
	
	if(a.equals("fashion")){
		category = "shirt";
	}else if(a.equals("food")){
		category = "dinner";
	}else{
		category = "magic-wand";
	}
	
	

		 //     CampaginDTO info = (CampaginDTO)session.getAttribute("campSelect"); // ������ ķ���� ��������
		 //     String campPicture = (String)session.getAttribute("campPicture"); // ������ ķ���� �̸� ����
		      
		  //    MemberDTO info_login = (MemberDTO) session.getAttribute("info"); //�α����� ��� ���� ����
		     

		 //     ArrayList<MatchingDTO> applyAllInfluencer = (ArrayList<MatchingDTO>)session.getAttribute("applyAllInfluencer"); // ����û ���ä���� ����
		      
	
  //String matching = (String) session.getAttribute("matchingadv12345");
  //String camp_ck = (String) session.getAttribute("camp_ck");
  //System.out.println("camp_ck : " + camp_ck);
	//	 if(camp_ck.equals("0")){
		//	 matching = "other";
 			//System.out.println("matching : ");
		 //}else{
			
  		    // System.out.println("matList2 Ȯ�� : " + matList2.get(0).getInflu_id());
			 //matching = "matching";
		// }

   %>


   <!-- WRAPPER -->
   <div id="wrapper">
      <header id="main_menu" class = "korean korean header navbar-fixed-top">
         <div class = "korean korean main_menu_bg" style = "background-color:white;">
            <div class = "korean korean container" style = "width : 100%">
               <div class = "korean korean row">
                  <div class = "korean korean nave_menu">
                     <nav class = "korean korean navbar navbar-default">
                        <div class = "korean korean container-fluid">
                           <!-- Brand and toggle get grouped for better mobile display -->
                           <div class = "korean korean navbar-header">
                              <button type="button" class = "korean korean navbar-toggle collapsed"
                                 data-toggle="collapse"
                                 data-target="#bs-example-navbar-collapse-1"
                                 aria-expanded="false">
                                 <span class = "korean korean sr-only">Toggle navigation</span> <span
                                    class = "korean korean icon-bar"></span> <span class = "korean korean icon-bar"></span> <span
                                    class = "korean korean icon-bar"></span>
                              </button>


                              <a class = "korean korean navbar-brand" href="../bino-free-html5-landing-page-template/firstPage.jsp"> <img
                                 src="images/logo_high_re.png" style = "width:140px; height:50px; margin-left: 30px; ">
                              </a>
                           </div>

                           <!-- Collect the nav links, forms, and other content for toggling -->

                           <div class = "korean korean collapse navbar-collapse"
                              id="bs-example-navbar-collapse-1">

                             <ul class = "korean korean nav navbar-nav navbar-right">
                                 <li><a href="../bino-free-html5-landing-page-template/company_main2.jsp" >HOME</a></li><!-- ���ǰ��޾ƿͼ� influencer/companymain���� �̵� -->
                                            <li><a href="../bino-free-html5-landing-page-template/hashtag.jsp">HASHTAG LAB</a></li>
                                            <li><a href="../bino-free-html5-landing-page-template/pay.jsp">INQUIRUY</a></li>
                                            <li><a href="../InfluencerMypage?name=adver" >My Page</a></li><!-- ���ǰ��޾ƿͼ� mypage/mypage_ad���� �̵� -->
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
      <!-- END NAVBAR -->
      <!-- LEFT SIDEBAR -->
      <div id="sidebar-nav" class = "korean korean sidebar">
         <div class = "korean korean sidebar-scroll">
            <nav>
               <ul class = "korean korean nav">
                  <li><a href="index.html" class = "korean korean "><i class = "korean korean lnr lnr-home"></i> <span>Dashboard</span></a></li>
                  <li><a href="elements.html" class = "korean korean "><i class = "korean korean lnr lnr-code"></i> <span>Elements</span></a></li>
                  <li><a href="charts.html" class = "korean korean "><i class = "korean korean lnr lnr-chart-bars"></i> <span>Charts</span></a></li>
                  <li><a href="panels.html" class = "korean korean "><i class = "korean korean lnr lnr-cog"></i> <span>Panels</span></a></li>
                  <li><a href="notifications.html" class = "korean korean "><i class = "korean korean lnr lnr-alarm"></i> <span>Notifications</span></a></li>
                  <li>
                     <a href="#subPages" data-toggle="collapse" class = "korean korean active"><i class = "korean korean lnr lnr-file-empty"></i> <span>Pages</span> <i class = "korean korean icon-submenu lnr lnr-chevron-left"></i></a>
                     <div id="subPages" class = "korean korean collapse in">
                        <ul class = "korean korean nav">
                           <li><a href="page-profile.html" class = "korean korean active">Profile</a></li>
                           <li><a href="page-login.html" class = "korean korean ">Login</a></li>
                           <li><a href="page-lockscreen.html" class = "korean korean ">Lockscreen</a></li>
                        </ul>
                     </div>
                  </li>
                  <li><a href="tables.html" class = "korean korean "><i class = "korean korean lnr lnr-dice"></i> <span>Tables</span></a></li>
                  <li><a href="typography.html" class = "korean korean "><i class = "korean korean lnr lnr-text-format"></i> <span>Typography</span></a></li>
                  <li><a href="icons.html" class = "korean korean "><i class = "korean korean lnr lnr-linearicons"></i> <span>Icons</span></a></li>
               </ul>
            </nav>
         </div>
      </div>
      <!-- END LEFT SIDEBAR -->
      <!-- MAIN -->
      <div class = "korean korean main" style = "width : 100%">
         <!-- MAIN CONTENT -->
         <div class = "korean korean main-content">
            <div class = "korean korean container-fluid">
               <div class = "korean korean panel panel-profile">
                  <div class = "korean korean clearfix">
                     <!-- LEFT COLUMN -->
                     <div class = "korean korean profile-left">
                        <!-- PROFILE HEADER -->
                        <div class = "korean korean profile-header" style = "height:100%;">
                           <div class = "korean korean overlay"></div>
                           <div class = "korean korean profile-main" style = "height:90%">
                           

                              <img src="images/<%=camList.getCampaign_Sid()%>.jpg" alt="Avatar" style = "height:100%; width:100%">
                              <h3 class = "korean korean name">������(�귣��) �̸�??</h3>
                              <span class = "korean korean online-status status-available">Available</span>
                           </div>
                           <div class = "korean korean profile-stat" style = "height:10%">
                              <div class = "korean korean row abs" >
                                 <div class = "korean korean col-md-4 stat-item">
                                    ķ���� ���� <span><%=camList.getAd_section()%></span>
                                 </div>
                                 <div class = "korean korean col-md-4 stat-item">
                                    ��û ���� �ο�<span><%=camList.getRcrtmNmbr()%></span>
                                 </div>
                                 <div class = "korean korean col-md-4 stat-item">
                                    ��û�� �ο� <span><%=camList.getApplication_num()%></span>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!-- END PROFILE HEADER -->
                        
                     </div>
                     <!-- END LEFT COLUMN -->
                     <!-- RIGHT COLUMN -->
                     <div class = "korean korean profile-right">
                        <h4 class = "korean korean heading">4</h4>
                        <!-- AWARDS -->
                        <div class = "korean korean awards" style="margin-bottom: 15px;">
                           <div class = "korean korean row">
                              <div class = "korean korean col-md-3 col-sm-6">
                                 <div class = "korean korean award-item">
                                    <div class = "korean korean hexagon">
                                       <span class = "korean korean lnr lnr-<%=category %> award-icon"></span>
                                    </div>
                                    <span>ī�װ�</span>
                                 </div>
                              </div>
                              <div class = "korean korean col-md-3 col-sm-6">
                                 <div class = "korean korean award-item">
                                    <div class = "korean korean hexagon" style="font-size: 35px;font-weight: bold;">
                                    <%String b = camList.getRq_gender();
                                    if(b.equals("male")){%>
                                    <span>����</span>
                                    <%}else if(b.equals("fmale")){%>
                                    <span>����</span>
                                    <%}else{ %>
                                    <span>����</span>
                                    <%}%>
                                       <span class = "korean korean lnr  award-icon"></span>
                                    </div>
                                       <span>ī�װ�</span>
                                    
                                    
                                 </div>
                              </div>
                              <div class = "korean korean col-md-3 col-sm-6">
                                 <div class = "korean korean award-item">
                                    <div class = "korean korean hexagon" >
                                    <%int c = camList.getAd_estimate();
                                    
                                    %>
                                       <span style="font-size: 35px;font-weight: bold;"><%=c/1000 %></span><br>
                                       
                                    </div>
                                    <span>���� ���</span><br><span style = "font-size: 8px;">���� : õ</span>
                                    
                                 </div>
                              </div>
                              <div class = "korean korean col-md-3 col-sm-6" style = 'display : none'>
                                 <div class = "korean korean award-item">
                                    <div class = "korean korean hexagon">
                                       <span class = "korean korean lnr lnr-heart award-icon"></span>
                                    </div>
                                    <span>Most Loved</span>
                                 </div>
                              </div>
                           </div>
                           <div class = "korean korean text-center" style = 'display : none'><a href="#" class = "korean korean btn btn-lg">See all awards</a></div>
                        </div>
                        <!-- END AWARDS -->
                        <!-- TABBED CONTENT -->
                        <!-- ���� ���� -->
                        <div class = "korean korean custom-tabs-line tabs-line-bottom left-aligned">
                           <ul class = "korean korean nav" role="tablist">
                   			 <% 
                           if(check.equals("inf")){%>
                              <li class = "korean korean active"><a href="#tab-bottom-left1" role="tab" data-toggle="tab">ķ���� ����</a></li>
                           <%} else if(check.equals("adver")){
                           		if(camList.getCampaign_status() == 1){ //�����Ϸ�
                           		
                        
                           			%>
                           			 <li><a href="#tab-bottom-left2" role="tab" data-toggle="tab" style ="font-weight: bold;">��Ī ���÷�� <span class = "korean korean badge"></span></a></li>
                             		
                           			<%}else{
                                 			System.out.println("matching����/��û���÷��");
                           				%>
                              <li><a href="#tab-bottom-left2" role="tab" data-toggle="tab" style ="font-weight: bold;">��û ���÷�� <span class = "korean korean badge"></span></a></li>
                           			<%
                           		}
                           		
                           }
                           %>
                              
                           </ul>
                        </div>
                        <div class = "korean korean tab-content">
                           <%if(check.equals("inf")){%>
                           <div class = "korean korean tab-pane fade in active" id="tab-bottom-left1">
                              <ul class = "korean korean list-unstyled activity-timeline">
                                 <li>
                                    <i class = "korean korean fa fa-comment activity-icon"></i>
                                    <p>4<a href="#">?</a> 
                                    <span class = "korean korean timestamp">4</span></p>
                                 </li>

                              </ul>
                              
                              <div class = "korean korean profile-detail" >
                           <div class = "korean korean profile-info">
                              <h4 class = "korean korean heading">������ �䱸����</h4>
                              <ul class = "korean korean list-unstyled list-justify">
                                 <li>�䱸 �ȷο� �� <span>4</span></li>
                                 <li>�䱸 ���� <span>4</span></li>
                                 <li>�䱸 ī�װ�<span>4</span></li>
                                 <li>ķ���� ���� <span>4</span></li>
                                 <li>ķ���� ���� <span>4</span></li>
                              </ul>
                           </div>
                           <div class = "korean korean profile-info" style = 'display : none'>
                              <h4 class = "korean korean heading">Social</h4>
                              <ul class = "korean korean list-inline social-icons">
                                 <li><a href="#" class = "korean korean facebook-bg"><i class = "korean korean fa fa-facebook"></i></a></li>
                                 <li><a href="#" class = "korean korean twitter-bg"><i class = "korean korean fa fa-twitter"></i></a></li>
                                 <li><a href="#" class = "korean korean google-plus-bg"><i class = "korean korean fa fa-google-plus"></i></a></li>
                                 <li><a href="#" class = "korean korean github-bg"><i class = "korean korean fa fa-github"></i></a></li>
                              </ul>
                           </div>
                           <div class = "korean korean profile-info" style = 'display : none'>
                              <h4 class = "korean korean heading">About</h4>
                              <p>Interactively fashion excellent information after distinctive outsourcing.</p>
                           </div>
                           <div class = "korean korean text-center" style = 'display : none'><a href="#" class = "korean korean btn btn-lg">Edit Profile</a></div>
                        </div>
                        
                           
      
					      <%
					      	 // session.setAttribute("camp_Info", info);
							//  session.setAttribute("info_login", info_login);
					      %>
                        <div class = "korean korean text-center"><a href="../CampaignMatchingService?ck=inf" class = "korean korean btn btn-lg">��û�ϱ�</a></div>
                           <%} else if(check.equals("adver")){
                        	   if(camList.getCampaign_status() == 0){
                        		  // 
                            	   System.out.println("matching ���� ��");
                            	   //System.out.println("matList2 ������ : " + matList.size());
                            	   //System.out.println("matList2 ���1 : " + matList.get(0).getInflu_id());
                        	   %>
                        		   
                        		  <div class = "korean korean tab-pane fade in active" id="tab-bottom-left2" style = "text-align: center;">
                              <div class = "korean korean table-responsive">
                                 <table class = "korean korean table project-table">
                                    <thead>
                                       <tr>
                                          <th>��ŷ</th>
                                          <th>���÷��</th>
                                          <th>�����</th>
                                          <th> </th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                    
                                    <!-- ��û�� ���÷�� �� ������ ���÷�𼭸� ��Ī���� �̿��ϱ� -->
                                    
                                    
                                    <%int j = 14; %>
                                    
                                    <form action="../SelectInfluencer" method=post>
                                    <%for(int i = 0; i < matList.size(); i++){ %>
                                       <tr>
                                          <td><span class = "korean korean label label-success"><%=i+1 %></span></td>
                                          <td><a href="../ReportService?info_adver=<%=matList.get(i).getInflu_id()+","+"adver" %>"><%=matList.get(i).getInflu_id() %></a></td>
                                          <td>
                                             <div>
                                                <div>
                                                   <span><%=matList.get(i).getInflu_affect() %></span>
                                                </div>
                                             </div>
                                          </td>
                                          <td style = "display : none"><img src="assets/img/<%=matList.get(i).getInflu_id()  %>.jpg" alt="Avatar" class = "korean korean avatar img-circle" style ="display : none"> <a href="https://www.instagram.com/3.48kg" target= ��_blank��><%=matList.get(i).getInflu_id()  %></a></td>
                                   
                                        
                                        
                                         <%
                                        String n = matList.get(i).getInflu_id() + "," + matList.get(i).getCampaign_Sid();
                                        // System.out.println("matList2.get(i).getInflu_id() + , + matList2.get(i).getCampaign_Sid();");
                                        //System.out.println("matList2.get(i).getInflu_id() + , + matList2.get(i).getCampaign_Sid();" + matList2.get(i).getInflu_id());
                                       /// System.out.println("matList2.get(i).getInflu_id() + , + matList2.get(i).getCampaign_Sid();" + matList2.get(i).getCampaign_Sid());
                                       // System.out.println("matList2.get(i).getInflu_id() + , + matList2.get(i).getCampaign_Sid();" + matList2.get(i).getInflu_id() + "," + matList2.get(i).getCampaign_Sid());
                                        
                                        %>
                                        
                                        
                                        
                                          <td><input type = checkbox name="ck" value=<%=n %>></td>
                                       </tr>
                                       <%
                                       j--;} %>
                                       
                                       
                                       
                                        <%for(int z = 0; z < j; z++){ %>
                                       <tr style = "visibility: hidden;">
                                       <td></td>
                                       <td></td>
                                       <td></td>
                                       <td></td>
                                       </tr>
                                       <%} %>
                                       
                                       
                                       
                                       
                                    </tbody>
                                 </table>
                              </div>
                              <input type="submit" value="��Ī�ϱ�" class = "korean btn btn-lg" style = "text-align: center">
                            </form>
                           </div>
                             
                        		   
                        		   
                        		   
                        	   <%}else{ 
                        	    matList2 = (ArrayList<MatchingDTO>)session.getAttribute("MachingInfluencerSuccess");
                        	    System.out.println("Ȯ�� : " + matList2.get(0).getInflu_id());
                        	    System.out.println("Ȯ��2 : " + matList2.size());
                        	    %>
                        	   
                                    <div class = "korean korean tab-pane fade in active" id="tab-bottom-left2">
                              <div class = "korean korean table-responsive">
                                 <table class = "korean korean table project-table">
                                    <thead>
                                       <tr>
                                          <th>��ŷ</th>
                                          <th>���÷��</th>
                                          <th>�����</th>
                                          <th>Leader</th>
                                          <th> </th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                    
                                    <!-- ��û�� ���÷�� �� ������ ���÷�𼭸� ��Ī���� �̿��ϱ� -->
                                    
                                   
                                  
                                    <%for(int i = 0; i < matList2.size(); i++){ %>
                                       <tr>
                                          <td><span class = "korean korean label label-success"><%=i+1 %></span></td>
                                          <td><a href="#"><%=matList2.get(i).getInflu_id() %></a></td>
                                          <td>
                                             <div>
                                                <div>
                                                   <span><%=matList2.get(i).getInflu_affect() %></span>
                                                </div>
                                             </div>
                                          </td>
                                          <td><img src="assets/img/<%=matList.get(i).getInflu_id() %>.jpg" alt="Avatar" class = "korean korean avatar img-circle"> <a href="https://www.instagram.com/3.48kg" target= ��_blank��>3.48kg</a></td>
                                       </tr>
                                       <%
                                       
                                    } %>
                                       
                                      
                                       
                                    </tbody>
                                 </table>
                              </div>
                              <div class = "korean korean margin-top-30 text-center"><a href="#" class = "korean korean btn btn-lg">��Ī�ϱ�</a></div>
                           </div>
                           
                        		   
                        		   
                        		   
                        	   <%} %>
                           
                          
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
      <div class = "korean korean clearfix"></div>
      <footer>
         <div class = "korean korean container-fluid">
            <p class = "korean korean copyright">Shared by <i class = "korean korean fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
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