<%@ page import="java.sql.*" %>
<%@ include file="Connection1.jsp" %>
<% String cname,companyname,pname;
   int pid,cid,companyid,avail,cost;
   String str,str1;
%>

<% 
   
   pid=Integer.parseInt(request.getParameter("pid"));
   avail=Integer.parseInt(request.getParameter("avail"));
   cost=Integer.parseInt(request.getParameter("cost"));

%>

<% int rs,rs1;
     str1="update producttype set cost="+cost+",avail="+avail+" where pid="+pid+" ";
   rs1=stmt.executeUpdate(str1);
   if(rs1>=1)
   { 
       %>
         <jsp:forward page="updatesuccess.html"/>
               <% 
         
   }
   else
   {
       %>
         <jsp:forward page="StudentMFail.html"/>
               <% 
   }  
   stmt.close();
      con.close();
%>
