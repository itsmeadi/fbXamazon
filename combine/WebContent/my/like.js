 
$(document).ready(function(e1) {
	
	$(".reaction .btn").click(function(ev) {
	      var idd=$(this).closest(".post-content").prop("id");
	     // alert(idd);
	        $.ajax({
	            type : "POST",
	            url : "liked.jsp",
	            data : "pid=" + idd,
	            success : function(data) {
	            	if ( $("#" +idd).find("a.btn").is(".text-blue" ) ) 
	            	{
	            		$("#" +idd).find("a.btn").toggleClass('text-blue text-green');
	            		var value = parseInt($("#" +idd).find("a.btn").text())-1;
	            		$("#" +idd).find(".nol").text(value);
	            	}
	            	else
	            	{
	            		$("#" +idd).find("a.btn").toggleClass('text-blue text-green');
	            		var value = parseInt($("#" +idd).find("a.btn").text())+1;
	            		$("#" +idd).find(".nol").text(value);
	            	}
	            	
	            }
	        });
	        return false;
	    });  
	$(".comment").keypress(function(e) {
		var t=this;
	    if(e.which == 13) {
	    var pid=$(this).closest(".post-content").prop("id");
	       var text=e.currentTarget.value;
	            $.ajax({
		            type : "POST",
		            url : "comment.jsp",
		            data : "pid=" + pid+"&text="+text,
		            
		            success : function(data) 
		            {
		            	$(t).closest(".post-detail").find(".line-divider").after(data);
		            	$(t).val('');
		            	
		            }
		        });
		        return false;
	        
	    }
	});
	

});