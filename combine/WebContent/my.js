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
*/

$(document).ready(function() {
    $("#publish").click(function(e) {
        //alert($("#posttext").val());
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