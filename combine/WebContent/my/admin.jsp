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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
<style>
@media (min-width: 1200px)

.woocommerce .wc-cart .row > .cart {
    width: 100%;
}

.woocommerce .wc-cart .row > .cart {
    width: 100% !important;
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>


<div class="container site-container right-sidebar">
	<div id="main">	<div id="primary" class="site-content">
		<div id="content" role="main">
			<div class="single-entry">	
				<article id="post-23" class="clearfix  post-23 page type-page status-publish hentry post-item">
					<div class="entry-content">
						<div class="woocommerce">
<div class="wc-cart">
	<div class="row">
		<div class="col-lg-9 cart">	
			<form action="http://rozex.us/themes/the-one/cart/" method="post">
				
				<h1 class="page-title">Users</h1>
					<table class="shop_table cart" cellspacing="0">
						<thead>
							<tr>
								<th class="product-remove" style="width: 6%;">&nbsp;</th>
								<th class="product-name" style="width: 40%;">Email</th>
								<th class="product-attr" style="width: 19%;">Name</th>
								<th class="product-price" style="width: 10%;">Profession</th>
								<th class="product-quantity" style="width: 14%;">Age</th>
								<th class="product-subtotal" style="width: 10%;">Tools</th>
							</tr>
						</thead>
					<tbody>
					




<ul>
<sql:query dataSource="${snapshot}" var="result">
select * from user;
</sql:query>
<c:set var="total" value="${0}"/>
<c:forEach var="row" items="${result.rows}">
	
	<tr class="cart_item">
		<td class="product-remove">
			<a href="../id_remove?id=${row.id}" class="remove" title="Remove this item">×</a>	</td>
		<td class="product-name clearfix">
			<a href="timeline.jsp?id=${rows.id}" class="product-thumb"><img width="180" height="180" src="../images/${row.id}/dp" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="" sizes="(max-width: 180px) 100vw, 180px"></a>									
										
			<a href="timeline.jsp?id=${rows.id}" class="product-title">${row.id}</a>
		</td>
		<td class="product-attrs">
		<a href="timeline.jsp?id=${rows.id}" class="product-title">${row.fname}</a>
		</td>

		<td class="product-price">
			<span class="woocommerce-Price-amount amount">${row.prof}</span>
		</td>
		<td class="product-quantity">
			<div class="quantity">
			</div>								
			</td>
		<c:set var="prices" value="${fn:replace(row.price,',', '')}" />
         <fmt:parseNumber var="price" type="number" value="${prices*row.quantity}" />                       
		<c:set var="total" value="${total + price}" />		
		<td class="product-subtotal">
		
		</td>
	</tr>
	
	



</c:forEach>   
</ul>     
	

</tbody>
				</table>
			</form>
			
			
			
			<form action="http://rozex.us/themes/the-one/cart/" method="post">
				<div class="wc-purchase-steps">
					
				</div>
				<h1 class="page-title">Products</h1>
					<table class="shop_table cart" cellspacing="0">
						<thead>
							<tr>
								<th class="product-remove" style="width: 6%;">&nbsp;</th>
								<th class="product-name" style="width: 40%;">Product</th>
								<th class="product-attr" style="width: 19%;">Seller</th>
								<th class="product-price" style="width: 10%;">Price</th>
								<th class="product-quantity" style="width: 14%;">Quantity</th>
								<th class="product-subtotal" style="width: 10%;">Tools</th>
							</tr>
						</thead>
					<tbody>
					




<ul>
<sql:query dataSource="${snapshot}" var="result">
select * from products;
</sql:query>
<c:set var="total" value="${0}"/>
<c:forEach var="row" items="${result.rows}">
	
	<tr class="cart_item">
		<td class="product-remove">
			<a href="../product_remove?id=${row.id}" class="remove" title="Remove this item">×</a>								
		</td>
		<td class="product-name clearfix">
			<a href="product.jsp?id=${row.id}" class="product-thumb"><img width="180" height="180" src="../images/products/${row.id}/1" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="" sizes="(max-width: 180px) 100vw, 180px"></a>									
										
			<a href="product.jsp?id=${row.id}" class="product-title">${row.name}</a>
		</td>
		<td class="product-attrs">
		<a href="timeline.jsp?id=${row.seller}">${row.seller}&nbsp&nbsp</a>
		
		</td>

		<td class="product-price">
			<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">Rs.&nbsp</span>${row.price}</span>
		</td>
		<td class="product-quantity">
			<div class="quantity"><input name="cart[2b44928ae11fb9384c4cf38708677c48][qty]" value="${row.quantity}" title="Qty" class="input-text qty text" size="4"></div>								</td>
		<c:set var="prices" value="${fn:replace(row.price,',', '')}" />
         <fmt:parseNumber var="price" type="number" value="${prices*row.quantity}" />                       
		<c:set var="total" value="${total + price}" />		
		<td class="product-subtotal">
		<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">Rs.&nbsp</span>${price}</span>
		</td>
	</tr>
	
	



</c:forEach>   
</ul>     
	

</tbody>
				</table>
			</form>
		</div>

	</div>

</div>


</div>
		</div><!-- .entry-content -->
	
</article><!-- #post-## -->

					
<div id="comments" class="comments-area">

	
	
</div><!-- #comments -->
							</div>


		</div><!-- #content -->
	</div><!-- #primary -->
</div><!-- #main -->


	</div>









</body>
</html>