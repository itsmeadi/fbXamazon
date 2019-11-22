<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<footer id="main-footer" class="site-footer">
	<div class="widget-area">
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-xs-12"><aside id="to-news-letter-widget-2" class="widget widget_to-news-letter-widget"><div><h2 class="widget-title">Subscribe</h2></div>		<form class="feedburner-subscribe-form" action="http://feedburner.google.com/fb/a/mailverify" method="post" target="popupwindow" onsubmit="window.open('http://feedburner.google.com/fb/a/mailverify?uri=#', 'popupwindow', 'scrollbars=yes,width=550,height=520');return true">
			<input type="email" name="email" placeholder="Email Address">
			<input type="hidden" value="#" name="uri">
			<input type="hidden" name="loc" value="en_US">
			<button class="to-btn primary">Submit</button>
		</form>
		</aside>
		<aside id="to-recent-posts-widget-2" class="widget widget_to-recent-posts-widget"><div><h2 class="widget-title">Recent Posts</h2></div>			<ul class="to-simple-posts-list">
						<sql:query dataSource="${snapshot}" var="result">
select * from publish where type='.octet-stream';
</sql:query>
 
<c:forEach var="row" items="${result.rows}">
				
<li>
						<span class="post-date">${row.date }</span>
						<a href="" class="post-title">${row.content }</a>
					</li>
					
		</c:forEach>			
									
									
									
				</ul></aside><aside id="tag_cloud-3" class="widget widget_tag_cloud"><div><h2 class="widget-title">Popular Tags</h2></div><div class="tagcloud"><a href='../tag/apple/index.html' class='tag-link-47 tag-link-position-1' title='1 topic' style='font-size: 8pt;'>apple</a>
<a href='../tag/business/index.html' class='tag-link-46 tag-link-position-2' title='1 topic' style='font-size: 8pt;'>business</a>
<a href='../tag/cafeeshop/index.html' class='tag-link-50 tag-link-position-3' title='1 topic' style='font-size: 8pt;'>cafeeshop</a>
<a href='../tag/career/index.html' class='tag-link-54 tag-link-position-4' title='1 topic' style='font-size: 8pt;'>career</a>
<a href='../tag/developers/index.html' class='tag-link-52 tag-link-position-5' title='1 topic' style='font-size: 8pt;'>developers</a>
<a href='../tag/fashion/index.html' class='tag-link-35 tag-link-position-6' title='2 topics' style='font-size: 14.3pt;'>Fashion</a>
<a href='../tag/freelance/index.html' class='tag-link-51 tag-link-position-7' title='1 topic' style='font-size: 8pt;'>freelance</a>
<a href='../tag/jobs/index.html' class='tag-link-53 tag-link-position-8' title='1 topic' style='font-size: 8pt;'>jobs</a>
<a href='../tag/kids/index.html' class='tag-link-42 tag-link-position-9' title='1 topic' style='font-size: 8pt;'>Kids</a>
<a href='../tag/lego/index.html' class='tag-link-43 tag-link-position-10' title='1 topic' style='font-size: 8pt;'>Lego</a>
<a href='../tag/life/index.html' class='tag-link-39 tag-link-position-11' title='4 topics' style='font-size: 22pt;'>Life</a>
<a href='../tag/movie/index.html' class='tag-link-36 tag-link-position-12' title='1 topic' style='font-size: 8pt;'>Movie</a>
<a href='../tag/news/index.html' class='tag-link-40 tag-link-position-13' title='3 topics' style='font-size: 18.5pt;'>News</a>
<a href='../tag/parents/index.html' class='tag-link-44 tag-link-position-14' title='1 topic' style='font-size: 8pt;'>Parents</a>
<a href='../tag/podcast/index.html' class='tag-link-48 tag-link-position-15' title='1 topic' style='font-size: 8pt;'>podcast</a>
<a href='../tag/style/index.html' class='tag-link-34 tag-link-position-16' title='3 topics' style='font-size: 18.5pt;'>Style</a>
<a href='../tag/tech/index.html' class='tag-link-38 tag-link-position-17' title='4 topics' style='font-size: 22pt;'>Tech</a></div>
</aside></div><div class="col-sm-4 col-xs-12"><aside id="woocommerce_widget_cart-2" class="widget woocommerce widget_shopping_cart"><div><h2 class="widget-title">Cart</h2></div><div class="widget_shopping_cart_content"></div></aside><aside id="woocommerce_top_rated_products-5" class="widget woocommerce widget_top_rated_products"><div><h2 class="widget-title">Top Rated Products</h2></div><ul class="product_list_widget"><li>
	 
<sql:query dataSource="${snapshot}" var="resultp">
select * from products where id>10 order by id desc;
</sql:query>
 
<c:forEach var="rowp" items="${resultp.rows}">
				

					
	<a href="product?id=${rowp.id }" title="${rowp.name }">
		<img width="180" height="180" src="../images/products/${rowp.id}/1" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" " />		${rowp.name }	
		</a>
		
	<div class="star-rating" title="Rated 5 out of 5"><span style="width:100%"><strong class="rating">5</strong> out of 5</span></div>	<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>9.00</span></li><li>
	</c:forEach>
	<li class="cat-item cat-item-30"><a href="../product-category/gadgets/index.html">Gadgets</a> <span class="count">(6)</span></li>
<li class="cat-item cat-item-61"><a href="../product-category/home-kitchen/index.html">Home and Kitchen</a> <span class="count">(4)</span></li>
<li class="cat-item cat-item-29"><a href="../product-category/music/index.html">Music</a> <span class="count">(3)</span></li>
<li class="cat-item cat-item-62"><a href="../product-category/toys/index.html">Toys</a> <span class="count">(4)</span></li>
</ul></aside></div><div class="col-sm-4 col-xs-12"><aside id="text-6" class="widget widget_text"><div><h2 class="widget-title">About</h2></div>			<div class="textwidget"><p>THE ONE is a multipurpose website with shopping and chatting.<br />

A multipurpose website Responsive, Mobile-First, Retina Ready, Community, Social.</p>
</div>
		</aside><aside id="search-5" class="widget widget_search"><form role="search" method="get" class="search-form" action="http://rozex.us/themes/the-one/">
	<label>
		<input type="search" class="search-field" placeholder="Search &hellip;" value="" name="s" title="Search for:"/>
	</label>
	<button class="search-submit"></button>
</form></aside>
<aside id="categories-4" class="widget widget_categories">
<div>
<!-- 
<h2 class="widget-title">Categories</h2></div>		<ul>
	<li class="cat-item cat-item-66"><a href="../category/all/index.html" >All</a>
</li>
	<li class="cat-item cat-item-49"><a href="../category/culture/index.html" >Culture</a>
</li>
	<li class="cat-item cat-item-55"><a href="../category/general/index.html" >General</a>
</li>
	<li class="cat-item cat-item-41"><a href="../category/life/index.html" >Life</a>
</li>
	<li class="cat-item cat-item-45"><a href="../category/technology/index.html" >Technology</a>
</li>
	<li class="cat-item cat-item-1"><a href="../category/uncategorized/index.html" >Uncategorized</a>
</li>
		</ul>
</aside>

<aside id="to-login-3" class="widget widget_to-login"><form name="loginform" action="http://rozex.us/themes/the-one/wp-login.php" method="post" class="to-login-form">
	<p class="login-username">
		<input type="text" name="log" class="input user-login" value="" placeholder="Username"/>
	</p>

	<p class="login-password">
		<input type="password" name="pwd" class="input" value="" placeholder="Password"/>
	</p>

	<p class="login-remember">
		<label>
			<input name="rememberme" type="checkbox" value="forever"/> Remember Me		</label>
	</p>

	<p class="login-submit">
		<input type="submit" name="wp-submit" class="button-primary" value="Log In"/>
		<input type="hidden" name="redirect_to" value="index.html"/>

					<a href="../register/index.html" class="register">Register</a>
			</p>
</form></aside>
 -->
<aside id="to-social-media-widget-4" class="widget widget_to-social-media-widget"><div><h2 class="widget-title">Connect Us</h2></div><div class="to-social-icons clearfix">		<a href="https://www.facebook.com/rozexstudio"><i class="icon icon-facebook"></i></a>
				<a href="https://twitter.com/rozexstudio"><i class="icon icon-twitter"></i></a>
				<a href="https://www.instagram.com/rozexthemes/"><i class="icon icon-instagram"></i></a>
		</div></aside><aside id="bp_core_recently_active_widget-6" class="widget widget_bp_core_recently_active_widget buddypress widget"><div><h2 class="widget-title">Recently Active Members</h2></div>
		
			<div class="avatar-block">
 
<sql:query dataSource="${snapshot}" var="result">
select * from user;
</sql:query>
 
<c:forEach var="row" items="${result.rows}">
				
					<div class="item-avatar">
						<a href="timeline?id=${row.id}" title="brad"><img src="../images/${row.id}/dp" class="avatar user-88-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of brad" /></a>
					</div>

					</c:forEach>
			</div>

		
		</aside></div>			</div>
		</div>
	</div>

	<nav id="footer-nav" class="menu-nav clearfix">
		<div class="container">
					</div>
	</nav>

	<!-- <div class="footer-options">
		<div class="container">
			<div class="copyright">
				<i class="fa fa-copyright"></i> All Rights Reserved.			</div>
							<div class="social-icons">
					<div class="to-social-icons clearfix">		<a href="https://www.facebook.com/rozexstudio"><i class="icon icon-facebook"></i></a>
				<a href="https://twitter.com/rozexstudio"><i class="icon icon-twitter"></i></a>
				<a href="https://www.instagram.com/rozexthemes/"><i class="icon icon-instagram"></i></a>
		</div>				</div>
					</div>
	</div>
 -->
</footer>
<!-- <div id="to-login-modal" class="modal fade to-modal" role="dialog" style="display: none;">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header clearfix">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h4 class="modal-title">Login</h4>
														<div class="options register">
									<span>not a member?</span>
									<a href="signup.jsp" class="to-btn to-primary-btn">Register</a>
								</div>
												</div>
					<div class="modal-body">
						<form action="../signin" method="post" class="to-login-form clearfix ajax">

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
						<input type="text" name="email" class="user-name" placeholder="Username">
		</label>
	</p>
	<p>
		<label>
						<input type="password" name="password" class="password" placeholder="Password">
		</label>
	</p>

	<p class="login-remember">
		<label>
			<input name="rememberme" type="checkbox" class="rememberme" value="forever">
			Remember Me		</label>
	</p>

	<p class="login-submit">
		<input type="submit" name="wp-submit" class="to-btn" value="Log In">
		<input type="hidden" name="redirect_to" value="http://rozex.us/themes/the-one/">
	</p>

</form>					</div>
				</div>
			</div>
		</div>
		-->