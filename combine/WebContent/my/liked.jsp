<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>
 <%
HttpSession hs=request.getSession();
String id=hs.getAttribute("id").toString();
String pid=request.getParameter("pid"); 
%>
 
 <sql:query dataSource="${snapshot}" var="res">
select count(*)as count from likes where (pid=<%=pid%> and uid='<%=id%>');
</sql:query>
<c:choose>
	<c:when test="${res.rows[0].count==1}">
		<sql:update dataSource="${snapshot}" var="result">
		delete from likes where (pid=<%=pid%> and uid='<%=id%>');
		</sql:update>
	</c:when>
	<c:otherwise>
		<sql:update dataSource="${snapshot}" var="result">
		insert into likes(pid,uid) values(<%=pid%>,'<%=id%>');
		</sql:update>
	</c:otherwise>
</c:choose>
 

	