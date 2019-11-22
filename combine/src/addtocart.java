

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class addtocart
 */
@WebServlet("/addtocart")
public class addtocart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addtocart() {
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
		HttpSession hs=request.getSession();
		String id=hs.getAttribute("id").toString();
		int rs=999,as;
		Connection cn=null;
		PrintWriter pw=response.getWriter();
		try 
		{	
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost/project?user=root&password=aditya");
		String q="insert into cart (buyer,product,quantity) values(?,?,?);";
		PreparedStatement p=cn.prepareStatement(q);
		p.setString(1,id);
		p.setString(2,request.getParameter("product-id"));
		
		p.setString(3,request.getParameter("quantity"));
		System.out.println("update= "+p);
		
		//String pic=request.getParameter("pic");
		rs=p.executeUpdate();
		cn.close();
			if(rs==1)
			{
				response.sendRedirect("my/shop");
			}
			else
				pw.println("an error occured");
		
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


