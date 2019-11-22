<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div id="to-login-modal" class="modal fade to-modal" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header clearfix">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
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
		<input type="hidden" name="redirect_to" value="http://rozex.us/themes/the-one/shop/">
	</p>

</form>					</div>
				</div>
			</div>
		</div>