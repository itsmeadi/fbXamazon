<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>
<%
HttpSession hs=request.getSession();
String id=hs.getAttribute("id").toString();
System.out.println(id);
%>



<sql:query dataSource="${snapshot}" var="result">
select * from user where id like '<%=id %>';     
</sql:query>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.lines
{
	border-width: 0;
    border-color: #e9ebee;
    border-style: solid;
    border-width: 1px 0 0 0; 
    padding:10px;
    
}
.inp
{
display:inline;
float:right;
width:300px !important;
}
label
{
    margin: 15px 0 5px;
    }
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="page-contents">
    	<div class="container">
    		<div class="row">

          <!-- Newsfeed Common Side Bar Left
          ================================================= -->
    			<jsp:include page="leftbar.jsp"></jsp:include>
    		<div class="col-md-7">
  		<!-- Post Create Box
              ================================================= -->
             	<h4>Edit Profile</h4>
             	<hr>
             	<form action="../update_profile" enctype="multipart/form-data"  method="post">
             	<div class="register-section" id="basic-details-section">



 <c:forEach var="row" items="${result.rows}">
					<label for="fname">Name</label>
										<input type="text" name="fname" id="fname" value="${row.fname}"/>

					<label for="lname">Surname</label>
										<input type="text" name="lname" id="lname" value="${row.lname }"/>
					<a href="../signup.jsp" ></a>
					<label for="signup_password">Old Password(Necessary)</label>
										<input type="password" name="pass" id="pass" value=""/>

					<label for="signup_password_confirm">New Password</label>
										<input type="password" name="new_pass" id="new_pass" value=""/>

					<label for="dp">Profile Pic</label>
										
										<input type="file" accept="image/png, image/jpeg, image/gif" name="dp"/>

					<label for="cover">Cover Pic</label>
										<input type="file" name="cover" accept="image/png, image/jpeg, image/gif"/>

					<label for="Profession">Profession</label>
										<input type="text" name="Profession" id="Profession" value="${row.prof}"/>

					<label for="dob">Date of Birth</label>
										<input type="date" name="dob" id="dob" value=""/>
					<br>
					<input type="submit" class="btn btn-primary" value="save" class="btn">
					<input type="button" class="btn btn-primary" value="cancel" class="btn">
				  </c:forEach>
				</div>
             	
             	</form>
             	
             	
             	
          <!-- Post Create Box End-->
 </div>

          <!-- Newsfeed Common Side Bar Right
          ================================================= -->
    			<jsp:include page="rightbar.jsp"></jsp:include>
    		</div>
    	</div>
    </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>