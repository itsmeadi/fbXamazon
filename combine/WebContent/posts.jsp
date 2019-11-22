 <%@page import="java.io.PrintWriter"%>
<%@ page import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    
    <%
    Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/adi?user=root&password=aditya");
	String post="";
	String po="select * from publish";
	PreparedStatement ppost=cn.prepareStatement(po);
	//p.setString(1, hs.getAttribute("id").toString());
	ResultSet rspost=ppost.executeQuery();
	String stp="";
	while(rspost.next())
	{
		stp+="<div class=\"user-info\"><h5><a href=\"timeline.html\" class=\"profile-link\">Alexis Clark</a> <span class=\"following\">following</span></h5><p class=\"text-muted\">Published a photo about 3 mins ago</p></div>";
		stp+="<div class=\"post-content\">";
		if(rspost.getString(3).equals("image"))
				 stp+="<img src="+rspost.getString(2)+" alt=\"post-image\" class=\"img-responsive post-image\" />";
		if(rspost.getString(3).equals("text"))
				 stp+="<div class=\"post-text\">"+rspost.getString(2)+"</div>";
								 
		stp+="<div class=\"post-container\">";
        
		stp+="<div class=\"posts\"><img class=\"post-id-image\" src=\"images//"+rspost.getString(1)+"//dp.jpg\"> <span class=\"post-name\">"+rspost.getString(1)+":</span><br><br><br>"+rspost.getString(2)+"</div>";
	}
	cn.close();
	
    %>
    <div class="post-content">
              <img src="images/post-images/1.jpg" alt="post-image" class="img-responsive post-image" />
              <div class="post-container">
                <img src="images/users/user-5.jpg" alt="user" class="profile-photo-md pull-left" />
                <div class="post-detail">
                  <div class="user-info">
                    <h5><a href="timeline.html" class="profile-link">Alexis Clark</a> <span class="following">following</span></h5>
                    <p class="text-muted">Published a photo about 3 mins ago</p>
                  </div>
                  <div class="reaction">
                    <a class="btn text-green"><i class="icon ion-thumbsup"></i> 13</a>
                    <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 0</a>
                  </div>
                  <div class="line-divider"></div>
                  <div class="post-text">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <i class="em em-anguished"></i> <i class="em em-anguished"></i> <i class="em em-anguished"></i></p>
                  </div>
                  <div class="line-divider"></div>
                  <div class="post-comment">
                    <img src="images/users/user-11.jpg" alt="" class="profile-photo-sm" />
                    <p><a href="timeline.html" class="profile-link">Diana </a><i class="em em-laughing"></i> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud </p>
                  </div>
                  <div class="post-comment">
                    <img src="images/users/user-4.jpg" alt="" class="profile-photo-sm" />
                    <p><a href="timeline.html" class="profile-link">John</a> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud </p>
                  </div>
                  <div class="post-comment">
                    <img src="images/users/user-1.jpg" alt="" class="profile-photo-sm" />
                    <input type="text" class="form-control" placeholder="Post a comment">
                  </div>
                </div>
              </div>
            </div>