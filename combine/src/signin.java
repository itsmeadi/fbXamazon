
import java .io.*;
import java.sql.*;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.net.httpserver.HttpContext;
@WebServlet("/signin")
public class signin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public signin() {
    	super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(" insidesignin");
		String id=request.getParameter("email");
		String pass=request.getParameter("password");
		PrintWriter pw=response.getWriter();
		try 
		{	
			Class.forName("com.mysql.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/project?user=root&password=aditya");
			String q="select * from user where id=? and  pass=?";
			PreparedStatement p=cn.prepareStatement(q);
			
			
			p.setString(1,id);
			p.setString(2,pass);
			ResultSet rs=p.executeQuery();
			System.out.println(p);
			if(rs.next())
			{
				
				//String l="update fbonline set stat=1 where id=(?)";
				//PreparedStatement pl=cn.prepareStatement(l);
				//pl.setString(1, id);
				//pl.executeUpdate();
				
				Cookie ck=new Cookie("id",id);
				ck.setMaxAge(60*60);
				response.addCookie(ck);
				HttpSession hs=request.getSession();
				ServletContext sc=request.getServletContext();
				//if(sc.getAttribute("nou").toString()==null)sc.setAttribute("nou", "0" );
				//int nou=Integer.parseInt(sc.getAttribute("nou").toString());nou++;
				//sc.setAttribute("nou", nou );
				String name;
				name=rs.getString("fname");
				hs.setAttribute("id", id);
				hs.setAttribute("name", name);
				sc.setAttribute("logo", "images\\senju.PNG");
				cn.close();
				
				
				//hs.setMaxInactiveInterval(5);
				response.sendRedirect("my/shop");
			}
			else
			{
				cn.close();
				response.sendRedirect("my/shop");
			}
		} catch (Exception e) {
			pw.print(e);
			e.printStackTrace();
		}
		finally
		{
			
		}
		
		
	}

}
