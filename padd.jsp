<%@ page import="java.sql.*" %>
<%@ include file="Connection1.jsp" %>

<% int ref,items,pid,total=0,cost=0;
	
   String str,str1;
   ref=Integer.parseInt(request.getParameter("ref"));out.print(ref);
 int sessionSet=ref;
session.setAttribute("MySession",sessionSet); 
%>

<% 
   
	 	 items=Integer.parseInt(request.getParameter("items"));
	 pid=Integer.parseInt(request.getParameter("pid")); 
    
%>
<%    ResultSet rs1,rs2,rs4;
     int rs,temp=0,avail=0;
	 str1="select cost from producttype where pid="+pid+" ";
	 rs1=stmt.executeQuery(str1);
	 if(rs1.next())
	 {
	 cost=rs1.getInt("cost");
	 }
	 total=(items)*(cost);
     str="insert into pdetails(refno,pid,items,total) values("+ref+","+pid+","+items+","+total+")";	 
     rs=stmt.executeUpdate(str);
	 %>
	 
	 <%

String str3="select avail from producttype where pid="+pid+" ";
rs2=stmt.executeQuery(str3);
if(rs2.next())
{
avail=rs2.getInt(1);
}
temp=avail-items;
if(temp<0)
{
%>
 <jsp:forward page="item.html"/>
 <%
 }
 else
 {
 str3="Update producttype set avail="+temp+" where pid="+pid+" ";out.print(str3);
int rs3=stmt.executeUpdate(str3);


}
%>
<%
     if(rs>=1)
     { 
%>

         <jsp:forward page="readd.html"/>
               
<%  
   	
         
     }
     else
     {
            
%>
         <jsp:forward page="Fail.html"/>
               
<% 
}
     
 
    stmt.close();
    con.close();
%>
