<%@ page import="java.io.*" import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<body>
<%
PrintWriter pw=response.getWriter();
HttpSession hs=request.getSession();
try{
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/project?user=root&password=aditya");
String q="select fname,id from user where id in(select id1 from friends where id2=(?) and status=1 union select id2 from friends where id1=(?) and status=1)";
String id=hs.getAttribute("id").toString();
PreparedStatement p=cn.prepareStatement(q);
p.setString(1, id);
p.setString(2, id);
System.out.println(p);
ResultSet rs=p.executeQuery();
System.out.println(p);

//String st="<select size=10 onchange=\"message(this.value)\">";

String st="<div class=\"chat-sidebar\"><div class=\"sidebar-name\">";



while(rs.next())
{	
	st+="<a href=\"javascript:register_popup('"+rs.getString(2)+"', '"+rs.getString(1)+"');\"><img class=\"chatdp\" width=\"30\" height=\"30\" src=\"..\\images\\"+rs.getString(2)+"\\dp\" /><span>"+rs.getString(1)+"</span>";
//	if(rs.getInt(2)==0)
	//st+="<option value="+rs.getString(1)+">"+rs.getString(1)+"</option>";
	//else
		//st+="<option style=\"color:#009933\">"+rs.getString(1)+"</option>";
}
cn.close();
//st+="</select>";
st+="</a></div></div>";
pw.print(st);
}
catch(Exception e)
{
pw.print(e);
e.printStackTrace();

}
%>
</body>
</html>