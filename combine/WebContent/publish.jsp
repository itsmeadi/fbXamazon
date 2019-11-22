<%@ page language="java" import="java.io.*" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
PrintWriter pw=response.getWriter();
HttpSession hs=request.getSession();
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/adi?user=root&password=aditya");
	String q="insert into publish (id,post) values(?,?)";
	PreparedStatement p=cn.prepareStatement(q);
	//p.setString(1, hs.getAttribute("id").toString());
	p.setString(1, request.getParameter("post"));
	
	p.setString(2, request.getParameter("post"));
	
	p.executeUpdate();
	System.out.println(p);
	}
	catch(Exception e)
	{
		pw.print(e);
		System.out.println(e);
		e.printStackTrace();
		
	}
%>
