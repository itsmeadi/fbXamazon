

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class requestresponse
 */
@WebServlet("/requestresponse")
public class requestresponse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public requestresponse() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs=request.getSession();
		if(hs.getAttribute("id")!=null)
		{
		String mid=hs.getAttribute("id").toString();
		String uid=request.getParameter("id");
		String res=request.getParameter("res");
		System.out.println(uid);
		String q="";
		if(res.equals("accept"))
			q="update friends set status=1 where id1=(?) AND id2=(?)";
		if(res.equals("reject"))
			q="delete from friends where id1=(?) AND id2=(?)";
		Connection cn=null;
		try 
		{	
		Class.forName("com.mysql.jdbc.Driver");
		cn=DriverManager.getConnection("jdbc:mysql://localhost/project?user=root&password=aditya");
		PreparedStatement p=cn.prepareStatement(q);
		p.setString(1,uid);
		p.setString(2,mid);
		System.out.println(p);	
		
		int rs=p.executeUpdate();
		cn.close();
		}
		catch(Exception e)
		{			
			System.out.println(e);	
		}
		}
		response.sendRedirect("my/timeline");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
