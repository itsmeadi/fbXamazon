<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="like.js"></script>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>
 <%
HttpSession hs=request.getSession();
 String id=hs.getAttribute("id").toString();
%>
<script type="text/javascript" src="comment.js"></script>
<sql:query dataSource="${snapshot}" var="result">
select pid,user.id,fname,content,type,likes,dislikes,DATE_FORMAT(date, '%Y.%m.%d.%H.%i.%s')as date,cast(((TIMESTAMPDIFF(SECOND, date, now()))/60) as unsigned) as time from(user,publish) where user.id=publish.id and parent=0 order by date desc;
</sql:query>

<c:forEach var="row" items="${result.rows}">
	
	<sql:query dataSource="${snapshot}" var="likecount">
		select count(*) as cl from likes where pid=${row.pid};
	</sql:query>
 	<sql:query dataSource="${snapshot}" var="selflike">
		select count(*)as lik from likes where pid=${row.pid} and uid='<%=id %>';
	</sql:query>
 	<sql:query dataSource="${snapshot}" var="comment">
		select fname,user.id,content from publish,user where parent=${row.pid} and user.id=publish.id;
	</sql:query>
 
	
	<div class="post-content"  id=${row.pid}>
    	<c:if test="${row.type=='.jpeg'||row.type=='.png'}">
    		<img src="../images/${row.id}/${row.date}${row.type}" alt="post-image" class="img-responsive post-image" />
    		<c:set var="type" value="image"/>
        </c:if>
        <c:if test="${row.type=='.mp4'}">
    		<video class="post-video" controls=""> <source src="../images/${row.id}/${row.date}.mp4" type="video/mp4"> </video>
    		<c:set var="type" scope="session" value="video"/>
        </c:if>
        
         <div class="post-container"> 		
              <img src="../images/${row.id}/dp" alt="${row.fname}" class="profile-photo-md pull-left" />
                <div class="post-detail">
                  <div class="user-info">
                    <h5><a href="timeline.html" class="profile-link">${row.fname} ${row.lname}</a> <span class="following">following</span></h5>
                    <p class="text-muted">Published a ${type} about ${row.time} mins ago</p>
                  </div>
                 
                  <div class="reaction" >
                  <c:choose>
	                  <c:when test="${selflike.rows[0].lik==0}">
	    					<a class="btn text-green"  ><i class="fa fa-thumbs-up"></i> <span class="nol">${likecount.rows[0].cl}</span></a>
	                  </c:when>
	                  <c:otherwise>
	                  		<a class="btn text-blue" id=${row.pid} ><i class="fa fa-thumbs-up"></i> <span class="nol">${likecount.rows[0].cl}</span></a>
	                  </c:otherwise>
       			</c:choose>
                      <!-- <a class="btn text-red" id=${row.pid}><i class="fa fa-thumbs-down"></i> ${row.dislike}</a> -->
                    </div>
                <div class="post-text">
                    <p>${row.content} <i class="em em-anguished"></i> <i class="em em-anguished"></i> <i class="em em-anguished"></i></p>
                  </div>
                <div class="line-divider"></div>
                
                <c:forEach var="crow" items="${comment.rows}">
                   <div class="post-comment">
                    <img src="../images/${crow.id}/dp" alt="pic" class="profile-photo-sm" />
                    <p><a href="timeline.jsp?id=${row.id}" class="profile-link">${crow.fname } </a><!-- <i class="em em-laughing"></i>  -->&nbsp${crow.content } </p>
                  </div>
                </c:forEach>
                  <div id="ss"></div>
                   <div class="post-comment">
                    <img src="../images/<%=id %>/dp" alt="" class="profile-photo-sm" />
                    <input type="text" class="form-control comment" name=${row.pid } placeholder="Post a comment">
                  </div>
   				 </div>
   			</div>
   		</div>
  
</c:forEach>


<!-- 

<div class="post-content">
               <video class="post-video" controls=""> <source src="videos/8.mp4" type="video/mp4"> </video>
              <div class="post-container">
                <img src="images/users/user-3.jpg" alt="user" class="profile-photo-md pull-left">
                <div class="post-detail">
                  <div class="user-info">
                    <h5><a href="timeline.html" class="profile-link">Sophia Lee</a> <span class="following">following</span></h5>
                    <p class="text-muted">Updated her status about 33 mins ago</p>
                  </div>
                  <div class="reaction">
                    <a class="btn text-green"><i class="icon ion-thumbsup"></i> 75</a>
                    <a class="btn text-red"><i class="fa fa-thumbs-down"></i> 8</a>
                  </div>
                  <div class="line-divider"></div>
                  <div class="post-text">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                  </div>
                  <div class="line-divider"></div>
                   <div class="post-comment">
                    <img src="images/users/user-14.jpg" alt="" class="profile-photo-sm">
                    <p><a href="timeline.html" class="profile-link">Olivia </a> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <i class="em em-anguished"></i> Ut enim ad minim veniam, quis nostrud </p>
                  </div>
                  <div class="post-comment">
                    <img src="images/users/user-1.jpg" alt="" class="profile-photo-sm">
                    <p><a href="timeline.html" class="profile-link">Sarah</a> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
                  </div>
                  <div class="post-comment">
                    <img src="images/users/user-2.jpg" alt="" class="profile-photo-sm">
                    <p><a href="timeline.html" class="profile-link">Linda</a> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                  </div>
                  <div class="post-comment">
                    <img src="images/users/user-1.jpg" alt="" class="profile-photo-sm">
                    <input type="text" class="form-control" placeholder="Post a comment">
                  </div>
                </div>
              </div>
            </div>








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
             -->