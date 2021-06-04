<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en" class = "korean fullscreen-bg">

<head>
   <title>마켓어스 | MARKETUS</title>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
   <!-- VENDOR CSS -->
   <link rel="stylesheet" href="assets/css/bootstrap.min.css">
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
   <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">

<style type="text/css">
.korean{
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
</head>


<body>
   <!-- WRAPPER -->
   <div id="wrapper">
      <div class = "korean vertical-align-wrap">
         <div class = "korean vertical-align-middle">
            <div class = "korean auth-box" style = "width : 500px">
               <div class = "korean left" style = "width : 100%">
                  <div class = "korean content">
                     <div class = "korean header">
                        <div class = "korean logo text-center"><img src="images/logo.jpg" alt="Klorofil Logo" style = "width : 200px;"></div>
                        <p class = "korean lead" style = "display : none">Login to your account</p>
                        <br><br>
                     </div>
                     <% 	String name = request.getParameter("value"); 
                     
                         	System.out.println("페이지 로그인 화면 name 확인 : " + name);
                         	
                     %>
                     
                     <% if(name.equals("inf")){ %>
                     <form method="post" class = "korean form-auth-small" action="../LoginService?value=inf">
                     
                     <%}else if(name.equals("adver")){ %>
                     <form method="post" class = "korean form-auth-small" action="../LoginService?value=adver">
                     <%} %>
                        <div class = "korean form-group">
                           <label for="signin-email" class = "korean control-label sr-only">Email</label>
                           <input type="text" class = "korean form-control" name = "id" placeholder="Email">
                        </div>
                        <div class = "korean form-group">
                           <label for="signin-password" class = "korean control-label sr-only">Password</label>
                           <input type="password" class = "korean form-control" name = "pw" placeholder="Password">
                        </div>
                        <div class = "korean form-group clearfix" style = "display : none">
                           <label class = "korean fancy-checkbox element-left">
                              <input type="checkbox">
                              <span>Remember me</span>
                           </label>
                        </div>
                        <button type="submit" class = "korean btn btn-primary btn-lg btn-block">LOGIN</button>
                        <div class = "korean bottom">
                           <span class = "korean helper-text"><i class = "korean fa fa"></i> <a href="#">아직 회원이 아니신가요??</a></span>
                        </div>
                     </form>
                     <% %>
                  </div>
               </div>
               <div class = "korean right" style = "display : none">
                  <div class = "korean overlay"></div>
                  <div class = "korean content text">
                     <h1 class = "korean heading">Free Bootstrap dashboard template</h1>
                     <p>by The Develovers</p>
                  </div>
               </div>
               <div class = "korean clearfix"></div>
            </div>
         </div>
      </div>
   </div>
   <!-- END WRAPPER -->
</body>

</html>