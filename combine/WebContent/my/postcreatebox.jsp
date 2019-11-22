<style>
.image-previewa
{
    top: 50px;
    left: -260px;
    display: block;
}
.image-preview-input {
    position: relative;
    overflow: hidden;
    margin: 0px;    
    color: #333;
    background-color: #fff;    
}
.image-preview-input input[type=file] {
    position: absolute;
    top: 0;
    right: 0;
    margin: 0;
    padding: 0;
    font-size: 20px;
    cursor: pointer;
    opacity: 0;
    filter: alpha(opacity=0);
}
.image-preview-input-title 
{
    margin-left:2px;
}
</style>

<script type="text/javascript">
$(document).on('click', '#close-preview', function(){ 
    $('.image-preview').popover('hide');
    // Hover befor close the preview
    $('.image-preview').hover(
        function () {
           $('.image-preview').popover('show');
        }, 
         function () {
           $('.image-preview').popover('hide');
        }
    );    
});

$(function() {
    // Create the close button
    var closebtn = $('<button/>', {
        type:"button",
        text: 'x',
        id: 'close-preview',
        style: 'font-size: initial;',
    });
    closebtn.attr("class","close pull-right");
    // Set the popover default content
    $('.image-preview').popover({
        trigger:'manual',
        html:true,
        title: "<strong>Preview</strong>"+$(closebtn)[0].outerHTML,
        content: "There's no image",
        placement:'bottom'
    });
    // Clear event
    $('.image-preview-clear').click(function(){
        $('.image-preview').attr("data-content","").popover('hide');
        $('.image-preview-filename').val("");
        $('.image-preview-clear').hide();
        $('.image-preview-input input:file').val("");
        $(".image-preview-input-title").text("Browse"); 
    }); 
    // Create the preview image
    $(".image-preview-input input:file").change(function (){     
        var img = $('<img/>', {
            id: 'dynamic',
            width:250,
            height:200
        });      
        var file = this.files[0];
        var reader = new FileReader();
        // Set preview image into the popover data-content
        reader.onload = function (e) {
            $(".image-preview-input-title").text("Change");
            $(".image-preview-clear").show();
            $(".image-preview-filename").val(file.name);            
            img.attr('src', e.target.result);
            $(".image-preview").attr("data-content",$(img)[0].outerHTML).popover("show");
        }        
        reader.readAsDataURL(file);
    });  
    $(".dropzone").dropzone({
		
		  url: 'publish.jsp'
		  alert('uploaded');
		
		});
});</script>
<%
HttpSession hs=request.getSession();
String id="";
if(hs.getAttribute("id")==null)
{
	%>
	<h2 style="margin: 0 auto;width: 500px;margin-top: 50px;">
	Session expired. Click here to <a href="login.jsp">login</a>
	</h2>
	<%
}
else
{
id=request.getParameter("id");

System.out.println(id);
if(id==(null))
{
	id=hs.getAttribute("id").toString();
	
}
}

%>


<div class="create-post">
                <div class="row">
                <form action="../publish" enctype="multipart/form-data" method="POST">
                  <div class="col-md-7 col-sm-7">
                    <div class="form-group">
                      <img src="../images/<%=id%>/dp" alt="" class="profile-photo-md" />
                      <textarea name="texts" id="exampleTextarea" cols="30" rows="1" class="dropzone form-control" placeholder="Write what you wish"></textarea>
                    </div>
                  </div>
                  <div class="col-md-5 col-sm-5">
                    <div class="tools">
                       
                       
                       
                       
                       <div class="input-group image-preview">
                <span class="input-group-btn">
                    <!-- image-preview-clear button -->
                    <button type="button" class="btn image-preview-clear" style="display:none;">
                        <span class="glyphicon glyphicon-remove"></span>
                    </button>
                    <!-- image-preview-input -->
                    <div class="btn image-preview-input">
                        <i class="fa fa-upload"></i>
 						<input type="file" accept="image/png, image/jpeg, image/gif, video/mp4, video/flv" name="input-file-preview"/> <!-- rename it -->
                    </div>
                </span>
                <input type="submit" value="Post" class="btn btn-primary pull-right"></button>
            </div>
                       
                   
                      
                    </div>
                  </div>
                  </form>
                </div>
              </div>