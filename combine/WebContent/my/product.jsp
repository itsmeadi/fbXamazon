<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="../xmlrpc.php">
	<title>${result.rows[0].name} &#8211; The ONE</title>
<link rel='dns-prefetch' href='http://s.w.org/' />
<link rel="alternate" type="application/rss+xml" title="The ONE &raquo; Feed" href="../feed/index.html" />
<link rel="alternate" type="application/rss+xml" title="The ONE &raquo; Comments Feed" href="../comments/feed/index.html" />
<link rel="alternate" type="application/rss+xml" title="The ONE &raquo; Black One Comments Feed" href="feed/index.html" />
		<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.2.1\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.2.1\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/rozex.us\/themes\/the-one\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.7.2"}};
			!function(a,b,c){function d(a){var b,c,d,e,f=String.fromCharCode;if(!k||!k.fillText)return!1;switch(k.clearRect(0,0,j.width,j.height),k.textBaseline="top",k.font="600 32px Arial",a){case"flag":return k.fillText(f(55356,56826,55356,56819),0,0),!(j.toDataURL().length<3e3)&&(k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57331,65039,8205,55356,57096),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57331,55356,57096),0,0),c=j.toDataURL(),b!==c);case"emoji4":return k.fillText(f(55357,56425,55356,57341,8205,55357,56507),0,0),d=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55357,56425,55356,57341,55357,56507),0,0),e=j.toDataURL(),d!==e}return!1}function e(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i,j=b.createElement("canvas"),k=j.getContext&&j.getContext("2d");for(i=Array("flag","emoji4"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
		

	<script type="text/javascript">var ajaxurl = '../wp-admin/admin-ajax.html';</script>

		<style type="text/css" rel="stylesheet">
						@media (max-width: 480px) {
						}

			@media (max-width: 768px) {
						}

			@media (max-width: 992px) {
						}

			@media (max-width: 1200px) {
						}
		</style>
		

 
<body class="product-template-default single single-product postid-99 woocommerce woocommerce-page wpb-js-composer js-comp-ver-5.0.1 vc_responsive no-js">

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<jsp:include page="../my/header.jsp"></jsp:include>



<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>
 
<sql:query dataSource="${snapshot}" var="result">
select * from products where id=${param.id};
</sql:query>
 


<!-- .masthead -->

<div class="container site-container right-sidebar">
	
		<div class="row">
		<div class="col-lg-9">
			
			<div id="main"><nav role="navigation" aria-label="Breadcrumbs" class="breadcrumb-trail breadcrumbs" itemprop="breadcrumb"><ul class="trail-items" itemscope itemtype="http://schema.org/BreadcrumbList"><meta name="numberOfItems" content="3" /><meta name="itemListOrder" content="Ascending" /><li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="trail-item trail-begin"><a href="../index.html" rel="home"><span itemprop="name">Home</span></a><meta itemprop="position" content="1" /></li><li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="trail-item"><a href="../shop/index.html"><span itemprop="name">Products</span></a><meta itemprop="position" content="2" /></li><li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="trail-item trail-end"><span itemprop="name">${result.rows[0].name}</span><meta itemprop="position" content="3" /></li></ul></nav>
<div id="container"><div id="content" role="main">
	<div class="content">
		
			

<div itemscope itemtype="http://schema.org/Product" id="product-99" class="single-product-container clearfix post-99 product type-product status-publish has-post-thumbnail product_cat-clothing post-item first instock sale shipping-taxable purchasable product-type-simple">

	
	<span class="onsale">Sale!</span>
<div class="images">

	<a href="" itemprop="image" class="woocommerce-main-image zoom" title="black-1226642_1920" data-rel="prettyPhoto[product-gallery]">
	<img width="600" height="600" src="../images/products/${result.rows[0].id}/1" class="attachment-shop_single size-shop_single wp-post-image" alt="" title="black-1226642_1920" srcset="../images/products/${result.rows[0].id}/1 600w, ../images/products/${result.rows[0].id}/2 150w, ../images/products/${result.rows[0].id}/3 200w, ../images/products/${result.rows[0].id}/4 180w, ../images/products/${result.rows[0].id}/5 300w" sizes="(max-width: 600px) 100vw, 600px" /></a>
		<div class="thumbnails"><a href="" class="zoom first" title="black-1226641_1920" data-rel="prettyPhoto[product-gallery]">
		<img width="180" height="180" src="" class="attachment-shop_thumbnail size-shop_thumbnail" alt="" srcset="../images/products/${result.rows[0].id}/2 180w, ../images/products/${result.rows[0].id}/3 150w, ../images/products/${result.rows[0].id}/4 200w, ../images/products/${result.rows[0].id}/5 300w, ../images/products/${result.rows[0].id}/5 600w" sizes="(max-width: 180px) 100vw, 180px" /></a><a href="../wp-content/uploads/2013/06/black-1226642_1920.html" class="zoom" title="black-1226642_1920" data-rel="prettyPhoto[product-gallery]"><img width="180" height="180" src="../wp-content/uploads/2013/06/black-1226642_1920-180x180.html" class="attachment-shop_thumbnail size-shop_thumbnail" alt="" srcset="../images/products/${result.rows[0].id}/3" sizes="(max-width: 180px) 100vw, 180px" /></a></div>
	
</div>

	<div class="summary entry-summary">

		
		<div class="product-header">
			<h1 itemprop="name" class="product_title entry-title">${result.rows[0].name}</h1>
			
	<div class="woocommerce-product-rating clearfix" itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
		<div class="star-rating" title="Rated 4.5 out of 5">
			<span style="width:90%"></span>
		</div>
		<a href="#reviews" class="woocommerce-review-link" rel="nofollow">(<span itemprop="ratingCount" class="count">2</span> reviews			)</a>


		
	</div>

			<hr class="title-separator"/>

			<div itemprop="offers" itemscope itemtype="http://schema.org/Offer">

				<meta itemprop="price" content="2"/>
				<meta itemprop="priceCurrency" content="USD"/>
				<link itemprop="availability" href="http://schema.org/InStock"/>

			</div>
			<p class="price"><!-- <del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>3.00</span></del>  --><ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">Rs.&nbsp</span>${result.rows[0].price}</span></ins></p>

			


	
	<form class="cart" method="post" action="../addtocart">
	 	
	 	<div class="quantity"><input name="quantity" value="1" title="Qty" class="input-text qty text" size="4" /></div>
	 	<input type="hidden" name="add-to-cart" value="99" />
		<input type="hidden" name="product-id" value="${result.rows[0].id}" />

	 	<button type="submit" class="single_add_to_cart_button button alt">Add to cart</button>

			</form>

	
			<span class="clearfix"></span>
			<div class="product_meta clearfix">

	
	
	
</div>
		</div>

		
			
<div class="product-description">
			<h2 class="title">Product Description</h2>
	
	<p>${result.rows[0].desp }</p>
</div>
			<div id="reviews">
	<div id="comments">
		<h2 class="clearfix">
			<span class="title">
				<i class="fa fa-angle-down"></i>
				Reviews			</span>
							<span class="count">2 reviews</span>
					</h2>

		
			<ol class="commentlist">
				<li itemprop="reviews" itemscope itemtype="http://schema.org/Review" class="comment even thread-even depth-1" id="li-comment-40">

	<div id="comment-40" class="comment_container">

		<div class="avatar">
			<img alt='Cobus Bester' src='http://0.gravatar.com/avatar/f0cde930b42c79145194679d5b6e3b1d?s=45&amp;d=mm&amp;r=g' srcset='http://0.gravatar.com/avatar/f0cde930b42c79145194679d5b6e3b1d?s=90&amp;d=mm&amp;r=g 2x' class='avatar avatar-45 photo' height='45' width='45' />		</div>

		<div class="comment-text">


			
				<p class="meta">
					<strong itemprop="author" class="author">Cobus Bester</strong> 					<time itemprop="datePublished" datetime="2013-06-07T11:58:43+00:00">June 7, 2013</time>
				</p>

			
			

				<div itemprop="reviewRating" itemscope itemtype="http://schema.org/Rating" class="woocommerce-product-rating clearfix" title="Rated 4 out of 5">

					<div class="star-rating" title="Rated 4 out of 5">
						<span style="width:80%"></span>
					</div>


				</div>

			
			<div itemprop="description" class="description"><p>This album proves why The Woo are the best band ever. Best music ever!</p>
</div>
		</div>
	</div>
</li><!-- #comment-## -->
<li itemprop="reviews" itemscope itemtype="http://schema.org/Review" class="comment odd alt thread-odd thread-alt depth-1" id="li-comment-41">

	<div id="comment-41" class="comment_container">

		<div class="avatar">
			<img alt='Maria' src='http://2.gravatar.com/avatar/59c82b1d2c60537f900fb191b3cb611b?s=45&amp;d=mm&amp;r=g' srcset='http://2.gravatar.com/avatar/59c82b1d2c60537f900fb191b3cb611b?s=90&amp;d=mm&amp;r=g 2x' class='avatar avatar-45 photo' height='45' width='45' />		</div>

		<div class="comment-text">


			
				<p class="meta">
					<strong itemprop="author" class="author">Maria</strong> 					<time itemprop="datePublished" datetime="2013-06-07T15:52:48+00:00">June 7, 2013</time>
				</p>

			
			

				<div itemprop="reviewRating" itemscope itemtype="http://schema.org/Rating" class="woocommerce-product-rating clearfix" title="Rated 5 out of 5">

					<div class="star-rating" title="Rated 5 out of 5">
						<span style="width:100%"></span>
					</div>


				</div>

			
			<div itemprop="description" class="description"><p>Can’t wait to start mixin’ with this one! Irba-irr-Up-up-up-up-date your theme!</p>
</div>
		</div>
	</div>
</li><!-- #comment-## -->
			</ol>

			
			</div>

	
		<div id="review_form_wrapper">
			<div id="review_form">
					<div id="respond" class="comment-respond">
		<h3 id="reply-title" class="comment-reply-title">Add a review <small><a rel="nofollow" id="cancel-comment-reply-link" href="index.html#respond" style="display:none;">Cancel reply</a></small></h3>			<form action="http://rozex.us/themes/the-one/wp-comments-post.php" method="post" id="commentform" class="comment-form" novalidate>
				<p class="comment-form-rating clearfix"><label for="rating">Your Rating</label><select name="rating" id="rating">
							<option value="">Rate&hellip;</option>
							<option value="5">Perfect</option>
							<option value="4">Good</option>
							<option value="3">Average</option>
							<option value="2">Not that bad</option>
							<option value="1">Very Poor</option>
						</select></p><p class="comment-form-comment"><label for="comment">Your Review</label><textarea id="comment" name="comment" cols="45" rows="8" aria-required="true"></textarea></p><div class="clearfix"><p class="comment-form-author"><input id="author" name="author" placeholder="Name" type="text"  size="30" aria-required="true" /></p>
<p class="comment-form-email"><input id="email" name="email" placeholder="Email" type="text"   size="30" aria-required="true" /></p></div>
<p class="form-submit"><input name="submit" type="submit" id="submit" class="submit" value="Submit" /> <input type='hidden' name='comment_post_ID' value='99' id='comment_post_ID' />
<input type='hidden' name='comment_parent' id='comment_parent' value='0' />
</p>			</form>
			</div><!-- #respond -->
				</div>
		</div>

	
	<div class="clear"></div>
</div>
	

	</div>
	<!-- .summary -->

	<span class="clearfix"></span>

	
	<div class="related products">

		<h2>Related Products</h2>

		<ul class="to-products clearfix ">
		
			<li class="post-105 product type-product status-publish has-post-thumbnail product_cat-clothing post-item  instock shipping-taxable purchasable product-type-simple">

	<a href="../ninja-silhouette/index.html" class="woocommerce-LoopProduct-link">

	<span class="product-thumb" style="background-image: url(../wp-content/uploads/2013/06/T_5_front-300x300.jpg);"></span>
	<h3>Ninja Silhouette</h3>

	
	<div class="star-rating" title="Rated 5 out of 5"><span style="width:100%"><strong class="rating">5</strong> out of 5</span></div>
	<span class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>20.00</span></span>


	</a><a href="index3f1f.html?add-to-cart=105" rel="nofollow" data-product_id="105" data-product_sku="" data-quantity="1" class="button add_to_cart_button product_type_simple">Add to cart</a>
</li>
		
			<li class="post-110 product type-product status-publish has-post-thumbnail product_cat-clothing post-item last instock shipping-taxable purchasable product-type-simple">

	<a href="../patient-ninja/index.html" class="woocommerce-LoopProduct-link">

	<span class="product-thumb" style="background-image: url(../wp-content/uploads/2013/06/hoodie_3_front-300x300.jpg);"></span>
	<h3>Patient Ninja</h3>

	
	<div class="star-rating" title="Rated 4.67 out of 5"><span style="width:93.4%"><strong class="rating">4.67</strong> out of 5</span></div>
	<span class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>35.00</span></span>


	</a><a href="indexfc38.html?add-to-cart=110" rel="nofollow" data-product_id="110" data-product_sku="" data-quantity="1" class="button add_to_cart_button product_type_simple">Add to cart</a>
</li>
		
			<li class="post-104 product type-product status-publish has-post-thumbnail product_cat-clothing post-item  instock shipping-taxable purchasable product-type-variable has-default-attributes has-children">

	<a href="../ship-your-idea/index.html" class="woocommerce-LoopProduct-link">

	<span class="product-thumb" style="background-image: url(../wp-content/uploads/2013/06/T_4_front-300x300.jpg);"></span>
	<h3>Ship Your Idea</h3>

	
	<div class="star-rating" title="Rated 4.33 out of 5"><span style="width:86.6%"><strong class="rating">4.33</strong> out of 5</span></div>
	<span class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>20.00</span></span>


	</a><a href="../ship-your-idea/index.html" rel="nofollow" data-product_id="104" data-product_sku="" data-quantity="1" class="button add_to_cart_button product_type_variable">Select options</a>
</li>
		
			<li class="post-112 product type-product status-publish has-post-thumbnail product_cat-clothing post-item last instock shipping-taxable purchasable product-type-simple">

	<a href="../ninja-silhouette-2/index.html" class="woocommerce-LoopProduct-link">

	<span class="product-thumb" style="background-image: url(../wp-content/uploads/2013/06/hoodie_5_front-300x300.jpg);"></span>
	<h3>Ninja Silhouette</h3>

	
	<div class="star-rating" title="Rated 4 out of 5"><span style="width:80%"><strong class="rating">4</strong> out of 5</span></div>
	<span class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>35.00</span></span>


	</a><a href="index0235.html?add-to-cart=112" rel="nofollow" data-product_id="112" data-product_sku="" data-quantity="1" class="button add_to_cart_button product_type_simple">Add to cart</a>
</li>
		
		</ul>
	</div>


	<meta itemprop="url" content=""/>

</div><!-- #product-99 -->


			</div>

</div></div>

</div><!-- #main -->

	</div><!-- #content-column -->
			<div class="col-lg-3">
				<section class="widget-area" id="sidebar">
		<aside id="woocommerce_product_categories-4" class="widget woocommerce widget_product_categories"><div><h2 class="widget-title">Product Categories</h2></div><ul class="product-categories"><li class="cat-item cat-item-27 current-cat"><a href="../product-category/clothing/index.html">Clothing</a></li>
<li class="cat-item cat-item-30"><a href="../product-category/gadgets/index.html">Gadgets</a></li>
<li class="cat-item cat-item-61"><a href="../product-category/home-kitchen/index.html">Home and Kitchen</a></li>
<li class="cat-item cat-item-29"><a href="../product-category/music/index.html">Music</a></li>
<li class="cat-item cat-item-62"><a href="../product-category/toys/index.html">Toys</a></li>
</ul></aside><aside id="woocommerce_product_search-2" class="widget woocommerce widget_product_search"><div><h2 class="widget-title">Search Products</h2></div>
<form role="search" method="get" class="woocommerce-product-search" action="http://rozex.us/themes/the-one/">
	<label class="screen-reader-text" for="woocommerce-product-search-field">Search for:</label>
	<input type="search" id="woocommerce-product-search-field" class="search-field" placeholder="Search Products&hellip;" value="" name="s" title="Search for:"/>
	<button type="submit"></button>
	<input type="hidden" name="post_type" value="product"/>
</form>
</aside><aside id="woocommerce_products-2" class="widget woocommerce widget_products"><div><h2 class="widget-title">Latest Products</h2></div><ul class="product_list_widget"><li>
	<a href="index.html" title="Black One">
		<img width="180" height="180" src="../images/products/${result.rows[0].id}/3" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2013/06/black-1226642_1920-180x180.jpg 180w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/black-1226642_1920-150x150.jpg 150w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/black-1226642_1920-200x200.jpg 200w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/black-1226642_1920-300x300.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/black-1226642_1920-600x600.jpg 600w" sizes="(max-width: 180px) 100vw, 180px" />		Black One	</a>
		<del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>3.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>2.00</span></ins></li><li>
	<a href="../woo-album-4/index.html" title="White One">
		<img width="180" height="180" src="../wp-content/uploads/2013/06/woman-1472767_1920-180x180.jpg" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2013/06/woman-1472767_1920-180x180.jpg 180w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/woman-1472767_1920-150x150.jpg 150w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/woman-1472767_1920-200x200.jpg 200w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/woman-1472767_1920-300x300.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/woman-1472767_1920-600x600.jpg 600w" sizes="(max-width: 180px) 100vw, 180px" />		White One	</a>
		<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>9.00</span></li><li>
	<a href="../woo-single-1/index.html" title="Mortar and Pestle">
		<img width="180" height="180" src="../wp-content/uploads/2013/06/mortar-and-pestle-1032055_1280-180x180.html" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2013/06/mortar-and-pestle-1032055_1280-180x180.jpg 180w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/mortar-and-pestle-1032055_1280-150x150.jpg 150w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/mortar-and-pestle-1032055_1280-200x200.jpg 200w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/mortar-and-pestle-1032055_1280-300x300.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/mortar-and-pestle-1032055_1280-600x600.jpg 600w" sizes="(max-width: 180px) 100vw, 180px" />		Mortar and Pestle	</a>
		<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>3.00</span></li><li>
	<a href="../woo-album-3/index.html" title="Guitar">
		<img width="180" height="180" src="../wp-content/uploads/2013/06/boy-1379812_1920-180x180.html" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2013/06/boy-1379812_1920-180x180.jpg 180w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/boy-1379812_1920-150x150.jpg 150w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/boy-1379812_1920-200x200.jpg 200w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/boy-1379812_1920-300x300.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/boy-1379812_1920-600x600.jpg 600w" sizes="(max-width: 180px) 100vw, 180px" />		Guitar	</a>
		<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>9.00</span></li></ul></aside><aside id="woocommerce_widget_cart-3" class="widget woocommerce widget_shopping_cart"><div><h2 class="widget-title">Your Cart</h2></div><div class="widget_shopping_cart_content"></div></aside>	</section><!-- #primary-sidebar -->
		</div>
		</div><!-- #row -->

	</div><!-- #container -->

<jsp:include page="footer.jsp"></jsp:include>
<!-- #colophon -->

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../../www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-90765919-2', 'auto');
  ga('send', 'pageview');

</script>
		<div id="to-login-modal" class="modal fade to-modal" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header clearfix">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Login</h4>
														<div class="options register">
									<span>not a member?</span>
									<a href="../register/index.html" class="to-btn to-primary-btn">Register</a>
								</div>
												</div>
					<div class="modal-body">
						<form action="http://rozex.us/themes/the-one/wp-login.php" method="post" class="to-login-form clearfix ajax">

				<div class="to-preloader">
		<div class="to-loader">
			<div class="rect1"></div>
			<div class="rect2"></div>
			<div class="rect3"></div>
			<div class="rect4"></div>
			<div class="rect5"></div>
		</div>
	</div>
			<p class="ajax-alert"></p>
	
	<p class="login-username">
		<label>
						<input type="text" name="log" class="user-name" placeholder="Username">
		</label>
	</p>
	<p>
		<label>
						<input type="password" name="pwd" class="password" placeholder="Password">
		</label>
	</p>

	<p class="login-remember">
		<label>
			<input name="rememberme" type="checkbox" class="rememberme" value="forever">
			Remember Me		</label>
	</p>

	<p class="login-submit">
		<input type="submit" name="wp-submit" class="to-btn" value="Log In">
		<input type="hidden" name="redirect_to" value="http://rozex.us/themes/the-one/product/woo-single-2/">
	</p>

</form>					</div>
				</div>
			</div>
		</div>
		<link rel='stylesheet' id='js_composer_front-css'  href='../wp-content/uploads/js_composer/js_composer_front_custom972f.css?ver=5.0.1' type='text/css' media='all' />
<link rel='stylesheet' id='animate-css-css'  href='../wp-content/plugins/js_composer/assets/lib/bower/animate-css/animate.min972f.css?ver=5.0.1' type='text/css' media='all' />
<script type='text/javascript' src='../wp-includes/js/underscore.min4511.js?ver=1.8.3'></script>
<script type='text/javascript' src='../wp-includes/js/backbone.min9632.js?ver=1.2.3'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var template_url = "index.html\/\/rozex.us\/themes\/the-one\/wp-admin\/admin-ajax.php?action=rtmedia_get_template&template=media-gallery-item";
var rtmedia_exteansions = {"photo":["jpg","jpeg","png","gif"],"video":["mp4"],"music":["mp3"]};
var rtMedia_plupload_config = {"url":"\/themes\/the-one\/product\/woo-single-2\/upload\/","runtimes":"html5,flash,html4","browse_button":"rtMedia-upload-button","container":"rtmedia-upload-container","drop_element":"drag-drop-area","filters":[{"title":"Media Files","extensions":"jpg,jpeg,png,gif,mp4,mp3"}],"max_file_size":"8M","multipart":"1","urlstream_upload":"1","flash_swf_url":"http:\/\/rozex.us\/themes\/the-one\/wp-includes\/js\/plupload\/plupload.flash.swf","silverlight_xap_url":"http:\/\/rozex.us\/themes\/the-one\/wp-includes\/js\/plupload\/plupload.silverlight.xap","file_data_name":"rtmedia_file","multi_selection":"1","multipart_params":{"redirect":"no","action":"wp_handle_upload","_wp_http_referer":"\/themes\/the-one\/product\/woo-single-2\/","mode":"file_upload","rtmedia_upload_nonce":"231b56c23e"},"max_file_size_msg":"32M"};
var rMedia_loading_file = "index.html\/\/rozex.us\/themes\/the-one\/wp-admin\/images\/loading.gif";
var rMedia_loading_media = "index.html\/\/rozex.us\/themes\/the-one\/wp-content\/plugins\/buddypress-media\/app\/assets\/admin\/img\/boxspinner.gif";
var rtmedia_media_thumbs = {"photo":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/plugins\/buddypress-media\/app\/assets\/admin\/img\/image_thumb.png","video":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/plugins\/buddypress-media\/app\/assets\/admin\/img\/video_thumb.png","music":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/plugins\/buddypress-media\/app\/assets\/admin\/img\/audio_thumb.png"};
var rtmedia_set_featured_image_msg = "Featured media set successfully.";
var rtmedia_unset_featured_image_msg = "Featured media removed successfully.";
var rtmedia_edit_media_info_upload = {"title":"Title:","description":"Description:"};
var rtmedia_backbone_strings = {"rtm_edit_file_name":"Edit File Name"};
var rtmedia_load_more_or_pagination = "load_more";
var rtmedia_bp_enable_activity = "1";
var rtmedia_upload_progress_error_message = "There are some uploads in progress. Do you want to cancel them?";
/* ]]> */
</script>
<script type='text/javascript' src='../wp-content/plugins/buddypress-media/app/assets/js/rtMedia.backbone50fa.js?ver=4.2.1'></script>
<script type='text/javascript' src='../wp-content/plugins/buddypress/bp-core/js/vendor/jquery.caret.minae29.js?ver=2.7.4'></script>
<script type='text/javascript' src='../wp-content/plugins/buddypress/bp-core/js/vendor/jquery.atwho.minae29.js?ver=2.7.4'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var BP_Suggestions = {"friends":[{"ID":"akul","image":"\/\/www.gravatar.com\/avatar\/c6ba8f9f458217c0ec359d58204b8b44?s=50&#038;r=g&#038;d=mm","name":"akul chhillar"},{"ID":"ukub","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/7\/fb532b3dbec496a1ccfe0e7223f09cb5-bpthumb.jpg","name":"Alivia"},{"ID":"bodi","image":"\/\/www.gravatar.com\/avatar\/489743a65d4b8f5d41886360f5e01e6e?s=50&#038;r=g&#038;d=mm","name":"bodi"},{"ID":"brad","image":"\/\/www.gravatar.com\/avatar\/0b4f545f7a77b1ee7ff7b9b02f32575f?s=50&#038;r=g&#038;d=mm","name":"brad"},{"ID":"brufel","image":"\/\/www.gravatar.com\/avatar\/27da0a66803ce9105e470ddbe0a2fcbe?s=50&#038;r=g&#038;d=mm","name":"Bruno Brito"},{"ID":"eziuka","image":"\/\/www.gravatar.com\/avatar\/597376063225181b259e59012a552e31?s=50&#038;r=g&#038;d=mm","name":"Clinton"},{"ID":"daveadam","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/85\/58a4272962a06-bpthumb.png","name":"dave jones"},{"ID":"mateo-nikolaus","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/10\/2a0385b4294363fbe49645fc33697406-bpthumb.jpg","name":"Dominique"},{"ID":"dude","image":"\/\/www.gravatar.com\/avatar\/0c9a68bc198d1bd56948cd54cb9e48fc?s=50&#038;r=g&#038;d=mm","name":"Dude Tester"},{"ID":"ellieb","image":"\/\/www.gravatar.com\/avatar\/0d67d45f14517ae92418a70f433f6249?s=50&#038;r=g&#038;d=mm","name":"ellie"},{"ID":"efortinca","image":"\/\/www.gravatar.com\/avatar\/6e65fd4642af318d50a5cbf123ffd71d?s=50&#038;r=g&#038;d=mm","name":"Eric"},{"ID":"wbarrows","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/15\/80547fb442eea03e1dae1936ccca1d84-bpthumb.jpg","name":"Erica"},{"ID":"ghjf","image":"\/\/www.gravatar.com\/avatar\/c3070b9a10edecd84b04cf3b4425a10a?s=50&#038;r=g&#038;d=mm","name":"gnhgj"},{"ID":"eloise29","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/11\/aad2b80bfa3259fe5bd9cbff28aa1366-bpthumb.jpg","name":"Jacinthe"},{"ID":"janatan","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/34\/57e133fc224db-bpthumb.jpg","name":"Janatan"},{"ID":"jaspermaloney","image":"\/\/www.gravatar.com\/avatar\/ba5105dc854d0758f906377eeaf6c004?s=50&#038;r=g&#038;d=mm","name":"Jasper Maloney"},{"ID":"john","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/3\/6e6f9ddcd7b342282bf2ae408d840d1f-bpthumb.jpg","name":"John Doe"},{"ID":"lesley-cummerata","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/13\/15b52334677453f5b842d5eb776b6e96-bpthumb.jpg","name":"Junior"},{"ID":"corene-oreilly","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/12\/1d0fbe43ed8ec0ed9e945ec167fb3f67-bpthumb.jpg","name":"Katrina"},{"ID":"lanetteam","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/54\/588b2f631d4dc-bpthumb.jpg","name":"lanetteam"},{"ID":"grant-leonel","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/16\/e2b7d49948d9d54f4a37196aabb20220-bpthumb.jpg","name":"Leila"},{"ID":"shad88","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/5\/b9ad1d4692a8f1e591ccc36e8a5b502c-bpthumb.jpg","name":"Linwood"},{"ID":"loviewootton10","image":"\/\/www.gravatar.com\/avatar\/962838506c7e820189c3bc5d041b0398?s=50&#038;r=g&#038;d=mm","name":"Lovie Wootton"},{"ID":"kevin55","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/4\/93801118c781611c731f526f908d37cf-bpthumb.jpg","name":"Lue"},{"ID":"mohr-hailie","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/14\/17a3a95c34d89d0049d898d622ee1097-bpthumb.jpg","name":"Maegan"},{"ID":"maicol","image":"\/\/www.gravatar.com\/avatar\/fd6c5d75d7231b37ad1bdaf8e382b557?s=50&#038;r=g&#038;d=mm","name":"maicol"},{"ID":"manuel-rice","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/9\/386130e620f3f609834e7a73251c81f5-bpthumb.jpg","name":"Mariano"},{"ID":"mauricio420r","image":"\/\/www.gravatar.com\/avatar\/a745656d717c0e3ed6a49f4c84ca51da?s=50&#038;r=g&#038;d=mm","name":"MAURICIO"},{"ID":"mervs","image":"\/\/www.gravatar.com\/avatar\/7813642b8f62d861d2642f5ed79e92e1?s=50&#038;r=g&#038;d=mm","name":"Mervin Esmaquel"},{"ID":"minnalouden632","image":"\/\/www.gravatar.com\/avatar\/966d27c29e9535fd3277dfae545ff113?s=50&#038;r=g&#038;d=mm","name":"Minna Louden"},{"ID":"misterdiouf","image":"\/\/www.gravatar.com\/avatar\/a5407e094e967fc4991b61a99296cd04?s=50&#038;r=g&#038;d=mm","name":"Moustapha Diouf"},{"ID":"nater","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/65\/5894d78ddc8b9-bpthumb.png","name":"Nate"},{"ID":"fernando-wintheiser","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/8\/ee0f54a6f8445b47a45b30e6c378aaee-bpthumb.jpg","name":"Norene"},{"ID":"pjportma","image":"\/\/www.gravatar.com\/avatar\/c2b1b12fd31678ebcb71be72792289ef?s=50&#038;r=g&#038;d=mm","name":"Peter Portman"},{"ID":"tragandateb1974","image":"\/\/www.gravatar.com\/avatar\/28172bd4883226e23f3e441307b14b1a?s=50&#038;r=g&#038;d=mm","name":"Rachel"},{"ID":"ali","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/2\/be8bf1ab335f57151832bc8a01e5bc05-bpthumb.jpg","name":"Roberto Mendez"},{"ID":"roslynemerson3","image":"\/\/www.gravatar.com\/avatar\/309341a88dc1b1c7982018d491463430?s=50&#038;r=g&#038;d=mm","name":"Roslyn Emerson"},{"ID":"sailee","image":"\/\/www.gravatar.com\/avatar\/9cc11d82fd7cfc57bb814a25841a01a3?s=50&#038;r=g&#038;d=mm","name":"sailee"},{"ID":"pippo","image":"\/\/www.gravatar.com\/avatar\/062a3412397f28b4993c49cc0e71ad0e?s=50&#038;r=g&#038;d=mm","name":"stocazzo"},{"ID":"sudarshan","image":"\/\/www.gravatar.com\/avatar\/45434e5e7ea44bbf44d273540d97e8d0?s=50&#038;r=g&#038;d=mm","name":"sudarshan"},{"ID":"hamadtag","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/77\/589e4dafa5a7c-bpthumb.jpg","name":"tag"},{"ID":"vahiddd","image":"\/\/www.gravatar.com\/avatar\/515b9d6dcad333416a1f97c3d3b5bf49?s=50&#038;r=g&#038;d=mm","name":"Vahid"},{"ID":"vahidd","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/1\/d433ad84e7c41aa830779885c8c37a6f-bpthumb.jpg","name":"Vahidd"},{"ID":"amina60","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/6\/02f9f1fc9b4d9c795a171fc6bd39115e-bpthumb.jpg","name":"Valerie"},{"ID":"slowwind1","image":"\/\/www.gravatar.com\/avatar\/913b34c141f72d200b90ae0025f99ea5?s=50&#038;r=g&#038;d=mm","name":"Vguh"}]};
/* ]]> */
</script>
<script type='text/javascript' src='../wp-content/plugins/buddypress/bp-activity/js/mentions.minae29.js?ver=2.7.4'></script>
<script type='text/javascript' src='../wp-includes/js/comment-reply.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='../wp-content/plugins/woocommerce/assets/js/prettyPhoto/jquery.prettyPhoto.min005e.html?ver=3.1.6'></script>
<script type='text/javascript' src='../wp-content/plugins/woocommerce/assets/js/prettyPhoto/jquery.prettyPhoto.init.min8dc7.html?ver=2.6.13'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_single_product_params = {"i18n_required_rating_text":"Please select a rating","review_rating_required":"yes"};
/* ]]> */
</script>
<script type='text/javascript' src='../wp-content/plugins/woocommerce/assets/js/frontend/single-product.min8dc7.html?ver=2.6.13'></script>
<script type='text/javascript' src='../wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min44fd.js?ver=2.70'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/themes\/the-one\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/themes\/the-one\/product\/woo-single-2\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script>
<script type='text/javascript' src='../wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min8dc7.js?ver=2.6.13'></script>
<script type='text/javascript' src='../wp-content/plugins/woocommerce/assets/js/jquery-cookie/jquery.cookie.min330a.js?ver=1.4.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/themes\/the-one\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/themes\/the-one\/product\/woo-single-2\/?wc-ajax=%%endpoint%%","fragment_name":"wc_fragments"};
/* ]]> */
</script>
<script type='text/javascript' src='../wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min8dc7.js?ver=2.6.13'></script>
<script type='text/javascript' src='../wp-content/themes/the-one/includes/icon-picker/assets/js/scripts5152.js?ver=1.0'></script>
<script type='text/javascript' src='../wp-content/plugins/buddypress-media/lib/touchswipe/jquery.touchSwipe.min50fa.js?ver=4.2.1'></script>
<script type='text/javascript' src='../wp-includes/js/wp-embed.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='../wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min972f.js?ver=5.0.1'></script>
<script type='text/javascript' src='../wp-content/plugins/js_composer/assets/lib/waypoints/waypoints.min972f.js?ver=5.0.1'></script>

</body>

</html>