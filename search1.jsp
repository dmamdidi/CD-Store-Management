<%@ page import="java.sql.*" %>
<%@ include file="Connection1.jsp" %>
<%
String pname="",str,str1,search,str2;
int pid=0;
%>
<% ResultSet rs2;
 search=request.getParameter("search");
 str="select p.pid,p.pname from products p where p.pname='"+search+"' ";
 ResultSet rs=stmt.executeQuery(str);
 %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Milestone
Description: A two-column, fixed-width design for 1024x768 screen resolutions.
Version    : 1.0
Released   : 20100309

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>search</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>

	
	<div id="logo">
	
		<h1>CD STORES</h1>
		
	</div>
		<div id="menu">
			<ul>
				<li><a href="HOME.html" class="first">Home</a></li>
				<li><a href="ADDD1.html">Add</a></li>
				<li><a href="delete.html">Delete</a></li>
				<li><a href="update.html">Update</a></li>
				<li><a href="BILL.html">bill</a></li>
			</ul>
	
		</div>
	<hr />
	<!-- end #logo -->
	<!-- end #header -->
    <!-- end #header-wrapper -->
<div id="page">
<br /><br /><br />

<br /><br /><br /><br /><br /><br />	
<center>
<center>

<table width="531" border="1">
                      <tbody>
                        <tr>
                        <td width="62" height="31"> &nbsp;cid&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td width="65"> &nbsp;&nbsp;cname&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td width="65">pid</td>
						 <td width="65">pname</td>
						 <td width="65">companyname</td>
						 <td width="65">cost</td>
                        <td width="65">avail</td>
						
                      </tr>
                        <%  
					
						
		str2="select c.cid,c.cname,p.pid,p.pname,c1.companyname,c1.cost,c1.avail from producttype c1,category1 c,products p where p.pname='"+search+"' and c.cid=p.cid and p.pid=c1.pid ";
	
		rs2=stmt.executeQuery(str2);
		while(rs2.next())
		{
		%>
		
						<tr>
                          <td><%=rs2.getInt(1)%></td>
                          <td><%=rs2.getString(2)%></td>
						   <td><%=rs2.getInt(3)%></td>
                           <td><%=rs2.getString(4)%></td>
						   <td><%=rs2.getString(5)%></td>
						   <td><%=rs2.getInt(6)%></td>
						   <td><%=rs2.getInt(7)%></td>
                        </tr>
<%
}

 
  %></center>
	<!-- end #content --><!-- end #sidebar -->
</div>
	<!-- end #page -->
	<!-- end #footer -->
</body>
</html>
