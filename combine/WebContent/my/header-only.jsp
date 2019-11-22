<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<header class="masthead sticky fixed">

	<div class="container">
		<div class="row">
			<div class="col-xs-12 visible-xs">
				<div class="mobile-nav-trigger">
					<div class="nav-icon"></div>
				</div>
			</div>
			<div class="logo-column col-lg-2 col-xs-12 col-sm-4 col-md-12">
				<a href="../" class="logo">
					<img src="../wp-content/uploads/2016/05/logo.png" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2016/05/logo@2x.png 2x" alt="The ONE"/>				</a>
			</div>
			<div class="col-lg-10 col-sm-12 col-md-12" style="position: static;">
				<div class="nav--tools float-right clearfix">
					<div class="tools float-right clearfix">
							<div class="shop-cart float-left">
								<a class="force-hide-trigger" href="#">
									<i class="glyphicon glyphicon-user"></i>
									<span class="badge badge-notify">${sessionScope.requests }</span>
								</a>

								<div class="cart-items force-hide">
									<div class="widget_shopping_cart_content">
									<jsp:include page="request.jsp"></jsp:include>
									</div>
								</div>
							</div>
							<div class="shop-cart float-left">
								<a class="force-hide-trigger" href="#">
									<i class="icon icon-basket"></i>
									<span class="badge badge-notify">${sessionScope.cartcount }</span>
								</a>

								<div class="cart-items force-hide">
									<div class="widget_shopping_cart_content"></div>
									<jsp:include page="minicart.jsp"></jsp:include>
								</div>
							</div>
							<div class="shop-cart float-left">
								<a class="force-hide-trigger" href="#">
									<i class="glyphicon glyphicon-globe"></i>
									<span class="badge badge-notify">${sessionScope.notifications }</span>
								</a>

								<div class="cart-items force-hide">
									<div class="widget_shopping_cart_content"></div>
									<jsp:include page="notification.jsp"></jsp:include>
								</div>
							</div>
												<div class="search-container float-left">
							<a href="#" class="search-btn icon icon-search force-hide-trigger"></a>

							<div class="search-form-container force-hide">
									<form
			role="search"
			method="get"
			class="search-form ajax"
			action="http://rozex.us/themes/the-one/"
		data-search-setting-ajax-search-areas="post,page,product,users" data-search-setting-items-per-area="2">
			<div class="to-preloader">
		<div class="to-loader">
			<div class="rect1"></div>
			<div class="rect2"></div>
			<div class="rect3"></div>
			<div class="rect4"></div>
			<div class="rect5"></div>
		</div>
	</div>
			<input type="search" class="search-field" id="s1" placeholder="Search &hellip;" value="" name="s" title="Search for:"/>
		<button class="search-submit"></button>
	</form>
								</div>
						</div>
						<div class="shop-cart float-left">
							

								
							</div>
					</div>
					<nav id="main-nav" class="menu-nav hidden-xs float-left">
						<ul id="menu-main-nav-the-one" class="menu">
						<li id="nav-menu-item-33" class="main-menu-item  menu-item-even menu-item-depth-0 menu-item menu-item-type-post_type menu-item-object-page">
						<a href="../" class="menu-link main-menu-link">Homepage</a></li>
<!-- <li id="nav-menu-item-279" class="main-menu-item  menu-item-even menu-item-depth-0 menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a href="#" class="menu-link main-menu-link">Community</a>
 -->

</li>

<li id="nav-menu-item-309" class="main-menu-item  menu-item-even menu-item-depth-0 menu-item menu-item-type-custom menu-item-object-custom"><a href="shop" class="menu-link main-menu-link">Shop</a></li>
<li id="nav-menu-item-309" class="main-menu-item  menu-item-even menu-item-depth-0 menu-item menu-item-type-custom menu-item-object-custom"><a href="inputproduct" class="menu-link main-menu-link">Sell</a></li>

<li id="nav-menu-item-528" class="main-menu-item  menu-item-even menu-item-depth-0 menu-item menu-item-type-custom menu-item-object-custom"><a href="newsfeed" class="menu-link main-menu-link">Blog</a></li>
<li id="nav-menu-item-283" class="main-menu-item  menu-item-even menu-item-depth-0 menu-item menu-item-type-custom menu-item-object-custom"><a href="timeline" class="menu-link main-menu-link">Timeline</a></li>
<c:choose>
<c:when test="${sessionScope.id==null }">
<li id="nav-menu-item-133" class="main-menu-item  menu-item-even menu-item-depth-0 open-login-modal menu-item menu-item-type-custom menu-item-object-custom" style="font-size: 13px;"><a href="#" class="menu-link main-menu-link">Login</a></li>
</c:when>

<c:otherwise>

<li id="nav-menu-item-133" class="main-menu-item  menu-item-even menu-item-depth-0 menu-item menu-item-type-custom menu-item-object-custom" style="font-size: 13px;"><a href="../logout" class="menu-link main-menu-link">${sessionScope.name }</a></li>

</c:otherwise>
</c:choose>


</ul>					</nav>
				</div>
			</div>
		</div>
	</div>
</header>
<div id="chitchat"></div>
<div id="chatopen1" class="dropup" >Click to chat <span class="caret"></span></div>