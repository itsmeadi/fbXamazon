<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 	
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>
 
<sql:query dataSource="${snapshot}" var="result">
select * from products where pid='${param.id}';
</sql:query>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<body class="archive tax-product_cat term-clothing term-27 woocommerce woocommerce-page wpb-js-composer js-comp-ver-5.0.1 vc_responsive no-js">


<jsp:include page="../my/header.jsp"></jsp:include>
<div class="container site-container right-sidebar">
	
		<div class="row">
		<div class="col-lg-9">
			
			<div id="main">
<div id="woocommerce">


	<div id="container"><div id="content" role="main">
	
	<div class="products-list">
<sql:query dataSource="${snapshot}" var="re">
select * from category where id='${param.id}';
</sql:query>
		<h2 class="title">
			${re.rows[0].name}		
		</h2>
<p class="woocommerce-result-count">
	Showing all 10 results
	</p>
	<form class="woocommerce-ordering" method="get">
	<select name="orderby" class="orderby">
					<option value="menu_order"  selected='selected'>Default sorting</option>
					<option value="popularity" >Sort by popularity</option>
					<option value="rating" >Sort by average rating</option>
					<option value="date" >Sort by newness</option>
					<option value="price" >Sort by price: low to high</option>
					<option value="price-desc" >Sort by price: high to low</option>
			</select>
	</form>
	<ul class="to-products clearfix ">
	<c:forEach var="row" items="${result.rows}">
		<li class="post-114 product type-product status-publish has-post-thumbnail product_cat-clothing post-item  instock shipping-taxable purchasable product-type-simple">

	<a href="product?id=${row.id}" class="woocommerce-LoopProduct-link">

	<span class="product-thumb" style="background-image: url(../images/products/${row.id}/1);"></span>
	<h3>${row.name}</h3>

	

	<span class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">Rs </span>${row.price }</span></span>


	</a><a href="index8799.html?add-to-cart=114" rel="nofollow" data-product_id="114" data-product_sku="" data-quantity="1" class="button add_to_cart_button product_type_simple">Add to cart</a>
</li>


</c:forEach>
</ul>
			
			</div>

	</div></div>

</div>


</div><!-- #main -->

	</div>
	<div class="col-lg-3">
				<section class="widget-area" id="sidebar">
		<aside id="woocommerce_product_categories-4" class="widget woocommerce widget_product_categories"><div><h2 class="widget-title">Product Categories</h2></div><ul class="product-categories"><li class="cat-item cat-item-27 current-cat"><a href="index.html">Clothing</a></li>
<li class="cat-item cat-item-30"><a href="../gadgets/index.html">Gadgets</a></li>
<li class="cat-item cat-item-61"><a href="../home-kitchen/index.html">Home and Kitchen</a></li>
<li class="cat-item cat-item-29"><a href="../music/index.html">Music</a></li>
<li class="cat-item cat-item-62"><a href="../toys/index.html">Toys</a></li>
</ul></aside><aside id="woocommerce_price_filter-2" class="widget woocommerce widget_price_filter"><div><h2 class="widget-title">Filter by price</h2></div><form method="get" action="http://rozex.us/themes/the-one/product-category/clothing/">
			<div class="price_slider_wrapper">
				<div class="price_slider" style="display:none;"></div>
				<div class="price_slider_amount">
					<input type="text" id="min_price" name="min_price" value="" data-min="2" placeholder="Min price" />
					<input type="text" id="max_price" name="max_price" value="" data-max="35" placeholder="Max price" />
					<button type="submit" class="button">Filter</button>
					<div class="price_label" style="display:none;">
						Price: <span class="from"></span> &mdash; <span class="to"></span>
					</div>
					
					<div class="clear"></div>
				</div>
			</div>
		</form></aside><aside id="woocommerce_layered_nav-4" class="widget woocommerce widget_layered_nav"><div><h2 class="widget-title">Filter by</h2></div><ul><li class="wc-layered-nav-term "><a href="indexf9b2.html?filter_color=black">Black</a> <span class="count">(1)</span></li><li class="wc-layered-nav-term "><a href="indexe36b.html?filter_color=green">Green</a> <span class="count">(1)</span></li></ul></aside><aside id="woocommerce_product_search-2" class="widget woocommerce widget_product_search"><div><h2 class="widget-title">Search Products</h2></div>
<form role="search" method="get" class="woocommerce-product-search" action="http://rozex.us/themes/the-one/">
	<label class="screen-reader-text" for="woocommerce-product-search-field">Search for:</label>
	<input type="search" id="woocommerce-product-search-field" class="search-field" placeholder="Search Products&hellip;" value="" name="s" title="Search for:"/>
	<button type="submit"></button>
	<input type="hidden" name="post_type" value="product"/>
</form>
</aside><aside id="woocommerce_products-2" class="widget woocommerce widget_products"><div><h2 class="widget-title">Latest Products</h2></div><ul class="product_list_widget"><li>
	<a href="../../product/woo-single-2/index.html" title="Black One">
		<img width="180" height="180" src="../../wp-content/uploads/2013/06/black-1226642_1920-180x180.html" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2013/06/black-1226642_1920-180x180.jpg 180w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/black-1226642_1920-150x150.jpg 150w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/black-1226642_1920-200x200.jpg 200w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/black-1226642_1920-300x300.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/black-1226642_1920-600x600.jpg 600w" sizes="(max-width: 180px) 100vw, 180px" />		Black One	</a>
		<del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>3.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>2.00</span></ins></li><li>
	<a href="../../product/woo-album-4/index.html" title="White One">
		<img width="180" height="180" src="../../wp-content/uploads/2013/06/woman-1472767_1920-180x180.jpg" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2013/06/woman-1472767_1920-180x180.jpg 180w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/woman-1472767_1920-150x150.jpg 150w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/woman-1472767_1920-200x200.jpg 200w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/woman-1472767_1920-300x300.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/woman-1472767_1920-600x600.jpg 600w" sizes="(max-width: 180px) 100vw, 180px" />		White One	</a>
		<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>9.00</span></li><li>
	<a href="../../product/woo-single-1/index.html" title="Mortar and Pestle">
		<img width="180" height="180" src="../../wp-content/uploads/2013/06/mortar-and-pestle-1032055_1280-180x180.html" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2013/06/mortar-and-pestle-1032055_1280-180x180.jpg 180w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/mortar-and-pestle-1032055_1280-150x150.jpg 150w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/mortar-and-pestle-1032055_1280-200x200.jpg 200w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/mortar-and-pestle-1032055_1280-300x300.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/mortar-and-pestle-1032055_1280-600x600.jpg 600w" sizes="(max-width: 180px) 100vw, 180px" />		Mortar and Pestle	</a>
		<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>3.00</span></li><li>
	<a href="../../product/woo-album-3/index.html" title="Guitar">
		<img width="180" height="180" src="../../wp-content/uploads/2013/06/boy-1379812_1920-180x180.html" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2013/06/boy-1379812_1920-180x180.jpg 180w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/boy-1379812_1920-150x150.jpg 150w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/boy-1379812_1920-200x200.jpg 200w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/boy-1379812_1920-300x300.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/boy-1379812_1920-600x600.jpg 600w" sizes="(max-width: 180px) 100vw, 180px" />		Guitar	</a>
		<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>9.00</span></li></ul></aside><aside id="woocommerce_widget_cart-3" class="widget woocommerce widget_shopping_cart"><div><h2 class="widget-title">Your Cart</h2></div><div class="widget_shopping_cart_content"></div></aside>	</section><!-- #primary-sidebar -->
		</div>
		</div><!-- #row -->

	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>

<!-- Mirrored from rozex.us/themes/the-one/product-category/clothing/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Feb 2017 06:07:37 GMT -->
</html>