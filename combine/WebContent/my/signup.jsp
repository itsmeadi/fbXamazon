<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="chat.js"></script>
<script>

jQuery('#signup_form').validate({
    rules : {
        password : {
            minlength : 3
        },
        password_confirm : {
            minlength : 3,
            equalTo : "#password"
        }
    }
password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="This is social network html5 template available in themeforest......" />
		<meta name="keywords" content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
		<meta name="robots" content="index, follow" />
		<title>Signup</title>
	
    <!-- Stylesheets
    ================================================= -->
		<link rel="stylesheet" href="../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../css/style.css" />
		<link rel="stylesheet" href="../css/ionicons.min.css" />
    <link rel="stylesheet" href="../css/font-awesome.min.css" />
    <link href="../css/emoji.css" rel="stylesheet">
    
    <style>
    
    .container
    {
    margin-left:70px;
    }
    .timeline-cover .timeline-nav-bar {
    background: azure;
    }
    .container-fluid
    {
    padding-left: 0px !important;
    padding-right: 0px !important;
    }
    .timeline-cover .timeline-nav-bar .profile-menu li a {
    color: black;
    }
    </style>
    <!--Favicon-->
    <link rel="shortcut icon" type="../image/png" href="../../images/fav.png"/>
    
	</head>
  

    <!-- Header
    ================================================= -->
		<jsp:include page="header.jsp"></jsp:include>
<div class="container site-container right-sidebar">
	
		<div class="row">
		<div class="col-lg-9">
			
			<div id="main"><nav role="navigation" aria-label="Breadcrumbs" class="breadcrumb-trail breadcrumbs" itemprop="breadcrumb"><ul class="trail-items" itemscope itemtype="http://schema.org/BreadcrumbList"><meta name="numberOfItems" content="2" /><meta name="itemListOrder" content="Ascending" /><li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="trail-item trail-begin"><a href="../index.html" rel="home"><span itemprop="name">Home</span></a><meta itemprop="position" content="1" /></li><li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="trail-item trail-end"><span itemprop="name">Register</span><meta itemprop="position" content="2" /></li></ul></nav>	<div id="primary" class="site-content">
		<div id="content" role="main">

			<div class="single-entry">

				
					<article id="post-0" class="bp_register type-bp_register clearfix  post-0 page type-page status-publish hentry post-item">

			<header class="entry-header">
			<h3 class="post-title"><a href="#" rel="bookmark">Create an Account</a></h3>
							<div class="entry-meta">

					<span>
						By						<a href="../author/index.html"></a>
					</span>

										<a class="comments-count" href="http://rozex.us/#comments"><span>No Comments</span></a>

					
				</div>
				<!-- .entry-meta -->
			
		</header>
		<!-- .entry-header -->
	
	
			<div class="entry-content">
			<div id="buddypress" class="register">

	
	<div class="page" id="register-page">

		<form name="signup_form" id="signup_form" class="standard-form clearfix" method="post" action="../signup">

			
			
				
				<p class="note">Registering for this site is easy. Just fill in the fields below, and we&#039;ll get a new account set up for you in no time.</p>

				
				<div class="register-section" id="basic-details-section">

					
					<h4>Account Details</h4>

					<label for="name" >Name(required)</label>
										<input type="text" name="fname" id="name" required="required" pattern="[A-Za-z0-9]{1,20}" value=""/>

					<label for="signup_email">Email Address(required)</label>
										<input required="required" type="email" name="email" id="email" value=""/>
					<a href="../signup.jsp" ></a>
					<label for="signup_password" required="required" pattern="[A-Za-z0-9]{1,20}">Choose a Password(required)</label>
										<input required="required" pattern="[A-Za-z0-9]{1,20}" type="password" name="password" id="password" value=""/>

					<label for="signup_password_confirm">Confirm Password(required)</label>
										<input type="password" name="password_confirm" id="password_confirm" value=""/>

					
				</div><!-- #basic-details-section -->

				
				
				
					
					<div class="register-section" id="profile-details-section">

						<h4>Profile Details</h4>

												
							
								<div class="editfield">

									
		<label for="field_1">
			Surname			 <span class="bp-required-field-label">(required)</span>		</label>
		<input  id="field_1" id="lname" name="lname" type="text" value="" aria-required="true">
									
		<label for="field_2">
			DOB			 <span class="bp-required-field-label">(required)</span>		</label>
		<input  id="field_2" id="dob" name="dob" type="date" value="" aria-required="true">

									
		<label for="gender">
			Sex			 <span class="bp-required-field-label">(required)</span>		
		
					<label for="Male">
						<input type="radio" id="Male" name="gender" value="Male" />
						Male
					</label>
		
					<label for="Female">
						<input type="radio" id="Female" name="gender" value="Female" />
						Female
					</label>
</label>
												<p class="field-visibility-settings-toggle" id="field-visibility-settings-toggle-1">
											This field can be seen by: <span>Everyone</span>											<a href="#" class="visibility-toggle-link">Change</a>
										</p>

										<div class="field-visibility-settings" id="field-visibility-settings-1">
											<fieldset>
												<legend>Who can see this field?</legend>

												<ul class="radio">
			
				
					<li class="public">
					<label for="see-field_1_public">
						<input type="radio" id="see-field_1_public" name="field_1_visibility" value="public"  checked='checked' />
						<span class="field-visibility-text">Everyone</span>
					</label>

					</li>
				
					<li class="adminsonly">
					<label for="see-field_1_adminsonly">
						<input type="radio" id="see-field_1_adminsonly" name="field_1_visibility" value="adminsonly"  />
						<span class="field-visibility-text">Only Me</span>
					</label>

					</li>
				
					<li class="loggedin">
					<label for="see-field_1_loggedin">
						<input type="radio" id="see-field_1_loggedin" name="field_1_visibility" value="loggedin"  />
						<span class="field-visibility-text">All Members</span>
					</label>

					</li>
				
					<li class="friends">
					<label for="see-field_1_friends">
						<input type="radio" id="see-field_1_friends" name="field_1_visibility" value="friends"  />
						<span class="field-visibility-text">My Friends</span>
					</label>

					</li>
				
			</ul>
											</fieldset>
											<a class="field-visibility-settings-close" href="#">Close</a>

										</div>
									
									
									<p class="description"></p>

								</div>

							
							<input type="hidden" name="signup_profile_field_ids" id="signup_profile_field_ids" value="1"/>

						
						
					</div><!-- #profile-details-section -->

					
				
				
				
				<div class="submit">
					<input type="submit" name="signup_submit" id="signup_submit" value="Complete Sign Up"/>
				</div>

				
				<input type="hidden" id="_wpnonce" name="_wpnonce" value="4e6c79ecad" /><input type="hidden" name="_wp_http_referer" value="/themes/the-one/register/" />
			
			
			
		</form>

	</div>

	
</div><!-- #buddypress -->
		</div><!-- . entry-content -->
	
</article><!-- #post-## -->

					
							</div>


		</div><!-- #content -->
	</div><!-- #primary -->
</div><!-- #main -->

	</div><!-- #content-column -->
			<div class="col-lg-3">
				<section class="widget-area" id="sidebar">
		<aside id="to-recent-posts-widget-4" class="widget widget_to-recent-posts-widget"><div><h2 class="widget-title">Recently Published</h2></div>			<ul class="to-simple-posts-list">
									<li>
						<span class="post-date">April 9, 2016</span>
						<a href="../why-we-give-our-girls-legos/index.html" class="post-title">Why We Give Our Girls Legos</a>
					</li>
									<li>
						<span class="post-date">January 26, 2016</span>
						<a href="../apple-and-the-future-of-podcasts/index.html" class="post-title">Apple and the Future of Podcasts</a>
					</li>
									<li>
						<span class="post-date">January 17, 2016</span>
						<a href="../rethinking-the-technical-interview/index.html" class="post-title">Rethinking the Technical Interview</a>
					</li>
									<li>
						<span class="post-date">January 11, 2016</span>
						<a href="../what-are-people-working-on-in-coffee-shops/index.html" class="post-title">What are people working on in coffee shops?</a>
					</li>
									<li>
						<span class="post-date">January 3, 2016</span>
						<a href="../how-to-get-a-developer-job-in-less-than-a-year/index.html" class="post-title">How to Get a Developer Job in Less Than a Year</a>
					</li>
							</ul>
			</aside><aside id="bp_core_members_widget-2" class="widget widget_bp_core_members_widget buddypress widget"><div><h2 class="widget-title">Members</h2></div>
		
			<div class="item-options" id="members-list-options">
				<a href="../members/index.html" id="newest-members" >Newest</a>
				<span class="bp-separator" role="separator">|</span>
				<a href="../members/index.html" id="recently-active-members" class="selected">Active</a>

									<span class="bp-separator" role="separator">|</span>
					<a href="../members/index.html" id="popular-members" >Popular</a>

				
			</div>

			<ul id="members-list" class="item-list" aria-live="polite" aria-relevant="all" aria-atomic="true">

				
					<li class="vcard">
						<div class="item-avatar">
							<a href="../members/brad/index.html" title="brad"><img src="http://www.gravatar.com/avatar/0b4f545f7a77b1ee7ff7b9b02f32575f?s=50&amp;r=g&amp;d=mm" class="avatar user-88-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of brad" /></a>
						</div>

						<div class="item">
							<div class="item-title fn"><a href="../members/brad/index.html" title="brad">brad</a></div>
							<div class="item-meta">
																	<span class="activity" data-livestamp="2017-02-17T10:07:56+0000">active 9 hours ago</span>
															</div>
						</div>
					</li>

				
					<li class="vcard">
						<div class="item-avatar">
							<a href="../members/pippo/index.html" title="stocazzo"><img src="http://www.gravatar.com/avatar/062a3412397f28b4993c49cc0e71ad0e?s=50&amp;r=g&amp;d=mm" class="avatar user-87-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of stocazzo" /></a>
						</div>

						<div class="item">
							<div class="item-title fn"><a href="../members/pippo/index.html" title="stocazzo">stocazzo</a></div>
							<div class="item-meta">
																	<span class="activity" data-livestamp="2017-02-16T22:01:21+0000">active 21 hours ago</span>
															</div>
						</div>
					</li>

				
					<li class="vcard">
						<div class="item-avatar">
							<a href="../members/mervs/index.html" title="Mervin Esmaquel"><img src="http://www.gravatar.com/avatar/7813642b8f62d861d2642f5ed79e92e1?s=50&amp;r=g&amp;d=mm" class="avatar user-86-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of Mervin Esmaquel" /></a>
						</div>

						<div class="item">
							<div class="item-title fn"><a href="../members/mervs/index.html" title="Mervin Esmaquel">Mervin Esmaquel</a></div>
							<div class="item-meta">
																	<span class="activity" data-livestamp="2017-02-15T13:43:12+0000">active 2 days ago</span>
															</div>
						</div>
					</li>

				
					<li class="vcard">
						<div class="item-avatar">
							<a href="../members/daveadam/index.html" title="dave jones"><img src="../wp-content/uploads/avatars/85/58a4272962a06-bpthumb.png" class="avatar user-85-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of dave jones" /></a>
						</div>

						<div class="item">
							<div class="item-title fn"><a href="../members/daveadam/index.html" title="dave jones">dave jones</a></div>
							<div class="item-meta">
																	<span class="activity" data-livestamp="2017-02-15T12:09:28+0000">active 2 days ago</span>
															</div>
						</div>
					</li>

				
					<li class="vcard">
						<div class="item-avatar">
							<a href="../members/brufel/index.html" title="Bruno Brito"><img src="http://www.gravatar.com/avatar/27da0a66803ce9105e470ddbe0a2fcbe?s=50&amp;r=g&amp;d=mm" class="avatar user-83-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of Bruno Brito" /></a>
						</div>

						<div class="item">
							<div class="item-title fn"><a href="../members/brufel/index.html" title="Bruno Brito">Bruno Brito</a></div>
							<div class="item-meta">
																	<span class="activity" data-livestamp="2017-02-14T05:36:19+0000">active 4 days ago</span>
															</div>
						</div>
					</li>

				
			</ul>

			<input type="hidden" id="_wpnonce-members" name="_wpnonce-members" value="692e0b0d48" />
			<input type="hidden" name="members_widget_max" id="members_widget_max" value="5" />

		
		</aside>	</section><!-- #primary-sidebar -->
		</div>
		</div><!-- #row -->

	</div><!-- #container -->

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
		</aside><aside id="to-recent-posts-widget-2" class="widget widget_to-recent-posts-widget"><div><h2 class="widget-title">Recent Posts</h2></div>			<ul class="to-simple-posts-list">
									<li>
						<span class="post-date">April 9, 2016</span>
						<a href="../why-we-give-our-girls-legos/index.html" class="post-title">Why We Give Our Girls Legos</a>
					</li>
									<li>
						<span class="post-date">January 26, 2016</span>
						<a href="../apple-and-the-future-of-podcasts/index.html" class="post-title">Apple and the Future of Podcasts</a>
					</li>
									<li>
						<span class="post-date">January 17, 2016</span>
						<a href="../rethinking-the-technical-interview/index.html" class="post-title">Rethinking the Technical Interview</a>
					</li>
									<li>
						<span class="post-date">January 11, 2016</span>
						<a href="../what-are-people-working-on-in-coffee-shops/index.html" class="post-title">What are people working on in coffee shops?</a>
					</li>
									<li>
						<span class="post-date">January 3, 2016</span>
						<a href="../how-to-get-a-developer-job-in-less-than-a-year/index.html" class="post-title">How to Get a Developer Job in Less Than a Year</a>
					</li>
							</ul>
			</aside><aside id="to-recent-comments-widget-2" class="widget widget_to-recent-comments-widget"><div><h2 class="widget-title">Recent Comments</h2></div><ul class="to-simple-comments-list">				<li>
					<span class="comment-author-link">Vahidd</span>
					<a href="../what-are-people-working-on-in-coffee-shops/index.html#comment-47" class="comment-title">
						Yet Another Test Comment					</a>
				</li>
								<li>
					<span class="comment-author-link">Vahidd</span>
					<a href="../what-are-people-working-on-in-coffee-shops/index.html#comment-46" class="comment-title">
						Another Test Comment					</a>
				</li>
								<li>
					<span class="comment-author-link">Vahidd</span>
					<a href="../what-are-people-working-on-in-coffee-shops/index.html#comment-45" class="comment-title">
						Reply Comment					</a>
				</li>
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
	<a href="../product/woo-album-4/index.html" title="White One">
		<img width="180" height="180" src="../wp-content/uploads/2013/06/woman-1472767_1920-180x180.jpg" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2013/06/woman-1472767_1920-180x180.jpg 180w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/woman-1472767_1920-150x150.jpg 150w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/woman-1472767_1920-200x200.jpg 200w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/woman-1472767_1920-300x300.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/woman-1472767_1920-600x600.jpg 600w" sizes="(max-width: 180px) 100vw, 180px" />		White One	</a>
	<div class="star-rating" title="Rated 5 out of 5"><span style="width:100%"><strong class="rating">5</strong> out of 5</span></div>	<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>9.00</span></li><li>
	<a href="../product/happy-ninja/index.html" title="S Watch">
		<img width="180" height="180" src="../wp-content/uploads/2013/06/wristwatch-407096_1920-180x180.jpg" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2013/06/wristwatch-407096_1920-180x180.jpg 180w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/wristwatch-407096_1920-150x150.jpg 150w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/wristwatch-407096_1920-200x200.jpg 200w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/wristwatch-407096_1920-300x300.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/wristwatch-407096_1920-600x600.jpg 600w" sizes="(max-width: 180px) 100vw, 180px" />		S Watch	</a>
	<div class="star-rating" title="Rated 5 out of 5"><span style="width:100%"><strong class="rating">5</strong> out of 5</span></div>	<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>18.00</span></li><li>
	<a href="../product/ninja-silhouette/index.html" title="Ninja Silhouette">
		<img width="180" height="180" src="../wp-content/uploads/2013/06/T_5_front-180x180.jpg" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2013/06/T_5_front-180x180.jpg 180w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/T_5_front-150x150.jpg 150w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/T_5_front-300x300.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/T_5_front-768x768.jpg 768w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/T_5_front-672x672.jpg 672w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/T_5_front-200x200.jpg 200w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/T_5_front-600x600.jpg 600w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/T_5_front.jpg 1000w" sizes="(max-width: 180px) 100vw, 180px" />		Ninja Silhouette	</a>
	<div class="star-rating" title="Rated 5 out of 5"><span style="width:100%"><strong class="rating">5</strong> out of 5</span></div>	<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>20.00</span></li><li>
	<a href="../product/patient-ninja/index.html" title="Patient Ninja">
		<img width="180" height="180" src="../wp-content/uploads/2013/06/hoodie_3_front-180x180.jpg" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2013/06/hoodie_3_front-180x180.jpg 180w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/hoodie_3_front-150x150.jpg 150w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/hoodie_3_front-300x300.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/hoodie_3_front-768x768.jpg 768w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/hoodie_3_front-672x672.jpg 672w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/hoodie_3_front-200x200.jpg 200w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/hoodie_3_front-600x600.jpg 600w, http://rozex.us/themes/the-one/wp-content/uploads/2013/06/hoodie_3_front.jpg 1000w" sizes="(max-width: 180px) 100vw, 180px" />		Patient Ninja	</a>
	<div class="star-rating" title="Rated 4.67 out of 5"><span style="width:93.4%"><strong class="rating">4.67</strong> out of 5</span></div>	<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">&#36;</span>35.00</span></li></ul></aside><aside id="woocommerce_product_categories-3" class="widget woocommerce widget_product_categories"><div><h2 class="widget-title">Product Categories</h2></div><ul class="product-categories"><li class="cat-item cat-item-27"><a href="../product-category/clothing/index.html">Clothing</a> <span class="count">(10)</span></li>
<li class="cat-item cat-item-30"><a href="../product-category/gadgets/index.html">Gadgets</a> <span class="count">(6)</span></li>
<li class="cat-item cat-item-61"><a href="../product-category/home-kitchen/index.html">Home and Kitchen</a> <span class="count">(4)</span></li>
<li class="cat-item cat-item-29"><a href="../product-category/music/index.html">Music</a> <span class="count">(3)</span></li>
<li class="cat-item cat-item-62"><a href="../product-category/toys/index.html">Toys</a> <span class="count">(4)</span></li>
</ul></aside></div><div class="col-sm-4 col-xs-12"><aside id="text-6" class="widget widget_text"><div><h2 class="widget-title">About</h2></div>			<div class="textwidget"><p>THE ONE is a multipurpose wordpress theme with functionality and usability in it's DNA.<br />
THE ONE is Responsive, Mobile-First, Retina Ready, Community, Social and fully Customizable.</p>
</div>
		</aside><aside id="search-5" class="widget widget_search"><form role="search" method="get" class="search-form" action="http://rozex.us/themes/the-one/">
	<label>
		<input type="search" class="search-field" placeholder="Search &hellip;" value="" name="s" title="Search for:"/>
	</label>
	<button class="search-submit"></button>
</form></aside><aside id="categories-4" class="widget widget_categories"><div><h2 class="widget-title">Categories</h2></div>		<ul>
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
</aside><aside id="to-login-3" class="widget widget_to-login"><form name="loginform" action="http://rozex.us/themes/the-one/wp-login.php" method="post" class="to-login-form">
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

					<a href="index.html" class="register">Register</a>
			</p>
</form></aside><aside id="to-social-media-widget-4" class="widget widget_to-social-media-widget"><div><h2 class="widget-title">Connect Us</h2></div><div class="to-social-icons clearfix">		<a href="https://www.facebook.com/rozexstudio"><i class="icon icon-facebook"></i></a>
				<a href="https://twitter.com/rozexstudio"><i class="icon icon-twitter"></i></a>
				<a href="https://www.instagram.com/rozexthemes/"><i class="icon icon-instagram"></i></a>
		</div></aside><aside id="bp_core_recently_active_widget-6" class="widget widget_bp_core_recently_active_widget buddypress widget"><div><h2 class="widget-title">Recently Active Members</h2></div>
		
			<div class="avatar-block">

				
					<div class="item-avatar">
						<a href="../members/brad/index.html" title="brad"><img src="http://www.gravatar.com/avatar/0b4f545f7a77b1ee7ff7b9b02f32575f?s=50&amp;r=g&amp;d=mm" class="avatar user-88-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of brad" /></a>
					</div>

				
					<div class="item-avatar">
						<a href="../members/pippo/index.html" title="stocazzo"><img src="http://www.gravatar.com/avatar/062a3412397f28b4993c49cc0e71ad0e?s=50&amp;r=g&amp;d=mm" class="avatar user-87-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of stocazzo" /></a>
					</div>

				
					<div class="item-avatar">
						<a href="../members/mervs/index.html" title="Mervin Esmaquel"><img src="http://www.gravatar.com/avatar/7813642b8f62d861d2642f5ed79e92e1?s=50&amp;r=g&amp;d=mm" class="avatar user-86-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of Mervin Esmaquel" /></a>
					</div>

				
					<div class="item-avatar">
						<a href="../members/daveadam/index.html" title="dave jones"><img src="../wp-content/uploads/avatars/85/58a4272962a06-bpthumb.png" class="avatar user-85-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of dave jones" /></a>
					</div>

				
					<div class="item-avatar">
						<a href="../members/brufel/index.html" title="Bruno Brito"><img src="http://www.gravatar.com/avatar/27da0a66803ce9105e470ddbe0a2fcbe?s=50&amp;r=g&amp;d=mm" class="avatar user-83-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of Bruno Brito" /></a>
					</div>

				
					<div class="item-avatar">
						<a href="../members/slowwind1/index.html" title="Vguh"><img src="http://www.gravatar.com/avatar/913b34c141f72d200b90ae0025f99ea5?s=50&amp;r=g&amp;d=mm" class="avatar user-82-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of Vguh" /></a>
					</div>

				
					<div class="item-avatar">
						<a href="../members/dude/index.html" title="Dude Tester"><img src="http://www.gravatar.com/avatar/0c9a68bc198d1bd56948cd54cb9e48fc?s=50&amp;r=g&amp;d=mm" class="avatar user-80-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of Dude Tester" /></a>
					</div>

				
					<div class="item-avatar">
						<a href="../members/hamadtag/index.html" title="tag"><img src="../wp-content/uploads/avatars/77/589e4dafa5a7c-bpthumb.jpg" class="avatar user-77-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of tag" /></a>
					</div>

				
					<div class="item-avatar">
						<a href="../members/john/index.html" title="John Doe"><img src="../wp-content/uploads/avatars/3/6e6f9ddcd7b342282bf2ae408d840d1f-bpthumb.jpg" class="avatar user-3-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of John Doe" /></a>
					</div>

				
					<div class="item-avatar">
						<a href="../members/maicol/index.html" title="maicol"><img src="http://www.gravatar.com/avatar/fd6c5d75d7231b37ad1bdaf8e382b557?s=50&amp;r=g&amp;d=mm" class="avatar user-72-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of maicol" /></a>
					</div>

				
					<div class="item-avatar">
						<a href="../members/bodi/index.html" title="bodi"><img src="http://www.gravatar.com/avatar/489743a65d4b8f5d41886360f5e01e6e?s=50&amp;r=g&amp;d=mm" class="avatar user-71-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of bodi" /></a>
					</div>

				
					<div class="item-avatar">
						<a href="../members/akul/index.html" title="akul chhillar"><img src="http://www.gravatar.com/avatar/c6ba8f9f458217c0ec359d58204b8b44?s=50&amp;r=g&amp;d=mm" class="avatar user-70-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of akul chhillar" /></a>
					</div>

				
					<div class="item-avatar">
						<a href="../members/vahidd/index.html" title="Vahidd"><img src="../wp-content/uploads/avatars/1/d433ad84e7c41aa830779885c8c37a6f-bpthumb.jpg" class="avatar user-1-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of Vahidd" /></a>
					</div>

				
					<div class="item-avatar">
						<a href="../members/efortinca/index.html" title="Eric"><img src="http://www.gravatar.com/avatar/6e65fd4642af318d50a5cbf123ffd71d?s=50&amp;r=g&amp;d=mm" class="avatar user-68-avatar avatar-50 photo" width="50" height="50" alt="Profile picture of Eric" /></a>
					</div>

				
			</div>

		
		</aside></div>			</div>
		</div>
	</div>

	<nav id="footer-nav" class="menu-nav clearfix">
		<div class="container">
			<ul id="menu-main-nav-the-one-2" class="menu"><li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home menu-item-33"><a href="../index.html">Homepage</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-279"><a href="#">Community</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-281"><a href="#">Features</a></li>
<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-309"><a href="../shop/index.html">Shop</a></li>
<li class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-528"><a href="../category/all/index.html">Blog</a></li>
<li class="open-login-modal menu-item menu-item-type-custom menu-item-object-custom menu-item-133"><a href="#">Login</a></li>
<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-283"><a href="https://themeforest.net/item/the-one-unique-multipurpose-wordpress-theme/18016597">Buy Theme</a></li>
</ul>		</div>
	</nav>

	<div class="footer-options">
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

</footer><!-- #colophon -->

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../../../../www.google-analytics.com/analytics.js','ga');

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
									<a href="index.html" class="to-btn to-primary-btn">Register</a>
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
		<input type="hidden" name="redirect_to" value="http://rozex.us/themes/the-one/register/">
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
var rtMedia_plupload_config = {"url":"\/themes\/the-one\/register\/upload\/","runtimes":"html5,flash,html4","browse_button":"rtMedia-upload-button","container":"rtmedia-upload-container","drop_element":"drag-drop-area","filters":[{"title":"Media Files","extensions":"jpg,jpeg,png,gif,mp4,mp3"}],"max_file_size":"8M","multipart":"1","urlstream_upload":"1","flash_swf_url":"http:\/\/rozex.us\/themes\/the-one\/wp-includes\/js\/plupload\/plupload.flash.swf","silverlight_xap_url":"http:\/\/rozex.us\/themes\/the-one\/wp-includes\/js\/plupload\/plupload.silverlight.xap","file_data_name":"rtmedia_file","multi_selection":"1","multipart_params":{"redirect":"no","action":"wp_handle_upload","_wp_http_referer":"\/themes\/the-one\/register\/","mode":"file_upload","rtmedia_upload_nonce":"231b56c23e"},"max_file_size_msg":"32M"};
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
<script type='text/javascript' src='../wp-content/plugins/buddypress/bp-core/js/vendor/moment-js/moment.minae29.js?ver=2.7.4'></script>
<script type='text/javascript' src='../wp-content/plugins/buddypress/bp-core/js/vendor/livestamp.minae29.js?ver=2.7.4'></script>
<script type='text/javascript' src='../wp-content/plugins/buddypress/bp-core/js/vendor/jquery.caret.minae29.js?ver=2.7.4'></script>
<script type='text/javascript' src='../wp-content/plugins/buddypress/bp-core/js/vendor/jquery.atwho.minae29.js?ver=2.7.4'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var BP_Suggestions = {"friends":[{"ID":"akul","image":"\/\/www.gravatar.com\/avatar\/c6ba8f9f458217c0ec359d58204b8b44?s=50&#038;r=g&#038;d=mm","name":"akul chhillar"},{"ID":"ukub","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/7\/fb532b3dbec496a1ccfe0e7223f09cb5-bpthumb.jpg","name":"Alivia"},{"ID":"bodi","image":"\/\/www.gravatar.com\/avatar\/489743a65d4b8f5d41886360f5e01e6e?s=50&#038;r=g&#038;d=mm","name":"bodi"},{"ID":"brad","image":"\/\/www.gravatar.com\/avatar\/0b4f545f7a77b1ee7ff7b9b02f32575f?s=50&#038;r=g&#038;d=mm","name":"brad"},{"ID":"brufel","image":"\/\/www.gravatar.com\/avatar\/27da0a66803ce9105e470ddbe0a2fcbe?s=50&#038;r=g&#038;d=mm","name":"Bruno Brito"},{"ID":"eziuka","image":"\/\/www.gravatar.com\/avatar\/597376063225181b259e59012a552e31?s=50&#038;r=g&#038;d=mm","name":"Clinton"},{"ID":"daveadam","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/85\/58a4272962a06-bpthumb.png","name":"dave jones"},{"ID":"mateo-nikolaus","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/10\/2a0385b4294363fbe49645fc33697406-bpthumb.jpg","name":"Dominique"},{"ID":"dude","image":"\/\/www.gravatar.com\/avatar\/0c9a68bc198d1bd56948cd54cb9e48fc?s=50&#038;r=g&#038;d=mm","name":"Dude Tester"},{"ID":"ellieb","image":"\/\/www.gravatar.com\/avatar\/0d67d45f14517ae92418a70f433f6249?s=50&#038;r=g&#038;d=mm","name":"ellie"},{"ID":"efortinca","image":"\/\/www.gravatar.com\/avatar\/6e65fd4642af318d50a5cbf123ffd71d?s=50&#038;r=g&#038;d=mm","name":"Eric"},{"ID":"wbarrows","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/15\/80547fb442eea03e1dae1936ccca1d84-bpthumb.jpg","name":"Erica"},{"ID":"ghjf","image":"\/\/www.gravatar.com\/avatar\/c3070b9a10edecd84b04cf3b4425a10a?s=50&#038;r=g&#038;d=mm","name":"gnhgj"},{"ID":"eloise29","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/11\/aad2b80bfa3259fe5bd9cbff28aa1366-bpthumb.jpg","name":"Jacinthe"},{"ID":"janatan","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/34\/57e133fc224db-bpthumb.jpg","name":"Janatan"},{"ID":"jaspermaloney","image":"\/\/www.gravatar.com\/avatar\/ba5105dc854d0758f906377eeaf6c004?s=50&#038;r=g&#038;d=mm","name":"Jasper Maloney"},{"ID":"john","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/3\/6e6f9ddcd7b342282bf2ae408d840d1f-bpthumb.jpg","name":"John Doe"},{"ID":"lesley-cummerata","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/13\/15b52334677453f5b842d5eb776b6e96-bpthumb.jpg","name":"Junior"},{"ID":"corene-oreilly","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/12\/1d0fbe43ed8ec0ed9e945ec167fb3f67-bpthumb.jpg","name":"Katrina"},{"ID":"lanetteam","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/54\/588b2f631d4dc-bpthumb.jpg","name":"lanetteam"},{"ID":"grant-leonel","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/16\/e2b7d49948d9d54f4a37196aabb20220-bpthumb.jpg","name":"Leila"},{"ID":"shad88","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/5\/b9ad1d4692a8f1e591ccc36e8a5b502c-bpthumb.jpg","name":"Linwood"},{"ID":"loviewootton10","image":"\/\/www.gravatar.com\/avatar\/962838506c7e820189c3bc5d041b0398?s=50&#038;r=g&#038;d=mm","name":"Lovie Wootton"},{"ID":"kevin55","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/4\/93801118c781611c731f526f908d37cf-bpthumb.jpg","name":"Lue"},{"ID":"mohr-hailie","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/14\/17a3a95c34d89d0049d898d622ee1097-bpthumb.jpg","name":"Maegan"},{"ID":"maicol","image":"\/\/www.gravatar.com\/avatar\/fd6c5d75d7231b37ad1bdaf8e382b557?s=50&#038;r=g&#038;d=mm","name":"maicol"},{"ID":"manuel-rice","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/9\/386130e620f3f609834e7a73251c81f5-bpthumb.jpg","name":"Mariano"},{"ID":"mauricio420r","image":"\/\/www.gravatar.com\/avatar\/a745656d717c0e3ed6a49f4c84ca51da?s=50&#038;r=g&#038;d=mm","name":"MAURICIO"},{"ID":"mervs","image":"\/\/www.gravatar.com\/avatar\/7813642b8f62d861d2642f5ed79e92e1?s=50&#038;r=g&#038;d=mm","name":"Mervin Esmaquel"},{"ID":"minnalouden632","image":"\/\/www.gravatar.com\/avatar\/966d27c29e9535fd3277dfae545ff113?s=50&#038;r=g&#038;d=mm","name":"Minna Louden"},{"ID":"misterdiouf","image":"\/\/www.gravatar.com\/avatar\/a5407e094e967fc4991b61a99296cd04?s=50&#038;r=g&#038;d=mm","name":"Moustapha Diouf"},{"ID":"nater","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/65\/5894d78ddc8b9-bpthumb.png","name":"Nate"},{"ID":"fernando-wintheiser","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/8\/ee0f54a6f8445b47a45b30e6c378aaee-bpthumb.jpg","name":"Norene"},{"ID":"pjportma","image":"\/\/www.gravatar.com\/avatar\/c2b1b12fd31678ebcb71be72792289ef?s=50&#038;r=g&#038;d=mm","name":"Peter Portman"},{"ID":"tragandateb1974","image":"\/\/www.gravatar.com\/avatar\/28172bd4883226e23f3e441307b14b1a?s=50&#038;r=g&#038;d=mm","name":"Rachel"},{"ID":"ali","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/2\/be8bf1ab335f57151832bc8a01e5bc05-bpthumb.jpg","name":"Roberto Mendez"},{"ID":"roslynemerson3","image":"\/\/www.gravatar.com\/avatar\/309341a88dc1b1c7982018d491463430?s=50&#038;r=g&#038;d=mm","name":"Roslyn Emerson"},{"ID":"sailee","image":"\/\/www.gravatar.com\/avatar\/9cc11d82fd7cfc57bb814a25841a01a3?s=50&#038;r=g&#038;d=mm","name":"sailee"},{"ID":"pippo","image":"\/\/www.gravatar.com\/avatar\/062a3412397f28b4993c49cc0e71ad0e?s=50&#038;r=g&#038;d=mm","name":"stocazzo"},{"ID":"sudarshan","image":"\/\/www.gravatar.com\/avatar\/45434e5e7ea44bbf44d273540d97e8d0?s=50&#038;r=g&#038;d=mm","name":"sudarshan"},{"ID":"hamadtag","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/77\/589e4dafa5a7c-bpthumb.jpg","name":"tag"},{"ID":"vahiddd","image":"\/\/www.gravatar.com\/avatar\/515b9d6dcad333416a1f97c3d3b5bf49?s=50&#038;r=g&#038;d=mm","name":"Vahid"},{"ID":"vahidd","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/1\/d433ad84e7c41aa830779885c8c37a6f-bpthumb.jpg","name":"Vahidd"},{"ID":"amina60","image":"http:\/\/rozex.us\/themes\/the-one\/wp-content\/uploads\/avatars\/6\/02f9f1fc9b4d9c795a171fc6bd39115e-bpthumb.jpg","name":"Valerie"},{"ID":"slowwind1","image":"\/\/www.gravatar.com\/avatar\/913b34c141f72d200b90ae0025f99ea5?s=50&#038;r=g&#038;d=mm","name":"Vguh"}]};
/* ]]> */
</script>
<script type='text/javascript' src='../wp-content/plugins/buddypress/bp-activity/js/mentions.minae29.js?ver=2.7.4'></script>
<script type='text/javascript' src='../wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min44fd.js?ver=2.70'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/themes\/the-one\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/themes\/the-one\/register\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script>
<script type='text/javascript' src='../wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min8dc7.js?ver=2.6.13'></script>
<script type='text/javascript' src='../wp-content/plugins/woocommerce/assets/js/jquery-cookie/jquery.cookie.min330a.js?ver=1.4.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/themes\/the-one\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/themes\/the-one\/register\/?wc-ajax=%%endpoint%%","fragment_name":"wc_fragments"};
/* ]]> */
</script>
<script type='text/javascript' src='../wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min8dc7.js?ver=2.6.13'></script>
<script type='text/javascript' src='../wp-content/themes/the-one/includes/icon-picker/assets/js/scripts5152.js?ver=1.0'></script>
<script type='text/javascript' src='../wp-content/plugins/buddypress-media/lib/touchswipe/jquery.touchSwipe.min50fa.js?ver=4.2.1'></script>
<script type='text/javascript' src='../wp-includes/js/wp-embed.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='../wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min972f.js?ver=5.0.1'></script>
<script type='text/javascript' src='../wp-content/plugins/js_composer/assets/lib/waypoints/waypoints.min972f.js?ver=5.0.1'></script>

</body>

<!-- Mirrored from rozex.us/themes/the-one/register/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 18 Feb 2017 06:08:18 GMT -->
</html>

<!-- Dynamic page generated in 0.628 seconds. -->
<!-- Cached page generated by WP-Super-Cache on 2017-02-17 19:01:38 -->

<!-- super cache -->