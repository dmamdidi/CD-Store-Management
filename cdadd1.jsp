<%@ page import="java.sql.*" %>
<%@ include file="Connection1.jsp" %>

<% String catid,cname,pname,companyname;
   int cost,count,pid,companyid;
   String str,str2,str3,str4,str5;
   int flag=0;
%>

<%  catid=request.getParameter("cname");
     int temp=Integer.parseInt(catid);
	 if(temp==84)
	  cname="academics";
	 else if(temp==85)
	 cname="entertainment";
	 else
	 cname="testcds";
	pid=Integer.parseInt(request.getParameter("pid"));
	pname=request.getParameter("pname");
	companyid=Integer.parseInt(request.getParameter("companyid"));
	companyname=request.getParameter("companyname");
   	cost=Integer.parseInt(request.getParameter("cost")); 
	count=Integer.parseInt(request.getParameter("count")); 
	
   	
%>


<%
     int rs4,rs5;
     //str3="insert into category(cid,cname) values('"+catid+"','"+cname+"')";
	 //rs3=stmt.executeUpdate(str3);
	 str4="insert into products(pname,cid) values('"+pname+"',"+catid+")";
	 //out.print(str4);
	 rs4=stmt.executeUpdate(str4);
	 ResultSet rs;
	 String str6="select pid from products where pname='"+pname+"' and cid="+catid+" ";
	 rs=stmt.executeQuery(str6);
	 while(rs.next())
	 {
	 pid=rs.getInt(1);
	 }
	 str5="insert into producttype(companyid,companyname,pid,cost,avail) values("+companyid+",'"+companyname+"',"+pid+","+cost+","+count+")";
    //out.print(str5);
	 rs5=stmt.executeUpdate(str5);
	     if(rs4>=1 && rs5>=1)
     { 
%>

         <jsp:forward page="success2.html"/>
               
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
