<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
 <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>
<sql:query dataSource="${snapshot}" var="result">
select * from cart,products,user where cart.product=products.id and seller='${sessionScope.id}' and user.id=cart.buyer;
</sql:query>
<sql:query dataSource="${snapshot}" var="count">
select count(*) as c from cart,products,user where cart.product=products.id and seller='${sessionScope.id}' and user.id=cart.buyer;
</sql:query>
<c:set var="notifications" value="${count.rows[0].c}" scope="session"  />
<c:forEach var="row" items="${result.rows}">
	<li>
		<a href="timeline.jsp?id=${row.buyer}">
			${row.fname}  
		</a>		
		wants to buy 
		 <a href="product.jsp?id=${row.product}">
		 ${row.name}
		 </a>
		 1 piece
		<br/>		
</li>
</c:forEach>
