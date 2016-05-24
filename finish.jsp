<%@ page import="java.sql.*" %>
<%@ include file="Connection1.jsp" %>
<%
int temp=0,items=0,pid=0;
int ref=(Integer)session.getAttribute("MySession");
String str1="select * from  pdetails where refno="+ref+"";

ResultSet rs,rs1,rs2;
rs=stmt.executeQuery(str1);

String str="select SUM(total) as total from  pdetails where refno="+ref+"";
int total=0;
Statement stmt1=con.createStatement();
 rs1=stmt1.executeQuery(str);
 if(rs1.next())
 {
 total=rs1.getInt(1);
 }
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
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>bill</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
	<div id="logo">
		<h1><a href="#">CD STORES</a></h1>
		
	</div>
	<hr />
	<!-- end #logo -->
	<div id="header">
		<div id="menu">
			<ul>
				<li><a href="HOME.html" class="first">Home</a></li>
				<li><a href="ADDD1.html">Add</a></li>
				<li><a href="delete.html">Delete</a></li>
				<li><a href="update.html">Update</a></li>
				<li><a href="update.html">bill</a></li>			
			</ul>
		</div>
		<!-- end #menu -->
		<div id="search">
		
		
		
			
				<fieldset>
				<input type="text" name="s" id="search-text" size="15" />
				<input type="submit" id="search-submit" value="GO" />
				</fieldset>
			
		</div>
		<!-- end #search -->
	</div>
	<!-- end #header -->
	<!-- end #header-wrapper -->
	<div id="page"><a href="">Logout</a><br />
	    <br /><br /><br />
		
		<table>
	
<%
while(rs.next())
{
%>
<tr><td>
<% out.print("refno"       +rs.getInt(2));%></td>
<td>
<% out.print("pid"     +rs.getInt(3));%>
</td>
<td>
<% out.print("items"      +rs.getInt(4));%>
</td>
<%

}
        
%>
</tr></table>
<form action="final.jsp" method="post">
<input type="text" value="<%=total%>" readonly="true" name="tot"  />
<input type="submit" value="total" /> 
</form>
<form action="BILL.html" method="post">
<input type="submit" value="addmore" />
</form>


	<!-- end #content --><!-- end #sidebar -->
	
</div>	<!-- end #page -->
	<!-- end #footer -->
</body>
</html>
