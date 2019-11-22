
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.tomcat.util.http.fileupload.IOUtils;

import com.oreilly.servlet.MultipartRequest;
/*
 * Servlet implementation class publish
 */
@WebServlet("/publish")
@MultipartConfig
public class publish extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public publish() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		HttpSession hs=request.getSession();
		String id=hs.getAttribute("id").toString();
		Part filePart = request.getPart("input-file-preview"); 
		String type=filePart.getContentType();
		type="."+type.substring(type.lastIndexOf("/")+1);
		System.out.println("extension "+type);
		if(!(type.equals(".octet-stream")))
		{
		String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());
		upload dp=new upload(request,"input-file-preview",id+"\\"+timeStamp+type);
		
		}   
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/project?user=root&password=aditya");
			String q="insert into publish (id,content,type) values(?,?,?)";
			PreparedStatement p=cn.prepareStatement(q);
			p.setString(1, id);
			p.setString(2, request.getParameter("texts"));
			p.setString(3, type);
			
			p.executeUpdate();
			System.out.println(p);
			cn.close();
			}
			catch(Exception e)
			{
				pw.print(e);
				System.out.println(e);
				e.printStackTrace();
				
			}
		response.sendRedirect("my/newsfeed");
	}

}
