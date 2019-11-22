import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import org.apache.tomcat.util.http.fileupload.IOUtils;


public class upload 
{
upload(HttpServletRequest request,String name,String filename)
{
	//String id=request.getSession().getAttribute("id").toString();
	try
	{
	Part dp = request.getPart(name); 
	String type=dp.getContentType();
	type="."+type.substring(type.lastIndexOf("/")+1);
	if(!(type.equals(".octet-stream")))
	{
	String path=request.getServletContext().getInitParameter("upload.location")+filename;
	File f = new File(path);
		System.out.println(path);
			OutputStream out=new FileOutputStream(f);
		 	//String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
		    InputStream is = dp.getInputStream();
		    IOUtils.copy(is,out);
		    is.close();
		    out.close();
	}
	
	}
	catch(Exception e)
	{
		System.out.println(e);
		e.printStackTrace();
	}
}  
	
}
	

