<%@ page language="java" import="java.io.*" import="com.oreilly.servlet.MultipartRequest" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
PrintWriter pw=response.getWriter();
HttpSession hs=request.getSession();
String id=hs.getAttribute("id").toString();
//String path=request.getSession().getServletContext().getRealPath("/images");
String path="C:\\Users\\SCR3AM3R\\workspace\\combine\\WebContent\\images\\"+id;
File f = new File(path);

MultipartRequest m = new MultipartRequest(request, path);
System.out.println("multi="+request.getParameter("texts"));
System.out.println("file="+request.getParameter("input-file-preview"));
System.out.println("path="+path);
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/project?user=root&password=aditya");
	String q="insert into publish (id,content) values(?,?)";
	PreparedStatement p=cn.prepareStatement(q);
	p.setString(1, id);
	p.setString(2, request.getParameter("texts"));
	
	p.executeUpdate();
	System.out.println(p);
	}
	catch(Exception e)
	{
		pw.print(e);
		System.out.println(e);
		e.printStackTrace();
		
	}

response.sendRedirect("newsfeed.jsp");
%>
