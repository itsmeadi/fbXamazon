<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>

<div class="widget_shopping_cart_content">
<ul class="cart_list product_list_widget ">
     
<%
HttpSession hs=request.getSession();

if(hs.getAttribute("id")!=null)
{
String id=hs.getAttribute("id").toString();
String str=request.getParameter("name");
System.out.println(str);
%>

<h3 class="title">Friend Requests</h3>
<ul>
<sql:query dataSource="${snapshot}" var="result">
select id,fname from user where id in(select id1 from friends where status=0 AND id2='<%=id %>');     
</sql:query>
<sql:query dataSource="${snapshot}" var="count">
select count(*) as c from user where id in(select id1 from friends where status=0 AND id2='<%=id %>');     
</sql:query>
<c:set var="requests" value="${count.rows[0].c}" scope="session"  />
<c:forEach var="row" items="${result.rows}">
	<li>
		<a href="timeline.jsp?id=${row.id}">
			<img width="180" height="180" src="../images/${row.id}/dp" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="user-image" >
			${row.fname}
		</a>		
		<p class="buttons">
		<a href="../requestresponse?res=accept&id=${row.id}" class="button wc-forward">Accept</a>
		<a href="../requestresponse?res=reject&id=${row.id}" class="button checkout wc-forward">Reject</a>
	</p>				
	<li> 
</c:forEach>   
</ul>     
<%} %>

</div>