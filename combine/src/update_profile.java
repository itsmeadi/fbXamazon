

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.websocket.Session;

import org.apache.tomcat.util.http.fileupload.IOUtils;

import com.oreilly.servlet.MultipartRequest;

@WebServlet("/update_profile")
@MultipartConfig
public class update_profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public update_profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession hs=request.getSession();
		String id=hs.getAttribute("id").toString();
		int rs=999,as;
		Connection cn=null;
		PrintWriter pw=response.getWriter();
		try 
		{	
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost/project?user=root&password=aditya");
		String q="update user set fname=(?),lname=(?),pass=(?),prof=(?)where id=(?) and pass=(?)";
		String pass=request.getParameter("new_pass");
		if(pass == null ||pass.isEmpty())
			pass=request.getParameter("pass");
		PreparedStatement p=cn.prepareStatement(q);
		p.setString(1,request.getParameter("fname"));
		p.setString(2,request.getParameter("lname"));
		
		p.setString(3,pass);
		p.setString(4,request.getParameter("Profession"));
		p.setString(5,(id));
		p.setString(6,request.getParameter("pass"));
		System.out.println("update= "+p);
		
		//String pic=request.getParameter("pic");
		rs=p.executeUpdate();
		cn.close();
			if(rs==1)
			{
				upload dp=new upload(request,"dp",id+"\\dp");
				upload cover=new upload(request,"cover",id+"\\cover");
				response.sendRedirect("my/timeline");
			}
			else
				pw.println("wrong password");
		
		} 
		catch (Exception e) 
		{
			System.out.print(e);
			e.printStackTrace();
		}
		finally
		{
			try 
			{
				cn.close();
			} 
			catch (SQLException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		}		
	}
}
