<%@ page language="java" import="java.io.*" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%
PrintWriter pw=response.getWriter();
HttpSession hs=request.getSession();
try{
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/project?user=root&password=aditya");
//String q="select fname,id from fb where id in(select id1 from frnd where id2=(?) and stat=1 union select id2 from frnd where id1=(?) and stat=1);";
String q="select * from messages where receiver=(?) AND sender= (?) OR receiver=(?) AND sender= (?) order by date;";
String sender=request.getParameter("id");
String id=hs.getAttribute("id").toString();
PreparedStatement p=cn.prepareStatement(q);
p.setString(1, id);
p.setString(2, sender);
p.setString(3, sender);
p.setString(4, id);
//select * from message where receiver='itsmeadityaagarwal@ymail.com' AND sender='cats@cats.com' OR receiver='cats@cats.com' AND sender='itsmeadityaagarwal@ymail.com';
ResultSet rs=p.executeQuery();


//String st="<select size=10 onchange=\"message(this.value)\">";

String st="<div>";
//System.out.println(p);
while(rs.next())
{	
	
	if(rs.getString(1).equals(id))
	st+="<div class=\"popup-message-me\">"+rs.getString(3)+"</div>";
	else
	st+="<div class=\"popup-message-sender\">"+rs.getString(3)+"</div>";
//	if(rs.getInt(2)==0)
	//st+="<option value="+rs.getString(1)+">"+rs.getString(1)+"</option>";
	//else
		//st+="<option style=\"color:#009933\">"+rs.getString(1)+"</option>";
}

cn.close();
//st+="</select>";
st+="</div>";
pw.print(st);
//System.out.println(st);

}
catch(Exception e)
{
pw.print(e);
}
%>

