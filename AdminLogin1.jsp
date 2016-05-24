<%@ page import="java.sql.*" %>
<%@ include file="Connection1.jsp" %>


<% String str,userid,password;
   ResultSet rs;
   
   userid=request.getParameter("userid");
   password=request.getParameter("password");
 
   str="select password from login where userid='"+userid+"'";
   rs=stmt.executeQuery(str);
   if(rs.next())
   { 
    if(password.equals(rs.getString("password")))
    {
	String str1="update category1 set userid='"+userid+"' where (cid="+84+" or cid="+85+" or cid="+86+")";
	int rs2=stmt.executeUpdate(str1);
%>
    <jsp:forward page="HOME.html" />
<%
    }
    else
    {
     %>
         <jsp:forward page="invalidpassword.html"/>
<% 
    }
   }
   else
   {
    %>
         <jsp:forward page="invalidusername.html"/>
<% 
   }
   con.close();
%>