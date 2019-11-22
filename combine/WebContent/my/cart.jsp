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
<title>Insert title here</title>
<style type="text/css">
.entry-content a
{
display: inline-block;
    width: 150px;
}</style>
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
				<div class="wc-purchase-steps">
					<ul>
						<li class="active"><span>Shopping Cart</span></li>
						<li>
							<a href="http://rozex.us/themes/the-one/checkout/">Checkout Details</a>
						</li>
						<li><span>Order Complete</span></li>
					</ul>
				</div>
				<h1 class="page-title">Cart</h1>
					<table class="shop_table cart" cellspacing="0">
						<thead>
							<tr>
								<th class="product-remove" style="width: 6%;">&nbsp;</th>
								<th class="product-name" style="width: 40%;">Product</th>
								<th class="product-attr" style="width: 19%;">Attributes</th>
								<th class="product-price" style="width: 10%;">Price</th>
								<th class="product-quantity" style="width: 14%;">Quantity</th>
								<th class="product-subtotal" style="width: 10%;">Total</th>
							</tr>
						</thead>
					<tbody>
					




<ul>
<sql:query dataSource="${snapshot}" var="result">
select * from products,cart where products.id=cart.product and cart.buyer='${sessionScope.id}';
</sql:query>
<c:set var="total" value="${0}"/>
<c:forEach var="row" items="${result.rows}">
	
	<tr class="cart_item">
		<td class="product-remove">
			<a href="http://rozex.us/themes/the-one/cart/?remove_item=2b44928ae11fb9384c4cf38708677c48&amp;_wpnonce=740951f4b4" class="remove" title="Remove this item">×</a>								
		</td>
		<td class="product-name clearfix">
			<a href="product?id=${row.id}" class="product-thumb"><img width="180" height="180" src="../images/products/${row.id}/1" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="" sizes="(max-width: 180px) 100vw, 180px"></a>									
										
			<a href="product?id=${row.id}" class="product-title">${row.name}</a>
		</td>
		<td class="product-attrs">
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
	<tr>
		<td colspan="6" class="actions clearfix">
			<div class="coupon">
				<label for="coupon_code">Coupon:</label>
					<input type="text" name="coupon_code" class="input-text" id="coupon_code" value="" placeholder="Coupon code">
					<input type="submit" class="button" name="apply_coupon" value="Apply Coupon">
			</div>
			<input type="submit" class="button" name="update_cart" value="Update Cart">
			<!--<input type="submit" class="checkout-button button alt wc-forward" name="proceed" value="Proceed to Checkout"/>-->
			<input type="hidden" id="_wpnonce" name="_wpnonce" value="740951f4b4"><input type="hidden" name="_wp_http_referer" value="/themes/the-one/cart/">						
		</td>
	</tr>

</tbody>
				</table>
			</form>
		</div>
<div class="col-lg-3 cart-totals">
			<div class="cart-collaterals">
				<div class="cart_totals calculated_shipping">
					<h2>Cart Totals</h2>
						<table cellspacing="0" class="table">
						<tbody><tr class="cart-subtotal">
						<th>Cart Subtotal</th>
						<td>
						<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">Rs.&nbsp</span>${total}</span>
						</td>
		</tr>
	</tbody>
	</table>

	<div class="order-total clearfix">
		<p>Order Total</p>
		<p class="total"><strong><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">Rs.&nbsp</span>${total}</span></strong> </p>
	</div>

</div>

				
<a href="address" class="checkout-button button alt wc-forward">
	Proceed to Checkout</a>

			</div>
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







<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>