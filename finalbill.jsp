<%@ page import="java.sql.*" %>
<%@ include file="Connection1.jsp" %>
<%
int total,billno;
int ref=(Integer)session.getAttribute("MySession");
ResultSet rs,rs1;
String str="select * from  bill where refno="+ref+"";
Statement stmt1=con.createStatement();
 rs1=stmt1.executeQuery(str);
 while(rs1.next())
 {
 billno=rs1.getInt(1);
 total=rs1.getInt(2);
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
<title>Milestone by Free CSS Templates</title>
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
if(rs1.next())
{
%>
<pre>
<tr><td>
<% out.print("billno"       +rs1.getInt(1));%></td>
<td>
<% out.print("total"      +rs1.getInt(3));%></td>
</pre>
<%}

            

%>


</tr></table>

	<!-- end #content --><!-- end #sidebar -->
</div>
	<!-- end #page -->
	<!-- end #footer -->
</body>
</html>
