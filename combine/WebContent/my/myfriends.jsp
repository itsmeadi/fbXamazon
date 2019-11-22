<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<%
HttpSession hs=request.getSession();
String id=hs.getAttribute("id").toString();
%>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>
 
<sql:query dataSource="${snapshot}" var="result">
select id,fname from user where id in(select id1 from friends where id2='<%=id %>' AND status=1 UNION select id2 from friends where id1='<%=id %>' AND status=1); 
</sql:query>
<c:forEach var="row" items="${result.rows}">
	<ul class="online-users list-inline">
         <li><a href="chat.jsp" title="${row.fname}"><img src="../images/${row.id}/dp" alt="user" class="img-responsive profile-photo" /><span class="online-dot"></span></a></li>
     </ul>
</c:forEach>

