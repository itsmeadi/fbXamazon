

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.oreilly.servlet.MultipartRequest;

@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter pw=response.getWriter();
		FileWriter fw=new FileWriter("images");
		//Calendar myDate = Calendar.getInstance();
		//myDate.set(Integer.parseInt(request.getParameter("byear")), 8/*Integer.parseInt(request.getParameter("bmonth"))*/, Integer.parseInt(request.getParameter("bday")));
		String id=request.getParameter("email");
		String absoluteDiskPath=request.getServletContext().getInitParameter("upload.location");
		File f=new File(absoluteDiskPath+"\\"+id);
		f.mkdir();
		
		/*System.out.println(absoluteDiskPath);
		MultipartRequest m = new MultipartRequest(request, absoluteDiskPath+"\\"+id);  
		File f1[]=f.listFiles();	
		f1[0].renameTo(new File(f+"\\dp.jpg"));
		*/
		int rs=999,as;
		Connection cn=null;
		try 
		{	
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost/project?user=root&password=aditya");
		String q="insert into user (fname,lname,id,pass,gender) values(?,?,?,?,?)";
		
		PreparedStatement p=cn.prepareStatement(q);
		p.setString(1,request.getParameter("fname"));
		p.setString(2,request.getParameter("lname"));
		p.setString(3,id);
		p.setString(4,request.getParameter("password"));
		p.setString(5,request.getParameter("gender"));
		//p.setString(6,request.getParameter(null));
		System.out.println("here="+p);
		HttpSession hs=request.getSession();
		hs.setAttribute("name", request.getParameter("fname"));
		hs.setAttribute("id", request.getParameter("email"));
		//String pic=request.getParameter("pic");
		rs=p.executeUpdate();
		cn.close();
		if(rs==1)
		response.sendRedirect("my/timeline");
		} catch (Exception e) {
			pw.print(e);
			e.printStackTrace();
		}
		finally
		{
			try {
				cn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(rs==1)
			pw.println("signup successful="+rs);
		}		
	}
}
