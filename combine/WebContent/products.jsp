<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
 <ul class="to-products clearfix index-loop">
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>
 
<sql:query dataSource="${snapshot}" var="result">
select name,price,image from product;
</sql:query>
 
<c:forEach var="row" items="${result.rows}">
	<li class="post-114 product type-product status-publish has-post-thumbnail product_cat-clothing post-item  instock shipping-taxable purchasable product-type-simple">
		<a href="../product/ship-your-idea-3/index.html" class="woocommerce-LoopProduct-link">
			<span class="product-thumb" style="background-image: url(../images/${row.image});"></span>
	<h3>${row.name}</h3>
		<span class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>${row.price}</span></span>


	</a><a href="index8799.html?add-to-cart=114" rel="nofollow" data-product_id="114" data-product_sku="" data-quantity="1" class="button add_to_cart_button product_type_simple">Add to cart</a>
</li>



				
						
  
</c:forEach>

</div>
</div>



				</ul> 