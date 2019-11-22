<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<div class="products-categories">
			<h2 class="title">Categories</h2>
						<div class="owl-carousel" >
						
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>
 
<sql:query dataSource="${snapshot}" var="result">
select id,name from category where pid is null;
</sql:query>
 
<c:forEach var="row" items="${result.rows}">
	<div class="cat-container">
		<div class="category">
			<a href="shop-category.jsp?id=${row.id}">
				<img width="300" height="200" src="../images/categories/${row.name}.jpg" class="attachment-medium size-medium" alt="" srcset="" sizes="(max-width: 300px) 100vw, 300px" />								
				<span class="cat-title">${row.name}</span>
				<span class="cat-items">10</span>
			</a>
		</div>
	</div>
							
						
  
</c:forEach>

</div>
</div>
<!-- 
    <div class="products-categories">
			<h2 class="title">Categories</h2>
						<div class="owl-carousel" >
							<div class="cat-container">
								<div class="category">
									<a href="../product-category/clothing/index.html">
										<img width="300" height="200" src="../wp-content/uploads/2016/06/suit-407086_1920-300x200.jpg" class="attachment-medium size-medium" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2016/06/suit-407086_1920-300x200.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/suit-407086_1920-768x512.jpg 768w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/suit-407086_1920-1024x683.jpg 1024w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/suit-407086_1920-800x533.jpg 800w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/suit-407086_1920-672x448.jpg 672w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/suit-407086_1920-1038x692.jpg 1038w" sizes="(max-width: 300px) 100vw, 300px" />								
										<span class="cat-title">Clothing</span>
										<span class="cat-items">10</span>
									</a>
								</div>
							</div>

							<div class="cat-container">
								<div class="category">
							<a href="../product-category/gadgets/index.html">
								<img width="300" height="199" src="../wp-content/uploads/2016/06/mobile-616012_1920-300x199.jpg" class="attachment-medium size-medium" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2016/06/mobile-616012_1920-300x199.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/mobile-616012_1920-768x510.jpg 768w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/mobile-616012_1920-1024x680.jpg 1024w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/mobile-616012_1920-800x531.jpg 800w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/mobile-616012_1920-672x446.jpg 672w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/mobile-616012_1920-1038x689.jpg 1038w" sizes="(max-width: 300px) 100vw, 300px" />								<span class="cat-title">Gadgets</span>
								<span class="cat-items">6</span>
							</a>
						</div>
					</div>

									<div class="cat-container">
						<div class="category">
							<a href="../product-category/home-kitchen/index.html">
								<img width="300" height="199" src="../wp-content/uploads/2016/06/kitchen-1336160_1920-300x199.jpg" class="attachment-medium size-medium" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2016/06/kitchen-1336160_1920-300x199.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/kitchen-1336160_1920-768x510.jpg 768w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/kitchen-1336160_1920-1024x680.jpg 1024w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/kitchen-1336160_1920-800x531.jpg 800w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/kitchen-1336160_1920-672x446.jpg 672w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/kitchen-1336160_1920-1038x689.jpg 1038w" sizes="(max-width: 300px) 100vw, 300px" />								<span class="cat-title">Home and Kitchen</span>
								<span class="cat-items">4</span>
							</a>
						</div>
					</div>

									<div class="cat-container">
						<div class="category">
							<a href="../product-category/music/index.html">
								<img width="300" height="200" src="../wp-content/uploads/2016/06/saxophone-546303_1280-300x200.jpg" class="attachment-medium size-medium" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2016/06/saxophone-546303_1280-300x200.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/saxophone-546303_1280-768x512.jpg 768w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/saxophone-546303_1280-1024x682.jpg 1024w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/saxophone-546303_1280-800x533.jpg 800w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/saxophone-546303_1280-672x448.jpg 672w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/saxophone-546303_1280-1038x692.jpg 1038w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/saxophone-546303_1280.jpg 1280w" sizes="(max-width: 300px) 100vw, 300px" />								<span class="cat-title">Music</span>
								<span class="cat-items">3</span>
							</a>
						</div>
					</div>

									<div class="cat-container">
						<div class="category">
							<a href="../product-category/toys/index.html">
								<img width="300" height="200" src="../wp-content/uploads/2016/06/bear-1387167_1920-300x200.jpg" class="attachment-medium size-medium" alt="" srcset="http://rozex.us/themes/the-one/wp-content/uploads/2016/06/bear-1387167_1920-300x200.jpg 300w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/bear-1387167_1920-768x512.jpg 768w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/bear-1387167_1920-1024x683.jpg 1024w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/bear-1387167_1920-800x533.jpg 800w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/bear-1387167_1920-672x448.jpg 672w, http://rozex.us/themes/the-one/wp-content/uploads/2016/06/bear-1387167_1920-1038x692.jpg 1038w" sizes="(max-width: 300px) 100vw, 300px" />								<span class="cat-title">Toys</span>
								<span class="cat-items">4</span>
							</a>
						</div>
					</div>

							</div>
		</div>
    
             -->