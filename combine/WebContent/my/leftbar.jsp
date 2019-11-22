
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>

<%
HttpSession hs=request.getSession();
String name=hs.getAttribute("name").toString();
String id="";

if(hs.getAttribute("id")==null)
{
	%>
	<h2 style="margin: 0 auto;width: 500px;margin-top: 50px;">
	Session expired. Click here to <a href="login.jsp">login</a>
	</h2>
	<%
}
else
{
	id=hs.getAttribute("id").toString();

System.out.println(id);
if(id==(null))
{
	id=hs.getAttribute("id").toString();
	
}

}
%>
<sql:query dataSource="${snapshot}" var="result">
select count(*) as c from friends where id1='<%=id %>' or id2='<%=id %>';
</sql:query>
<div class="col-md-3 static">
            <div class="profile-card">
            	<img src="../images/<%=id%>/dp" alt="user" class="profile-photo" />
            	<h5><a href="timeline.html" class="text-white"><%=name %></a></h5>
            	<a href="#" class="text-white"><i class="fa fa-users"></i> ${result.rows[0].c} followers</a>
            </div><!--profile card ends-->
            <ul class="nav-news-feed">
              <li><i class="fa fa-rss"></i><div><a href="newsfeed">My Newsfeed</a></div></li>
              <li><i class="fa fa-users"></i><div><a href="timeline">People Nearby</a></div></li>
              <li><i class="fa fa-user-plus"></i><div><a href="timeline">Friends</a></div></li>
              <li><i class="fa fa-picture-o"></i><div><a href="timeline">Images</a></div></li>
              <li><i class="fa fa-video-camera"></i><div><a href="timeline">Videos</a></div></li>
            </ul><!--news-feed links ends-->
            <div id="chat-block">
              <div class="title">Chat online</div>
              <jsp:include page="myfriends.jsp"></jsp:include>
            </div><!--chat block ends-->
          </div>