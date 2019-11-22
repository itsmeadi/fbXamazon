<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="chat.js"></script>

<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="This is social network html5 template available in themeforest......" />
		<meta name="keywords" content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
		<meta name="robots" content="index, follow" />
		<title>My Timeline | This is My Coolest Profile</title>
	
    <!-- Stylesheets
    ================================================= -->
		<link rel="stylesheet" href="../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../css/style.css" />
		<link rel="stylesheet" href="../css/ionicons.min.css" />
    <link rel="stylesheet" href="../css/font-awesome.min.css" />
    <link href="../css/emoji.css" rel="stylesheet">
    
    <style>
    
    .container
    {
    margin-left:70px;
    }
    .timeline-cover .timeline-nav-bar {
    background: azure;
    }
    .container-fluid
    {
    padding-left: 0px !important;
    padding-right: 0px !important;
    }
    .timeline-cover .timeline-nav-bar .profile-menu li a {
    color: black;
    }
    </style>
    <!--Favicon-->
    <link rel="shortcut icon" type="../image/png" href="../../images/fav.png"/>
    
	</head>
  

    <!-- Header
    ================================================= -->
		<jsp:include page="header.jsp"></jsp:include>
    <!--Header End-->

    <div class="container" style="margin-left:70px">
<%
HttpSession hs=request.getSession();

if(hs.getAttribute("id")==null){
	%>
	<h2 style="margin: 0 auto;width: 500px;margin-top: 50px;">
	Session expired. Click here to <a href="login.jsp">login</a>
	</h2>
	<%}
	else{
String id=request.getParameter("id");

System.out.println(id);
if(id==(null))
{
	id=hs.getAttribute("id").toString();
	
}


%>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>
<sql:query dataSource="${snapshot}" var="result">
select id,fname,prof from user where id like '<%=id %>';     
</sql:query>
<c:forEach var="row" items="${result.rows}">
<div style="display: none;" id="email">${row.id}</div>
 


      <!-- Timeline
      ================================================= -->
      <div class="timeline">
 <%
 
%>
        <div class="timeline-cover" style="background:url('../images/<%=id%>/cover') no-repeat;background-size:cover;">

          <!--Timeline Menu for Large Screens-->
          <div class="timeline-nav-bar hidden-sm hidden-xs">
            <div class="row">
              <div class="col-md-3">
                <div class="profile-info">
                  <img src="../images/<%=id%>/dp" alt="" class="img-responsive profile-photo" />
                  
                  <h3>${row.fname}</h3>
                  <p class="text-muted">${row.prof}</p>
                </div>
              </div>
              <div class="col-md-9">
                <ul class="list-inline profile-menu">
                  <li><a href="timeline" class="active">Timeline</a></li>
                  <li><a href="timeline">About</a></li>
                 
                  <li><a href="chat.jsp">Friends</a></li>
                </ul>
                <ul class="follow-me list-inline">
                  <li>1,299 people following her</li>
                  <%
						if((request.getParameter("id"))==(null))
						{
					%>
							<li><button class="btn-primary" id="editprofile" onclick="location.href='editprofile';">Edit Profile</button></li>
					<%
						}//end if
						else
						{	
						%>		
							<li><button class="btn-primary" id="addfriend">Add Friend</button></li>
						<%
						}
						%>	
						
                </ul>
              </div>
            </div>
          </div><!--Timeline Menu for Large Screens End-->

          <!--Timeline Menu for Small Screens-->
          <div class="navbar-mobile hidden-lg hidden-md">
            <div class="profile-info">
              <img src="../images/users/user-1.jpg" alt="" class="img-responsive profile-photo" />
              <h4>Sarah Cruiz</h4>
              <p class="text-muted">Creative Director</p>
            </div>
            <div class="mobile-menu">
              <ul class="list-inline">
                <li><a href="timline.html" class="active">Timeline</a></li>
                <li><a href="timeline-about.html">About</a></li>
                <li><a href="timeline-album.html">Album</a></li>
                <li><a href="timeline-friends.html">Friends</a></li>
              </ul>
              <button class="btn-primary">Add Friend</button>
            </div>
          </div><!--Timeline Menu for Small Screens End-->

        </div>
        <div id="page-contents">
          <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-7">

              <!-- Post Create Box
              ================================================= -->
              	<jsp:include page="postcreatebox.jsp" /><!-- Post Create Box End-->

              <!-- Post Content
              ================================================= -->
              	<jsp:include page="postss.jsp" />

              <!-- Post Content
              ================================================= -->
              
              <!-- Post Content
              ================================================= -->
              

            </div>
           
           <!-- 
           <div class="col-md-2 static">
              <div id="sticky-sidebar">
                <h4 class="grey">Sarah's activity</h4>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Commended on a Photo</p>
                    <p class="text-muted">5 mins ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Has posted a photo</p>
                    <p class="text-muted">an hour ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> Liked her friend's post</p>
                    <p class="text-muted">4 hours ago</p>
                  </div>
                </div>
                <div class="feed-item">
                  <div class="live-activity">
                    <p><a href="#" class="profile-link">Sarah</a> has shared an album</p>
                    <p class="text-muted">a day ago</p>
                  </div>
                </div>
              </div>
            </div>
             --> 
          </div>
        </div>
      </div>
    </div>
</c:forEach> 
<%} %>
    <!-- Footer
    ================================================= -->
    <jsp:include page="footer.jsp"></jsp:include>
    <jsp:include page="signin.jsp"></jsp:include>
    <!--preloader-->
    <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div>

    <!-- Scripts
    ================================================= -->
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.sticky-kit.min.js"></script>
    <script src="../js/jquery.scrollbar.min.js"></script>
    <script src="../js/script.js"></script>

  </body>

</html>
