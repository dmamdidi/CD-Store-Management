<%@ page import="java.sql.*" %>
<%@ include file="Connection1.jsp" %>

<% String name,pub;
  double cid,cost;
   String str;
%>

<% cid=Double.parseDouble(request.getParameter("cid")); %>

<% str="select * from cdadd where cud="+cid+"";
   ResultSet rs;
   rs=stmt.executeQuery(str);
   if(rs.next())
   {
    	name=rs.getString("name");
	    pub=rs.getString("pub");
    	cid=rs.getDouble("cid");
	    cost=rs.getDouble("cost");
%>

<HTML>
<HEAD>
<style type="text/css">
	.textn{
		font-family : Tahoma,Verdana, Geneva, Arial, Helvetica, sans-serif;
		font-size : 13px;
		font-style : normal;
		font-variant : normal;
		color:#000000;
	}
	input{
		border: 1px solid;
		background-color: #ffffff;
		border-color: #13A9FF;
		font-family: verdana;
		font-size: 12px;
		font-weight: normal;
	}
	select{
		border: 1px solid;
		background-color: #ffffff;
		border-color: #13A9FF;
		font-family: verdana;
		font-size: 12px;
		font-weight: normal;
	}
	textarea{
		border: 1px solid;
		background-color: #ffffff;
		border-color: #13A9FF;
		font-family: verdana;
		font-size: 12px;
		font-weight: normal;
	}
	#trOdd{
		background-color:#E4E4E4 ;
	}
	#trEven{
		background-color:#E4E4E4;
	}
	#tdCount{
		background-color:#E4E4E4;
	}
	#divBrDetails{
		background-color: White;
		display:block;
		width:350px;
		height:75px;	
		position:relative;	
		border: 1px solid #13A9FF;		
		margin: 2px 2px 2px 2px;
		padding: 2px 5px 2px 5px;
		font-size: 10px;
		font-family: tahoma,Verdana, Geneva, Arial, Helvetica, sans-serif;
		font-variant: normal;
		font-weight: normal;
		color: black;		
		z-index: 101;
	}
	.txtsuper{
		font-family : Tahoma,Verdana, Geneva, Arial, Helvetica, sans-serif;
		font-size : 13px;
		font-style : normal;
		font-variant : normal;
		color: Red;
		font-weight: bolder;		
	}
	
</style>

<body>
<form action="deletionData.html" method="post">
<!-- Header Starts here -->
<TABLE WIDTH=100% BORDER=1 CELLPADDING=0 CELLSPACING=0 align="center" style="border-collapse:collapse" bordercolor="#E4E4E4">
<tr>
<td width="100%" height="84" bgcolor="#F7F7F7"><center>
  <h2><font color="#7F0000">CD Details</font></h2>
</center></td>
</tr>
</TABLE>
<!-- Header ends here -->
<table border="1" width="100%" id="table2" cellspacing="1" cellpadding="3" class="textn" bordercolor="#E4E4E4" style="border-collapse:collapse">
<tr>
	<td height="419" align="center">
	<table border="1" width="100%" id="table2" cellspacing="1" cellpadding="3" class="textn" bordercolor="#ffffff" style="border-collapse:collapse">
		<tr id="trOdd">
			<td id="tdCount" rowspan="3" width="26" valign="top"><b>1.</b></td>
			<td width="147" height="39"><b>Cid</b><span class="txtsuper">&nbsp;*</span></td>		
    		<td colspan="3">
			
            <input type="text" name="cid" maxlength="255" value=<%=cid%> size="70">			
         	</td>
		</tr>
    	
       </table>
    
    <table border="1" width="100%" id="table2" cellspacing="1" cellpadding="3" class="textn" bordercolor="#ffffff" style="border-collapse:collapse">
    	<tr id="trEven">
			<td width="168" height="38">&nbsp;</td>
	    </tr>
   </table>
    <table border="1" width="100%" id="table2" cellspacing="1" cellpadding="3" class="textn" bordercolor="#ffffff" style="border-collapse:collapse">
		<tr id="trOdd">
			<td id="tdCount" rowspan="5" width="26" valign="top"><b>3.</b></td>
			
		</tr>
    	<tr id="trEven">
			<td width="148"><strong>Name</strong></td>
			<td width="361" colspan="3"><input type="text" name="name" value=<%=name%></td>	
			
		</tr>
		<tr id="trOdd">
			<td height="40"><strong>pub</strong></td>		
			<td><input type="text" name="pub" value=<%=pub%></td>
		
			
		</tr>
		<tr id="trEven">
			<td height="31"><b>cost</b></td>		
			<td><input name="cost" type="text" size="43" maxlength="11" value="<%=cost%>"></td>
			
 		</tr>
		
    </table>    
    </td>
	</tr>	
	<tr>
		<td height="38" align="center"><input type="Submit" name="Submit" value="Delete"></td>
	</tr>
</table>
<!-- Footer starts here -->
<TABLE WIDTH=100% BORDER=0 CELLPADDING=3 CELLSPACING=0 align="center" style="border-collapse:collapse">
	<tr class="textn">	
	  <td align="center">&nbsp;&nbsp;&nbsp;	</td>
	</tr>
</table>

</form>

</body>

<% }
   else
   {
%>

         <jsp:forward page="ADDDI.HTML"/>

<%
   }
%>