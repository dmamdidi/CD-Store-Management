<%@ page import="java.sql.*" %>
<%@ include file="Connection1.jsp" %>

<% String cname,userid;
   String str,str2;
   int flag=0;
%>

<% 
    cname=request.getParameter("cname"); 
	userid=request.getParameter("userid");
     int rs;
  
     str="insert into category1(cname,userid) values('"+cname+"','"+userid+"')";
     rs=stmt.executeUpdate(str);
     if(rs>=1)
     { 
%>

         <jsp:forward page="success1.html"/>
               
<% 
         
     }
     else
     {
            
%>
         <jsp:forward page="fail.html"/>
               
<% 
     } 
	
    stmt.close();
    con.close();
%>
