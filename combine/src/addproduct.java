

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class addproduct
 */
@WebServlet("/addproduct")
@MultipartConfig
public class addproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addproduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		PrintWriter pw=response.getWriter();
		pw.println(name);
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		//System.out.println("folder="+f+" "f);
		String id=request.getSession().getAttribute("id").toString();
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
		String q="insert into products (name,desp,quantity,price,pid,seller) values(?,?,?,?,?,?)";
		
		PreparedStatement p=cn.prepareStatement(q);
		p.setString(1,request.getParameter("name"));
		p.setString(2,request.getParameter("descp"));
		p.setString(3,request.getParameter("quantity"));
		p.setString(4,request.getParameter("price"));
		p.setString(5,request.getParameter("category"));
		p.setString(6,id);
		//String pic=request.getParameter("pic");
		rs=p.executeUpdate();
		
			if(rs==1)
			{
				q="select id from products order by id desc";
				p=cn.prepareStatement(q);
				ResultSet rrs=p.executeQuery(q);
				String name="0";
				if(rrs.next())
				name=rrs.getString("id");
				//String name=request.getParameter("name");
				String absoluteDiskPath=request.getServletContext().getInitParameter("upload.location")+"\\products";
				String up=absoluteDiskPath+"\\"+name;
				File f=new File(up);
				f.mkdir();
				
					System.out.println("\n\n\n\n"+up+"\n\n\n\n");
					String gg=request.getSession().getAttribute("id").toString();
					upload p1=new upload(request,"p1","products\\"+name+"\\1");
					upload p2=new upload(request,"p2","products\\"+name+"\\2");
					
					upload p3=new upload(request,"p3","products\\"+name+"\\3");
					upload p4=new upload(request,"p4","products\\"+name+"\\4");
					
				
			}
			else
				pw.println("wrong password");
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
			response.sendRedirect("my/shop");
		}		
	}
}


