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
<sql:query dataSource="${snapshot}" var="result">
select * from user where id ='${sessionScope.id}';     
</sql:query>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Checkout</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container site-container right-sidebar">

<div id="main">	<div id="primary" class="site-content">
		<div id="content" role="main">

			<div class="single-entry">

				
					<article id="post-24" class="clearfix  post-24 page type-page status-publish hentry post-item">

	
	
			<div class="entry-content">
			<div class="woocommerce">

	<div class="woocommerce-info">Returning customer? <a href="#" class="showlogin">Click here to login</a></div>

<form name="checkout" method="post" class="checkout" action="../tst" enctype="multipart/form-data">

		<div class="wc-purchase-steps">
			<ul>
				<li>
					<a href="http://rozex.us/themes/the-one/cart/">Shopping Cart</a>
				</li>
				<li class="active"><span>Checkout Details</span></li>
				<li><span>Order Complete</span></li>f
			</ul>
		</div>

		<h1 class="page-title">Checkout</h1>


		<div class="row">
			<div class="col-lg-8">

				
					
					<div id="customer_details">
						<div class="woocommerce-billing-fields">
	
		<h3>Billing Details</h3>

	
	
	
		<p class="form-row form-row form-row-first validate-required" id="billing_first_name_field"><label for="billing_first_name" class="">First Name <abbr class="required" title="required">*</abbr></label><input type="text" class="input-text " name="billing_first_name" id="billing_first_name" placeholder="" autocomplete="given-name" value="${result.rows[0].fname}"></p>
	
		<p class="form-row form-row form-row-last validate-required" id="billing_last_name_field"><label for="billing_last_name" class="">Last Name <abbr class="required" title="required">*</abbr></label><input type="text" class="input-text " name="billing_last_name" id="billing_last_name" placeholder="" autocomplete="family-name" value="${result.rows[0].lname}"></p><div class="clear"></div>
	
		<p class="form-row form-row form-row-wide" id="billing_company_field"><label for="billing_company" class="">Company Name</label><input type="text" class="input-text " name="billing_company" id="billing_company" placeholder="" autocomplete="organization" value=""></p>
	
		<p class="form-row form-row form-row-first validate-required validate-email" id="billing_email_field"><label for="billing_email" class="">Email Address <abbr class="required" title="required">*</abbr></label><input type="email" class="input-text " name="billing_email" id="billing_email" placeholder="" autocomplete="email" value="${result.rows[0].id}"></p>
	
		<p class="form-row form-row form-row-last validate-required validate-phone" id="billing_phone_field"><label for="billing_phone" class="">Phone <abbr class="required" title="required">*</abbr></label><input type="tel" class="input-text " name="billing_phone" id="billing_phone" placeholder="" autocomplete="tel" value=""></p><div class="clear"></div>
	Country
		<select style="height: 30px;border-radius: 3px;width:100%"name="billing_country" id="billing_country" autocomplete="country" class="country_to_state country_select " tabindex="-1" title="Country *" style="display: none;">
		<option value="">Select a country</option>
		<option value="AX">�land Islands</option><option value="AF">Afghanistan</option><option value="AL">Albania</option><option value="DZ">Algeria</option><option value="AS">American Samoa</option><option value="AD">Andorra</option><option value="AO">Angola</option><option value="AI">Anguilla</option><option value="AQ">Antarctica</option><option value="AG">Antigua and Barbuda</option><option value="AR">Argentina</option><option value="AM">Armenia</option><option value="AW">Aruba</option><option value="AU">Australia</option><option value="AT">Austria</option><option value="AZ">Azerbaijan</option><option value="BS">Bahamas</option><option value="BH">Bahrain</option><option value="BD">Bangladesh</option><option value="BB">Barbados</option><option value="BY">Belarus</option><option value="PW">Belau</option><option value="BE">Belgium</option><option value="BZ">Belize</option><option value="BJ">Benin</option><option value="BM">Bermuda</option><option value="BT">Bhutan</option><option value="BO">Bolivia</option><option value="BQ">Bonaire, Saint Eustatius and Saba</option><option value="BA">Bosnia and Herzegovina</option><option value="BW">Botswana</option><option value="BV">Bouvet Island</option><option value="BR">Brazil</option><option value="IO">British Indian Ocean Territory</option><option value="VG">British Virgin Islands</option><option value="BN">Brunei</option><option value="BG">Bulgaria</option><option value="BF">Burkina Faso</option><option value="BI">Burundi</option><option value="KH">Cambodia</option><option value="CM">Cameroon</option><option value="CA">Canada</option><option value="CV">Cape Verde</option><option value="KY">Cayman Islands</option><option value="CF">Central African Republic</option><option value="TD">Chad</option><option value="CL">Chile</option><option value="CN">China</option><option value="CX">Christmas Island</option><option value="CC">Cocos (Keeling) Islands</option><option value="CO">Colombia</option><option value="KM">Comoros</option><option value="CG">Congo (Brazzaville)</option><option value="CD">Congo (Kinshasa)</option><option value="CK">Cook Islands</option><option value="CR">Costa Rica</option><option value="HR">Croatia</option><option value="CU">Cuba</option><option value="CW">Cura�ao</option><option value="CY">Cyprus</option><option value="CZ">Czech Republic</option><option value="DK">Denmark</option><option value="DJ">Djibouti</option><option value="DM">Dominica</option><option value="DO">Dominican Republic</option><option value="EC">Ecuador</option><option value="EG">Egypt</option><option value="SV">El Salvador</option><option value="GQ">Equatorial Guinea</option><option value="ER">Eritrea</option><option value="EE">Estonia</option><option value="ET">Ethiopia</option><option value="FK">Falkland Islands</option><option value="FO">Faroe Islands</option><option value="FJ">Fiji</option><option value="FI">Finland</option><option value="FR">France</option><option value="GF">French Guiana</option><option value="PF">French Polynesia</option><option value="TF">French Southern Territories</option><option value="GA">Gabon</option><option value="GM">Gambia</option><option value="GE">Georgia</option><option value="DE">Germany</option><option value="GH">Ghana</option><option value="GI">Gibraltar</option><option value="GR">Greece</option><option value="GL">Greenland</option><option value="GD">Grenada</option><option value="GP">Guadeloupe</option><option value="GU">Guam</option><option value="GT">Guatemala</option><option value="GG">Guernsey</option><option value="GN">Guinea</option><option value="GW">Guinea-Bissau</option><option value="GY">Guyana</option><option value="HT">Haiti</option><option value="HM">Heard Island and McDonald Islands</option><option value="HN">Honduras</option><option value="HK">Hong Kong</option><option value="HU">Hungary</option><option value="IS">Iceland</option><option value="IN" selected="selected">India</option><option value="ID">Indonesia</option><option value="IR">Iran</option><option value="IQ">Iraq</option><option value="IM">Isle of Man</option><option value="IL">Israel</option><option value="IT">Italy</option><option value="CI">Ivory Coast</option><option value="JM">Jamaica</option><option value="JP">Japan</option><option value="JE">Jersey</option><option value="JO">Jordan</option><option value="KZ">Kazakhstan</option><option value="KE">Kenya</option><option value="KI">Kiribati</option><option value="KW">Kuwait</option><option value="KG">Kyrgyzstan</option><option value="LA">Laos</option><option value="LV">Latvia</option><option value="LB">Lebanon</option><option value="LS">Lesotho</option><option value="LR">Liberia</option><option value="LY">Libya</option><option value="LI">Liechtenstein</option><option value="LT">Lithuania</option><option value="LU">Luxembourg</option><option value="MO">Macao S.A.R., China</option><option value="MK">Macedonia</option><option value="MG">Madagascar</option><option value="MW">Malawi</option><option value="MY">Malaysia</option><option value="MV">Maldives</option><option value="ML">Mali</option><option value="MT">Malta</option><option value="MH">Marshall Islands</option><option value="MQ">Martinique</option><option value="MR">Mauritania</option><option value="MU">Mauritius</option><option value="YT">Mayotte</option><option value="MX">Mexico</option><option value="FM">Micronesia</option><option value="MD">Moldova</option><option value="MC">Monaco</option><option value="MN">Mongolia</option><option value="ME">Montenegro</option><option value="MS">Montserrat</option><option value="MA">Morocco</option><option value="MZ">Mozambique</option><option value="MM">Myanmar</option><option value="NA">Namibia</option><option value="NR">Nauru</option><option value="NP">Nepal</option><option value="NL">Netherlands</option><option value="NC">New Caledonia</option><option value="NZ">New Zealand</option><option value="NI">Nicaragua</option><option value="NE">Niger</option><option value="NG">Nigeria</option><option value="NU">Niue</option><option value="NF">Norfolk Island</option><option value="KP">North Korea</option><option value="MP">Northern Mariana Islands</option><option value="NO">Norway</option><option value="OM">Oman</option><option value="PK">Pakistan</option><option value="PS">Palestinian Territory</option><option value="PA">Panama</option><option value="PG">Papua New Guinea</option><option value="PY">Paraguay</option><option value="PE">Peru</option><option value="PH">Philippines</option><option value="PN">Pitcairn</option><option value="PL">Poland</option><option value="PT">Portugal</option><option value="PR">Puerto Rico</option><option value="QA">Qatar</option><option value="IE">Republic of Ireland</option><option value="RE">Reunion</option><option value="RO">Romania</option><option value="RU">Russia</option><option value="RW">Rwanda</option><option value="ST">S�o Tom� and Pr�ncipe</option><option value="BL">Saint Barth�lemy</option><option value="SH">Saint Helena</option><option value="KN">Saint Kitts and Nevis</option><option value="LC">Saint Lucia</option><option value="SX">Saint Martin (Dutch part)</option><option value="MF">Saint Martin (French part)</option><option value="PM">Saint Pierre and Miquelon</option><option value="VC">Saint Vincent and the Grenadines</option><option value="WS">Samoa</option><option value="SM">San Marino</option><option value="SA">Saudi Arabia</option><option value="SN">Senegal</option><option value="RS">Serbia</option><option value="SC">Seychelles</option><option value="SL">Sierra Leone</option><option value="SG">Singapore</option><option value="SK">Slovakia</option><option value="SI">Slovenia</option><option value="SB">Solomon Islands</option><option value="SO">Somalia</option><option value="ZA">South Africa</option><option value="GS">South Georgia/Sandwich Islands</option><option value="KR">South Korea</option><option value="SS">South Sudan</option><option value="ES">Spain</option><option value="LK">Sri Lanka</option><option value="SD">Sudan</option><option value="SR">Suriname</option><option value="SJ">Svalbard and Jan Mayen</option><option value="SZ">Swaziland</option><option value="SE">Sweden</option><option value="CH">Switzerland</option><option value="SY">Syria</option><option value="TW">Taiwan</option><option value="TJ">Tajikistan</option><option value="TZ">Tanzania</option><option value="TH">Thailand</option><option value="TL">Timor-Leste</option><option value="TG">Togo</option><option value="TK">Tokelau</option><option value="TO">Tonga</option><option value="TT">Trinidad and Tobago</option><option value="TN">Tunisia</option><option value="TR">Turkey</option><option value="TM">Turkmenistan</option><option value="TC">Turks and Caicos Islands</option><option value="TV">Tuvalu</option><option value="UG">Uganda</option><option value="UA">Ukraine</option><option value="AE">United Arab Emirates</option><option value="GB">United Kingdom (UK)</option><option value="US">United States (US)</option><option value="UM">United States (US) Minor Outlying Islands</option><option value="VI">United States (US) Virgin Islands</option><option value="UY">Uruguay</option><option value="UZ">Uzbekistan</option><option value="VU">Vanuatu</option><option value="VA">Vatican</option><option value="VE">Venezuela</option><option value="VN">Vietnam</option><option value="WF">Wallis and Futuna</option><option value="EH">Western Sahara</option><option value="YE">Yemen</option><option value="ZM">Zambia</option><option value="ZW">Zimbabwe</option>
		</select><noscript>&lt;input type="submit" name="woocommerce_checkout_update_totals" value="Update country" /&gt;</noscript></p>
	
		<p class="form-row form-row form-row-wide address-field validate-required" id="billing_address_1_field"><label for="billing_address_1" class="">Address <abbr class="required" title="required">*</abbr></label><input type="text" class="input-text " name="billing_address_1" id="billing_address_1" placeholder="Street address" autocomplete="address-line1" value=""></p>
	
		<p class="form-row form-row form-row-wide address-field" id="billing_address_2_field"><input type="text" class="input-text " name="billing_address_2" id="billing_address_2" placeholder="Apartment, suite, unit etc. (optional)" autocomplete="address-line2" value=""></p>
	
		<p class="form-row form-row form-row-wide address-field validate-required" id="billing_city_field" data-o_class="form-row form-row form-row-wide address-field validate-required"><label for="billing_city" class="">Town / City <abbr class="required" title="required">*</abbr></label><input type="text" class="input-text " name="billing_city" id="billing_city" placeholder="" autocomplete="address-level2" value=""></p>
	
		<p class="form-row form-row form-row-first address-field validate-state woocommerce-invalid woocommerce-invalid-required-field validate-required" id="billing_state_field" data-o_class="form-row form-row form-row-first address-field validate-required validate-state woocommerce-invalid woocommerce-invalid-required-field"><label for="billing_state" class="">State / County <abbr class="required" title="required">*</abbr></label>
		
		
		<select name="billing_state" id="billing_state" class="state_select " data-placeholder="" autocomplete="address-level1" tabindex="-1" title="State / County *" style="height: 30px;
    border-radius: 3px;"><option value="">Select an option...</option><option value="AP">Andhra Pradesh</option><option value="AR">Arunachal Pradesh</option><option value="AS">Assam</option><option value="BR">Bihar</option><option value="CT">Chhattisgarh</option><option value="GA">Goa</option><option value="GJ">Gujarat</option><option value="HR">Haryana</option><option value="HP">Himachal Pradesh</option><option value="JK">Jammu and Kashmir</option><option value="JH">Jharkhand</option><option value="KA">Karnataka</option><option value="KL">Kerala</option><option value="MP">Madhya Pradesh</option><option value="MH">Maharashtra</option><option value="MN">Manipur</option><option value="ML">Meghalaya</option><option value="MZ">Mizoram</option><option value="NL">Nagaland</option><option value="OR">Orissa</option><option value="PB">Punjab</option><option value="RJ">Rajasthan</option><option value="SK">Sikkim</option><option value="TN">Tamil Nadu</option><option value="TS">Telangana</option><option value="TR">Tripura</option><option value="UK">Uttarakhand</option><option value="UP">Uttar Pradesh</option><option value="WB">West Bengal</option><option value="AN">Andaman and Nicobar Islands</option><option value="CH">Chandigarh</option><option value="DN">Dadar and Nagar Haveli</option><option value="DD">Daman and Diu</option><option value="DL">Delhi</option><option value="LD">Lakshadeep</option><option value="PY">Pondicherry (Puducherry)</option></select></p><p class="form-row form-row form-row-last address-field validate-postcode validate-required" id="billing_postcode_field" data-o_class="form-row form-row form-row-last address-field validate-required validate-postcode"><label for="billing_postcode" class="">Postcode / ZIP <abbr class="required" title="required">*</abbr></label><input type="text" class="input-text " name="billing_postcode" id="billing_postcode" placeholder="" autocomplete="postal-code" value=""></p>
	
		<div class="clear"></div>
	
	
	
		
			<p class="form-row form-row-wide create-account woocommerce-validated">
				<input class="input-checkbox" id="createaccount" type="checkbox" name="createaccount" value="1"> <label for="createaccount" class="checkbox">Create an account?</label>
			</p>

		
		
		
			<div class="create-account" style="display: none;">

				<p>Create an account by entering the information below. If you are a returning customer please login at the top of the page.</p>

				
					<p class="form-row form-row validate-required" id="account_password_field"><label for="account_password" class="">Account password <abbr class="required" title="required">*</abbr></label><input type="password" class="input-text " name="account_password" id="account_password" placeholder="Password" value=""></p>
				
				<div class="clear"></div>

			</div>

		
		
	</div>
						<div class="woocommerce-shipping-fields">
	
	
	
		
			<h3>Additional Information</h3>

		
		
			<p class="form-row form-row notes" id="order_comments_field"><label for="order_comments" class="">Order Notes</label><textarea name="order_comments" class="input-text " id="order_comments" placeholder="Notes about your order, e.g. special notes for delivery." rows="2" cols="5"></textarea></p>
		
	
	</div>
					</div>

					
							</div>

			<div class="col-lg-4">
				<div id="checkout-order-review">

					<h3 id="order_review_heading">Your order</h3>

					<table class="shop_table woocommerce-checkout-review-order-table">
	<thead>
	<tr>
		<th class="product-name">Product</th>
		<th class="product-total">Total</th>
	</tr>
	</thead>
	<sql:query dataSource="${snapshot}" var="result">
select * from products,cart where products.id=cart.product and cart.buyer='${sessionScope.id}';
</sql:query>
	<tbody>
	<c:set var="total" value="${0}"/>
	<c:forEach var="row" items="${result.rows}">
				<tr class="cart_item">
				<td class="product-name">
					${row.name }&nbsp;					 <strong class="product-quantity">� ${row.quantity }</strong>									</td>
				<td class="product-total">
					<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">Rs&nbsp</span>${row.price }</span>				</td>
			</tr>
			<c:set var="prices" value="${fn:replace(row.price,',', '')}" />
         <fmt:parseNumber var="price" type="number" value="${prices}" />                       
		<c:set var="total" value="${total + price}" />	
			</c:forEach>
				</tbody>
	<tfoot>

	<tr class="cart-subtotal">
		<th>Subtotal</th>
		<td><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">Rs&nbsp</span>${total }</span></td>
	</tr>

	
	
	
									
	
	<tr class="order-total">
		<th>Total</th>
		<td><strong><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">Rs&nbsp</span>${total }</span></strong> </td>
	</tr>

	
	</tfoot>
</table><div id="payment" class="woocommerce-checkout-payment">
			<ul class="wc_payment_methods payment_methods methods">
			<li class="wc_payment_method payment_method_cheque">
	<input id="payment_method_cheque" type="radio" class="input-radio" name="payment_method" value="cheque" checked="checked" data-order_button_text="">

	<label for="payment_method_cheque">
		Check Payments 	</label>
			<div class="payment_box payment_method_cheque">
			<p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
		</div>
	</li>
<li class="wc_payment_method payment_method_paypal">
	<input id="payment_method_paypal" type="radio" class="input-radio" name="payment_method" value="paypal" data-order_button_text="Proceed to PayPal">

	<label for="payment_method_paypal">
		PayPal <img src="https://www.paypalobjects.com/webstatic/mktg/logo/AM_mc_vs_dc_ae.jpg" alt="PayPal Acceptance Mark"><a href="https://www.paypal.com/us/webapps/mpp/paypal-popup" class="about_paypal" onclick="javascript:window.open('https://www.paypal.com/us/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;" title="What is PayPal?">What is PayPal?</a>	</label>
			<div class="payment_box payment_method_paypal" style="display:none;">
			<p>Pay via PayPal; you can pay with your credit card if you don't have a PayPal account.</p>
		</div>
	</li>
		</ul>
		<div class="form-row place-order">
		<noscript>
			Since your browser does not support JavaScript, or it is disabled, please ensure you click the &lt;em&gt;Update Totals&lt;/em&gt; button before placing your order. You may be charged more than the amount stated above if you fail to do so.			&lt;br/&gt;&lt;input type="submit" class="button alt" name="woocommerce_checkout_update_totals" value="Update totals" /&gt;
		</noscript>

		
		
		<input type="submit" class="button alt" name="woocommerce_checkout_place_order" id="place_order" value="Place order" data-value="Place order">
		
		<input type="hidden" id="_wpnonce" name="_wpnonce" value="8603de79ec"><input type="hidden" name="_wp_http_referer" value="/themes/the-one/checkout/?wc-ajax=update_order_review">	</div>
</div>

				</div>
			</div>
		</div>


	</form>
	</div>
	</div>
	</article>
	</div>
	</div>
	</div>
	</div>
	</div>
	
</body>
</html>