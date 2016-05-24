<%@ page import="java.sql.*" %>
<%@ include file="Connection1.jsp" %>

<% int pid;
String str,str1;
%>

<% pid=Integer.parseInt(request.getParameter("pid")); %>
   
<% str="delete from producttype where pid="+pid+" ";
   int res=stmt.executeUpdate(str);
   str1="delete from products where pid="+pid+" ";
   int res1=stmt.executeUpdate(str1);
   if(res>=1 && res1>=1)
   {
%>
         <jsp:forward page="delmore.html"/>

<%
   } 
   else
   { 
%>

         <jsp:forward page="delfail.html"/>

<% 
   }
%>