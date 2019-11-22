<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/project"
     user="root"  password="aditya"/>
 <%
HttpSession hs=request.getSession();
String id=hs.getAttribute("id").toString();
%>
  <div class="chat-room">
              <div  class="row">
                <div class="col-md-5">

                  <!-- Contact List in Left-->
                  <ul class="nav nav-tabs contact-list scrollbar-wrapper scrollbar-outer">
                  <sql:query dataSource="${snapshot}" var="result">
select id from user where id in(select id1 from friends where id2='<%=id %>' AND status=1 UNION select id2 from friends where id1='<%=id %>' AND status=1); 
</sql:query>
 
<c:forEach var="row" items="${result.rows}">
 <li class="">

 <c:set var="receiver" value="${row.id}" scope="session"  />
      <a href="#contact-1" data-toggle="tab" aria-expanded="false">
        <div class="contact">
        	<img src="../images/${row.id}/dp" alt="" class="profile-photo-sm pull-left">
        	<div class="msg-preview">
        		<h6>${row.fname }</h6>
        		<p class="text-muted">Hi there, how are you</p>
            <small class="text-muted">a min ago</small>
            <div class="chat-alert">1</div>
        	</div>
        </div>
      </a>
    </li>
  
</c:forEach>
   </ul><div class="scroll-element scroll-x scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="width: 86px;"></div></div></div><div class="scroll-element scroll-y scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="height: 331px; top: 0px;"></div></div></div></div><!--Contact List in Left End-->

 
 <div class="col-md-7">

   <!--Chat Messages in Right-->
    <div class="tab-content scrollbar-wrapper wrapper scrollbar-outer">
                   
     
     
     
     
     
     
     
     
       <sql:query dataSource="${snapshot}" var="result">
select id,fname from user where id in(select id1 from friends where id2='<%=id %>' AND status=1 UNION select id2 from friends where id1='<%=id %>' AND status=1); 
</sql:query>
<c:forEach var="row" items="${result.rows}">
  <div class="tab-pane" id="${row.id }">
   <div class="chat-body">
	<ul class="chat-message">
    <sql:query dataSource="${snapshot}" var="result">
		select sender,receiver,status,message from messages where sender='${row.id}' and receiver='<%=id %>' OR receiver='${row.id}' and sender='<%=id %>';
	</sql:query>
	
<c:forEach var="rowj" items="${result.rows}">

    <c:choose>
    <c:when test="${rowj.sender==row.id}">
    	<li class="left">
   			<img src="images/users/user-2.jpg" alt="" class="profile-photo-sm pull-left">
   			<div class="chat-item">
           <div class="chat-item-header">
           	<h5>${row.id}</h5>
           	<small class="text-muted">3 days ago</small>
           </div>
           <p>${rowj.message }</p>
         </div>
   		</li>
   		</c:when>
   		<c:otherwise>
       <li class="right">
   			<img src="images/users/user-1.jpg" alt="" class="profile-photo-sm pull-right">
   			<div class="chat-item">
           <div class="chat-item-header">
           	<h5><%=id %></h5>
           	<small class="text-muted">3 days ago</small>
           </div>
          <p>${rowj.message }</p>
         </div>
   		</li>
    </c:otherwise>
    </c:choose>
    
    
    
    
    </c:forEach> 
    
    </ul>
    </div>
  </div>
   </c:forEach>  
   </div>
   <div class="send-message">
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="Type your message">
                      <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Send</button>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="clearfix"></div>
              </div>
           
       <!--               	
<div class="send-message">
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="Type your message" id="inputmessage">
                      <span class="input-group-btn">
                        <button class="btn btn-default" type="button" id="messagesend">Send</button>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="clearfix"></div>
              </div>
            </div>	

            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            <div class="chat-room">
              <div  class="row">
                <div class="col-md-5">

             
                  

                </div>
                
                
                
                
                
                
                
                
                <div class="col-md-7">

                  
                  <div class="tab-content scrollbar-wrapper wrapper scrollbar-outer">
                    <div class="tab-pane active" id="contact-1">
                      <div class="chat-body">
                      	<ul class="chat-message">
                      		<li class="left">
                      			<img src="images/users/user-2.jpg" alt="" class="profile-photo-sm pull-left" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Linda Lohan</h5>
                              	<small class="text-muted">3 days ago</small>
                              </div>
                              <p>Hi honey, how are you doing???? Long time no see. Where have you been?</p>
                            </div>
                      		</li>
                          <li class="right">
                      			<img src="images/users/user-1.jpg" alt="" class="profile-photo-sm pull-right" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Sarah Cruiz</h5>
                              	<small class="text-muted">3 days ago</small>
                              </div>
                              <p>I have been on vacation</p>
                            </div>
                      		</li>
                          <li class="right">
                      			<img src="images/users/user-1.jpg" alt="" class="profile-photo-sm pull-right" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Sarah Cruiz</h5>
                              	<small class="text-muted">3 days ago</small>
                              </div>
                              <p>it was a great time for me. we had a lot of fun <i class="em em-blush"></i></p>
                            </div>
                      		</li>
                          <li class="left">
                      			<img src="images/users/user-2.jpg" alt="" class="profile-photo-sm pull-left" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Linda Lohan</h5>
                              	<small class="text-muted">3 days ago</small>
                              </div>
                              <p>that's cool I wish I were you <i class="em em-expressionless"></i></p>
                            </div>
                      		</li>
                          <li class="right">
                      			<img src="images/users/user-1.jpg" alt="" class="profile-photo-sm pull-right" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Sarah Cruiz</h5>
                              	<small class="text-muted">3 days ago</small>
                              </div>
                              <p><i class="em em-hand"></i></p>
                            </div>
                      		</li>
                          <li class="left">
                      			<img src="images/users/user-2.jpg" alt="" class="profile-photo-sm pull-left" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Linda Lohan</h5>
                              	<small class="text-muted">a min ago</small>
                              </div>
                              <p>Hi there, how are you</p>
                            </div>
                      		</li>
                      	</ul>
                      </div>
                    </div>
                    <div class="tab-pane" id="contact-2">
                      <div class="chat-body">
                      	<ul class="chat-message">
                      		<li class="left">
                      			<img src="images/users/user-10.jpg" alt="" class="profile-photo-sm pull-left" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Julia Cox</h5>
                              	<small class="text-muted">a day ago</small>
                              </div>
                              <p>Hi</p>
                            </div>
                      		</li>
                          <li class="right">
                      			<img src="images/users/user-1.jpg" alt="" class="profile-photo-sm pull-right" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Sarah Cruiz</h5>
                              	<small class="text-muted">a day ago</small>
                              </div>
                              <p>hellow</p>
                            </div>
                      		</li>
                          <li class="left">
                      			<img src="images/users/user-10.jpg" alt="" class="profile-photo-sm pull-left" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Julia Cox</h5>
                              	<small class="text-muted">an hour ago</small>
                              </div>
                              <p>good</p>
                            </div>
                      		</li>
                          <li class="right">
                      			<img src="images/users/user-1.jpg" alt="" class="profile-photo-sm pull-right" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Sarah Cruiz</h5>
                              	<small class="text-muted">an hour ago</small>
                              </div>
                              <p>see you soon</p>
                            </div>
                      		</li>
                      	</ul>
                      </div>
                    </div>
                    <div class="tab-pane" id="contact-3">
                      <div class="chat-body">
                      	<ul class="chat-message">
                      		<li class="right">
                      			<img src="images/users/user-1.jpg" alt="" class="profile-photo-sm pull-right" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Sarah</h5>
                              	<small class="text-muted">2 days ago</small>
                              </div>
                              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
                            </div>
                      		</li>
                          <li class="left">
                      			<img src="images/users/user-3.jpg" alt="" class="profile-photo-sm pull-left" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Sophia Lee</h5>
                              	<small class="text-muted">a day ago</small>
                              </div>
                              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt</p>
                            </div>
                      		</li>
                          <li class="right">
                      			<img src="images/users/user-1.jpg" alt="" class="profile-photo-sm pull-right" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Sarah  Cruiz</h5>
                              	<small class="text-muted">13 hours ago</small>
                              </div>
                              <p>Okay fine. thank you</p>
                            </div>
                      		</li>
                      	</ul>
                      </div>
                    </div>
                    <div class="tab-pane" id="contact-4">
                      <div class="chat-body">
                      	<ul class="chat-message">
                      		<li class="left">
                      			<img src="images/users/user-4.jpg" alt="" class="profile-photo-sm pull-left" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>John Doe</h5>
                              	<small class="text-muted">a day ago</small>
                              </div>
                              <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.</p>
                            </div>
                      		</li>
                          <li class="left">
                      			<img src="images/users/user-4.jpg" alt="" class="profile-photo-sm pull-left" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>John Doe</h5>
                              	<small class="text-muted">a day ago</small>
                              </div>
                              <p>hey anybody there</p>
                            </div>
                      		</li>
                      	</ul>
                      </div>
                    </div>
                    <div class="tab-pane" id="contact-5">
                      <div class="chat-body">
                      	<ul class="chat-message">
                      		<li class="left">
                      			<img src="images/users/user-9.jpg" alt="" class="profile-photo-sm pull-left" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Anna Young</h5>
                              	<small class="text-muted">2 days ago</small>
                              </div>
                              <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores</p>
                            </div>
                      		</li>
                          <li class="left">
                      			<img src="images/users/user-9.jpg" alt="" class="profile-photo-sm pull-left" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Anna Young</h5>
                              	<small class="text-muted">2 days ago</small>
                              </div>
                              <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                            </div>
                      		</li>
                          <li class="right">
                      			<img src="images/users/user-1.jpg" alt="" class="profile-photo-sm pull-right" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Sarah Cruiz</h5>
                              	<small class="text-muted">2 days ago</small>
                              </div>
                              <p>I gotta go</p>
                            </div>
                      		</li>
                      	</ul>
                      </div>
                    </div>
                    <div class="tab-pane" id="contact-6">
                      <div class="chat-body">
                      	<ul class="chat-message">
                      		<li class="left">
                      			<img src="images/users/user-8.jpg" alt="" class="profile-photo-sm pull-left" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Richard Bell</h5>
                              	<small class="text-muted">2 days ago</small>
                              </div>
                              <p>Hello</p>
                            </div>
                      		</li>
                          <li class="left">
                      			<img src="images/users/user-8.jpg" alt="" class="profile-photo-sm pull-left" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Richard Bell</h5>
                              	<small class="text-muted">2 days ago</small>
                              </div>
                              <p>Hi</p>
                            </div>
                      		</li>
                          <li class="left">
                      			<img src="images/users/user-8.jpg" alt="" class="profile-photo-sm pull-left" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Richard Bell</h5>
                              	<small class="text-muted">2 days ago</small>
                              </div>
                              <p>Hey</p>
                            </div>
                      		</li>
                          <li class="left">
                      			<img src="images/users/user-8.jpg" alt="" class="profile-photo-sm pull-left" />
                      			<div class="chat-item">
                              <div class="chat-item-header">
                              	<h5>Richard Bell</h5>
                              	<small class="text-muted">2 days ago</small>
                              </div>
                              <p>Hey there</p>
                            </div>
                      		</li>
                      	</ul>
                      </div>
                    </div>
                  </div>

                  <div class="send-message">
                    <div class="input-group">
                      <input type="text" class="form-control" placeholder="Type your message">
                      <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Send</button>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="clearfix"></div>
              </div>
            </div>
            
             --> 