<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>

<div class="widget_shopping_cart_content">
<ul class="cart_list product_list_widget ">
     


</td>
<ul>
<sql:query dataSource="${snapshot}" var="result">
select * from products,cart where products.id=cart.product and cart.buyer='${sessionScope.id}';
</sql:query>

<sql:query dataSource="${snapshot}" var="count">
select count(*) as c from products,cart where products.id=cart.product and cart.buyer='${sessionScope.id}';</sql:query>
<c:set var="cartcount" value="${count.rows[0].c}" scope="session"  />
<c:set var="total" value="${0}"/>
<c:forEach var="row" items="${result.rows}">
	<li>
		<a href="product?id=${row.id}">
			<img width="180" height="180" src="../images/products/${row.id}/1" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="user-image" >
			${row.name}
		</a>		
		<span class="quantity">${row.quantity} × <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">Rs.&nbsp</span>${row.price}</span></span>	
		<c:set var="prices" value="${fn:replace(row.price,',', '')}" />
         <fmt:parseNumber var="price" type="number" value="${prices}" />                       
		<c:set var="total" value="${total + price}" />			
	</li> 
	
	
	



</c:forEach>   
</ul>     


	<p class="total"><strong>Subtotal:</strong> <span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">Rs.&nbsp</span>${total }</span></p>

	
	<p class="buttons">
		<a href="cart" class="button wc-forward">View Cart</a>
		<a href="checkout" class="button checkout wc-forward">Checkout</a>
	</p>
</div>