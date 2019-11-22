<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>
<%
PrintWriter pw=response.getWriter();
String str=request.getParameter("name");
System.out.println(str);
%>


<ul>
<sql:query dataSource="${snapshot}" var="result">
select id,name,desec,image from product where name like '<%=str %>%';     
</sql:query>
<c:forEach var="row" items="${result.rows}">
	${row.name}
 <li><a href="product.jsp?id=${row.id}" class="clearfix">
<img width="200" height="150" src="../images/${row.image}" class="attachment-the-one-thumbnail size-the-one-thumbnail wp-post-image" alt="" srcset="" sizes="(max-width: 200px) 100vw, 200px">
<span class="title">${row.name}</span>
<p class="desc">
desecription desecriptiondese cription desecription
</p>
</a>
</li> 	 
</c:forEach>   
</ul>     


<h3 class="People">People<a href="timeline.jsp" class="all-link">All People</a></h3>
<ul>
<sql:query dataSource="${snapshot}" var="result">
select id,fname from user where fname like '<%=str%>%';     
</sql:query>
<c:forEach var="row" items="${result.rows}">
	${row.fname}
 <li><a href="timeline.jsp?id=${row.id}" class="clearfix">
<img width="200" height="150" src="../images/users/${row.id}" class="attachment-the-one-thumbnail size-the-one-thumbnail wp-post-image" alt="" srcset="" sizes="(max-width: 200px) 100vw, 200px">
<span class="title">${row.name}</span>
<p class="desc">
desecription desecriptiondese cription desecription
</p>
</a>
</li> 	 
</c:forEach>   
</ul>     

