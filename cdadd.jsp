<%@ page import="java.sql.*" %>
<%@ include file="Connection1.jsp" %>

<% String companyid,pid,pname,companyname,cid;
	
   String str,str2;
   int flag=0;
%>

<% 
    cid=request.getParameter("cname"); 
    int temp=Integer.parseInt(cid);
	
    pid=request.getParameter("pid");
	pname=request.getParameter("pname");
	companyid=request.getParameter("companyid");
	companyname=request.getParameter("companyname");
	if(temp==1)
	name="academics";
	else if(temp==2)
	name="entertainment";
	else
	name="testcds";
	
%>
<% ResultSet rs1;
   str2="select pid from cdadd1";
   rs1=stmt.executeQuery(str2);
   while(rs1.next())
   {
    	if(pid.equals((rs1.getString(1))))
   		{
     		flag=1;    
    	}
   }
   if(flag==1)
   {
%>

         <jsp:forward page="exist.html"/>

<% 
   }    
   else
   {
     
     int rs;
     str="insert into cdadd1(cid,pid,pname,companyid,companyname,name) values('"+cid+"','"+pid+"','"+pname+"','"+companyid+"','"+companyname+"','"name"')";
     rs=stmt.executeUpdate(str);
     if(rs>=1)
     { 
%>

         <jsp:forward page="Succc.html"/>
               
<%  
   	
         
     }
     else
     {
            
%>
         <jsp:forward page="Fail.html"/>
               
<% 
     } 
	 }
    stmt.close();
    con.close();
%>
