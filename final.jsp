<%@ page import="java.sql.*" %>
<%@ include file="Connection1.jsp" %>

<% int billno=0,ref,totalcost,cuid=0;
   String str1,str2,str3;
%>
<%ResultSet rs4,rs1,rs2;
ref=(Integer)session.getAttribute("MySession");
totalcost=Integer.parseInt(request.getParameter("tot"));
String str="select cuid from pdetails where refno="+ref+" ";
rs4=stmt.executeQuery(str);
if(rs4.next())
{
cuid=rs4.getInt(1);
}
str1="insert into bill(ref,totalcost,cuid) values ("+ref+","+totalcost+","+cuid+")";
int rs=stmt.executeUpdate(str1); ;
str2="select * from bill where ref="+ref+" ";
rs1=stmt.executeQuery(str2);
if(rs1.next())
{
billno=rs1.getInt(1);
totalcost=rs1.getInt(3);
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
<head><title>success2</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Milestone by Free CSS Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
	<div id="logo">
		<h1>CD STORES</h1>
		
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
<form action="thanku.html" method="post">
billno<input type="text" value="<%=billno%>" readonly="true" name="billno"  /><br />
total
<input type="text" value="<%=totalcost%>" readonly="true" name="total"  /><br />
<input type="submit" value="bill" name="submit" />
</form>
</center>

	<!-- end #content --><!-- end #sidebar -->
</div>
	<!-- end #page -->
	<!-- end #footer -->
</body>
</html>
