<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>

<sql:update dataSource="${snapshot}" var="res">
insert into publish (id,parent,content,type) values('${sessionScope.id}','${param.pid}','${param.text}','comment');
</sql:update>

<div class="post-comment"><img src="../images/${sessionScope.id}/dp.jpg" alt="pic" class="profile-photo-sm" />
<p><a href="timeline.jsp?id=${sessionScope.id}" class="profile-link">${sessionScope.name}&nbsp</a><!-- <i class="em em-laughing"></i>  -->${param.text}</p></div>
		            	