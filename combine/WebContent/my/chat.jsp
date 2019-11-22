<!DOCTYPE html>
<html lang="en">
	
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="This is social network html5 template available in themeforest......" />
		<meta name="keywords" content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
		<meta name="robots" content="index, follow" />
		<title>News Feed | Check what your friends are doing</title>
		
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="my.js"></script>
  
  
    <!-- Stylesheets
    ================================================= -->
		<link rel="stylesheet" href="../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../css/style.css" />
    <link rel="stylesheet" href="../css/ionicons.min.css" />
    <link rel="stylesheet" href="../css/font-awesome.min.css" />
    <link href="../css/emoji.css" rel="stylesheet">
    
    <!--Favicon-->
    <link rel="shortcut icon" type="image/png" href="../imagesfav.png"/>
	</head>
  <body>
<%HttpSession hs=request.getSession(); %>
    <!-- Header
    ================================================= -->
		<jsp:include page="header.jsp"></jsp:include>
    <!--Header End-->

    <div id="page-contents">
    	<div class="container">
    		<div class="row">

          <!-- Newsfeed Common Side Bar Left
          ================================================= -->
    			<jsp:include page="leftbar.jsp"></jsp:include>
    		<div class="col-md-7">
  		<!-- Post Create Box
              ================================================= -->
             	 <jsp:include page="postcreatebox.jsp"></jsp:include>
          <!-- Post Create Box End-->

				<jsp:include page="chatinclude.jsp" ></jsp:include>
          

          </div>

          <!-- Newsfeed Common Side Bar Right
          ================================================= -->
    			<jsp:include page="rightbar.jsp"></jsp:include>
    		</div>
    	</div>
    </div>

    <!-- Footer
    ================================================= -->
    <jsp:include page="footerfb.jsp"></jsp:include>
    
    <!--preloader-->
    <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div>
    
    <!-- Scripts
    ================================================= -->
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCTMXfmDn0VlqWIyoOxK8997L-amWbUPiQ&amp;callback=initMap"></script>
    <script src="js/../../js/-3.1.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.sticky-kit.min.js"></script>
    <script src="../js/jquery.scrollbar.min.js"></script>
    <script src="../js/script.js"></script>
  </body>

<!-- Mirrored from thunder-team.com/friend-finder/newsfeed.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 23 Feb 2017 06:23:36 GMT -->
</html>
