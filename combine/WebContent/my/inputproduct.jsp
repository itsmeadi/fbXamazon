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

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>
 
<sql:query dataSource="${snapshot}" var="result">
select * from category;
</sql:query>
 


<div id="page-contents">
    	<div class="container">
    		<div class="row">

          <!-- Newsfeed Common Side Bar Left
          ================================================= -->
    			<jsp:include page="leftbar.jsp"></jsp:include>
    		<div class="col-md-7">
  		<!-- Post Create Box
              ================================================= -->
             	<h4>Sell Products</h4>
             	<hr>
             	<form action="../addproduct" enctype="multipart/form-data"  method="post">
             	<div class="register-section" id="basic-details-section">
 
					<label for="name">Product Name</label>
										<input type="text" name="name" id="name"/>

					<label for="descp">Description</label>
										<textarea name="descp"></textarea>
					<label for="quantity">Quantity(Necessary)</label>
										<input type="number" name="quantity" id="quantity" value="0" min="0"/>
					<label for="price">Price(INR)</label>
										<input type="number" name="price" id="price" value="0" min="0"/>
					<label for="category">Category</label><br/>
					<select name="category">
					<c:forEach var="row" items="${result.rows}">
						<option value="${row.id }">${row.name }</option>
						</c:forEach>
					</select>
					<br/>
					<label for="p1">Product Image1</label>
										
										<input type="file" accept="image/png, image/jpeg, image/gif" id="p1" name="p1"/>

					<label for="p2">Product Image2</label>
										
										<input type="file" accept="image/png, image/jpeg, image/gif" name="p2"/>

					<label for="p3">Product Image3</label>
										
										<input type="file" accept="image/png, image/jpeg, image/gif" name="p3"/>

					<label for="p4">Product Image4</label>
										
										<input type="file" accept="image/png, image/jpeg, image/gif" name="p4"/>

					<br>
					<input type="submit" class="btn btn-primary" value="save" class="btn">
					<input type="button" class="btn btn-primary" value="cancel" class="btn">
				
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