<%@ page import="java.sql.*" %>
<%@ include file="Connection.jsp" %>
<%  String str,str1;
	ResultSet rs,rs1; %>
		
   		
<html >
<head>
	
</head>

<body onLoad="Shw(1)" bgcolor="#000000" alink="#000000" link="#000000" vlink="#000000"><script type="text/javascript"> 

</script><form name="login" method="post" action="../../../../../Documents and Settings/SUDHEER/Desktop/login.jsp" ">
<table width="800" bordercolor="#000000">
  <tr height="100"><td width="10"></td>
  	<td width="775" height="100" align="center"><img src="../../../../../Documents and Settings/SUDHEER/Desktop/images/logo.JPG" ></td>
  </tr>
  
  <tr > <td></td>  
    <td align="center">
		<table width="725" align="left" cellspacing="5"bordercolor="#333333"border="1">		
		<tr>			
			<td width="120" align="center"><font face="Tahoma" color="#777777"><b>Product Id</b></font></td>
			<td width="120" align="center"><font face="Tahoma" color="#777777"><b>product name</b></font> <font face="Tahoma" color="#777777" size="-1">(yyyy-mm-dd)</font></td>
			<td width="120" align="center"><font face="Tahoma" color="#777777"><b>cost</b></font> <font face="Tahoma" color="#777777" size="-1"><br>(yyyy-mm-dd)</font></td>
			<td width="120" align="center"><font face="Tahoma" color="#777777"><b>companyname</b></font></td>
			<td width="120" align="center"><font face="Tahoma" color="#777777"><b>avail</b></font></td>
		</tr>
		<%   str = "select * from products";
		rs=stmt.executeQuery(str);
		
		while(rs.next())
	 	{
		%>
		<tr>
			<td width="120" align="center"><font face="Tahoma" color="#777777" size="-1"><%=rs.getInt(1)%></font></td>
			<td width="120" align="center"><font face="Tahoma" color="#777777" size="-1"><%=rs.getString(2)%></font></td>
			<td width="120" align="center"><font face="Tahoma" color="#777777" size="-1"><%=rs1.getInt(3)%></font></td>
		
		</tr>
		<%  
   		}
    	stmt.close();
    	con.close();
		%>
		</font>
		</table>
	</td>   
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td width="13">&nbsp;</td>
  </tr>
</table>
</form>
</body>
</html>
