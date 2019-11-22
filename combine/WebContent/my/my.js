/*$(document).ready(function() {
	$("#publish").click(function(){
	    $.post("publish.jsp",
	    {
	        post: $("#publish").val(),
	    },
	    function(data, status){
	        alert("Data: " + data + "\nStatus: " + status);
	    });
	});
});


$(document).ready(function() {
    $("#publish").click(function(e) {
        alert($("#posttext").val());
        $.ajax({
            url : 'publish',
            type : 'POST',
            //dataType : 'json',
            data:
            	{
            	post:$("#posttext").val(),
            	},
            	success: function() {
            		alert('posted');
                },error: function(data) {alert('something wnet wrong :(');}
        });
        return false;
    });     
});  
*/

$(document).ready(function(e) {
	//$(".chat-sidebar").slideUp("slow");alert('das');
	 $("#chatopen1").click(function(){
		
         $(".chat-sidebar").slideToggle("slow");
     });
    $("#s0").keyup(function(e) {
        name = $("#s0").val();
        
        $.ajax({
            type : "POST",
            url : "search.jsp",
            data : "name=" + name,
            success : function(data) {
            	
                $(".ajax-search-results").html(data);
            }
        });
        return false;
    });
    
    $("#s1").keyup(function(e) {
        name = $("#s1").val();
      //  alert(name);
        $.ajax({
            type : "POST",
            url : "search.jsp",
            data : "name=" + name,
            success : function(data) {
            	
                $(".ajax-search-results").html(data);
            }
        });
        return false;
    });  
    $("#addfriend").click(function(){
    	
    	 id = $("#email").text(); 
    	 //alert(id);
         $.ajax({
             type : "GET",
             url : "../friendreq",
             data : "id=" + id,
             success : function(data) {
             	
                 $("#addfriend").text('Request send');
             }
         });
         return false;
    });
    
    $("#messagesend").click(function(){
    	
   	
   	 message=$("#inputmessage").val();
   	 
        $.ajax({
            type : "GET",
            url : "sendmessage.jsp",
            data : "message=" + message,
            success : function(data) {
                //$("#addfriend").text('Request send');
            	alert('success');
            }
        });
        return false;
   });
});   

