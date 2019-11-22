<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">




<body class="archive post-type-archive post-type-archive-product woocommerce woocommerce-page wpb-js-composer js-comp-ver-5.0.1 vc_responsive no-js">

<jsp:include page="../my/header.jsp"></jsp:include>

<!-- .masthead -->


	
			<div id="main">
<div id="woocommerce">

	<header id="shop-header" style="background-image: url('../wp-content/uploads/2016/06/shop-header.jpg')">
		<div class="header-text">
			<h2 style="font-size: 50px;font-weight: 600;color: #fff">Explore, Find And Buy</h2>
<h3 style="font-size: 28px;font-weight: 300;color: #fff;margin-bottom: 40px">Shop Online Easy and Fast</h3>
	<form role="search" method="get" class="shop-search-form search-form ajax" action="search.jsp" data-search-setting-ajax-search-areas="product" data-search-setting-hide-results-on-blur="1" data-search-setting-items-per-area="10">
			<div class="to-preloader">
		<div class="to-loader">
			<div class="rect1"></div>
			<div class="rect2"></div>
			<div class="rect3"></div>
			<div class="rect4"></div>
			<div class="rect5"></div>
		</div>
	</div>
			<input type="search" class="search-field" placeholder="Search for products" id="s0" value="" name="s" title="Search for:" />
		<button class="search-submit"></button>
	</form>
			</div>
	</header>

	<div class="container">

		 <jsp:include page="../my/categories.jsp" />
		
		
		
		
		
		
	
		

		<div id="container">
		<div id="content" role="main">
		
		<div class="products-list">

			<h2 class="title">Products</h2>

			
				<p class="woocommerce-result-count">
	Showing 1&ndash;20 of 22 results</p>
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

				
				<jsp:include page="../my/products.jsp"></jsp:include>
				
				
				
				
				
				
				
				
				
				
				
				<nav class="woocommerce-pagination">
	<ul class='page-numbers'>
	<li><span class='page-numbers current'>1</span></li>
	<li><a class='page-numbers' href='page/2/index.html'>2</a></li>
	<li><a class="next page-numbers" href="page/2/index.html"><i class="icon-right-open-big"></i></a></li>
</ul>
</nav>

					</div>


					<div class="brands-list">
				<h2 class="title">Brands</h2>
								<div class="owl-carousel" data-owl-option-items="2,4,5,6" data-owl-option-margin="20">
											<div class="brand">
							<a href="../product_brand/almond/index.html">
								<img src="../wp-content/uploads/2016/04/ALMOND-Path-61.png" alt="Almond" title="Almond"/>
							</a>
						</div>
												<div class="brand">
							<a href="../product_brand/goaler/index.html">
								<img src="../wp-content/uploads/2016/05/GOALER.png" alt="Goaler" title="Goaler"/>
							</a>
						</div>
												<div class="brand">
							<a href="../product_brand/kl/index.html">
								<img src="../wp-content/uploads/2016/05/KL-Shape.png" alt="KL" title="KL"/>
							</a>
						</div>
												<div class="brand">
							<a href="../product_brand/opatech/index.html">
								<img src="../wp-content/uploads/2016/05/OPatech.png" alt="Opatech" title="Opatech"/>
							</a>
						</div>
												<div class="brand">
							<a href="../product_brand/soundi/index.html">
								<img src="../wp-content/uploads/2016/05/S-unDi-Shape.png" alt="Soundi" title="Soundi"/>
							</a>
						</div>
										</div>
			</div>
		

		</div></div>

	</div>

</div>


</div><!-- #main -->

<jsp:include page="footer.jsp"></jsp:include>


<jsp:include page="signin.jsp"></jsp:include>

<!-- #colophon -->

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','../../../../www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-90765919-2', 'auto');
  ga('send', 'pageview');

</script>
		
		<link rel='stylesheet' id='js_composer_front-css'  href='../wp-content/uploads/js_composer/js_composer_front_custom972f.css?ver=5.0.1' type='text/css' media='all' />
<link rel='stylesheet' id='animate-css-css'  href='../wp-content/plugins/js_composer/assets/lib/bower/animate-css/animate.min972f.css?ver=5.0.1' type='text/css' media='all' />
<script type='text/javascript' src='../wp-includes/js/underscore.min4511.js?ver=1.8.3'></script>
<script type='text/javascript' src='../wp-includes/js/backbone.min9632.js?ver=1.2.3'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var template_url = "index.html\/\/rozex.us\/themes\/the-one\/wp-admin\/admin-ajax.php?action=rtmedia_get_template&template=media-gallery-item";
var rtmedia_exteansions = {"photo":["jpg","jpeg","png","gif"],"video":["mp4"],"music":["mp3"]};
var rtMedia_plupload_config = {"url":"\/themes\/the-one\/shop\/upload\/","runtimes":"html5,flash,html4","browse_button":"rtMedia-upload-button","container":"rtmedia-upload-container","drop_element":"drag-drop-area","filters":[{"title":"Media Files","extensions":"jpg,jpeg,png,gif,mp4,mp3"}],"max_file_size":"8M","multipart":"1","urlstream_upload":"1","flash_swf_url":"http:\/\/rozex.us\/themes\/the-one\/wp-includes\/js\/plupload\/plupload.flash.swf","silverlight_xap_url":"http:\/\/rozex.us\/themes\/the-one\/wp-includes\/js\/plupload\/plupload.silverlight.xap","file_data_name":"rtmedia_file","multi_selection":"1","multipart_params":{"redirect":"no","action":"wp_handle_upload","_wp_http_referer":"\/themes\/the-one\/shop\/","mode":"file_upload","rtmedia_upload_nonce":"231b56c23e"},"max_file_size_msg":"32M"};
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
<script type='text/javascript' src='../wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min44fd.js?ver=2.70'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/themes\/the-one\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/themes\/the-one\/shop\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script>
<script type='text/javascript' src='../wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min8dc7.js?ver=2.6.13'></script>
<script type='text/javascript' src='../wp-content/plugins/woocommerce/assets/js/jquery-cookie/jquery.cookie.min330a.js?ver=1.4.1'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/themes\/the-one\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/themes\/the-one\/shop\/?wc-ajax=%%endpoint%%","fragment_name":"wc_fragments"};
/* ]]> */
</script>
<script type='text/javascript' src='../wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min8dc7.js?ver=2.6.13'></script>
<script type='text/javascript' src='../wp-content/themes/the-one/includes/icon-picker/assets/js/scripts5152.js?ver=1.0'></script>
<script type='text/javascript' src='../wp-content/plugins/buddypress-media/lib/touchswipe/jquery.touchSwipe.min50fa.js?ver=4.2.1'></script>
<script type='text/javascript' src='../wp-includes/js/wp-embed.mine100.js?ver=4.7.2'></script>
<script type='text/javascript' src='../wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min972f.js?ver=5.0.1'></script>
<script type='text/javascript' src='../wp-content/plugins/js_composer/assets/lib/waypoints/waypoints.min972f.js?ver=5.0.1'></script>

</body>

