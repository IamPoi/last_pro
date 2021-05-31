<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Bino html5 free Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">

<link rel="preconnect" href="https://fonts.gstatic.com">
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
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="assets/css/style.css">
<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<style type='text/css'>
html, body {
	background-color: #fff;
	font-size: 14px;
	color: #797979;
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	font-weight: 300;
	overflow: hidden;
}

.korean {
	font-family: 'Do Hyeon', sans-serif;
}

.col-sm-6 {
	width: 50%;
	height: 100%;
}

.img {
	position: relative;
	height: 100vh;
	background-size: cover;
	border: 0;
	padding: 0;
	min-height: 100%;
}

.img-cover {
	position: absolute;
	height: 100%;
	width: 100%;
	background-color: rgba(0, 0, 0, 0.7);
	z-index: 1;
}

.img .content {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 5rem;
	color: white;
	z-index: 13;
	text-align: center;
}

.img:hover {
	z-index: 11;
	transform: scale(1.05); /* 가로2배 새로 1.5배 로 커짐 */
	transition: transform.3s; /* 커지는 시간 */
}
</style>
<body>

	<div class="col-sm-6" style="padding-left: 0px; padding-right: 0px;">
		<div class="img"
			style="width: 100%; height: 100%; background-image: url(assets/images/img/com.jpg);"
			class="inf cover" style="background-size : cover; height: 100vh;">

			<div class="content">
				<img src="assets/images/img/logo_high_re.png"
					style="width: 130px; height: 100px;"> <br>
				<h2 class="korean">광고주 이신가요?</h2>
				<h3 class="korean">
					가장 빠른 인플루언서 매칭 완료<br> 상세한 실시간 성과분석 리포트
				</h3>
				<div class="home_btn text-center">
					<a href="../InfluencerAllSelectService?name=adv"
						class="btn btn-lg m_t_10" style="font-size: 20px">MARKETERS</a>
				</div>
			</div>
			<div class="img-cover" style="z-index: 10"></div>
		</div>
	</div>


	<div class="col-sm-6" style="padding-left: 0px; padding-right: 0px;">
		<div class="img"
			style="width: 100%; height: 100%; background-image: url(assets/images/img/inf.jpg);"
			class="inf cover" style="background-size : cover; height: 100vh;">

			<div class="content">
				<img src="assets/images/img/logo_high_re.png"
					style="width: 130px; height: 100px;"> <br>
				<h2 class="korean">인플루언서 이신가요?</h2>
				<h3 class="korean">
					내가 원하는 브랜드 협찬!<br> 당신을 위한 협찬 매니저
				</h3>
				<div class="home_btn text-center">
					<a href="../InfluencerAllSelectService?name=inf"
						class="btn btn-lg m_t_10" style="font-size: 20px">INFLUENCERS</a>
				</div>
			</div>
			<div class="img-cover"></div>
		</div>

	</div>




	<hr />


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

	<script type="text/javascript">
    $('.adver').click(function(){
         location.href = '../InfluencerAllSelectService?name=adv'
      });
    $('.inf').click(function(){
         location.href = '../InfluencerAllSelectService?name=inf'
      });
   </script>



</body>
</html>