<%@ page import="java.sql.*" %>
<%@ include file="Connection.jsp" %>


<% String pname,cname,companyname;
    int pid,cid,companyid,avail,cost;
   String str,str1;
%>

<% pid=Integer.parseInt(request.getParameter("pid")); %>

<% str="select * from product where pid="+pid+" ";
   ResultSet rs,rs1;
   rs=stmt.executeQuery(str);
   str1="select * from producttype where pid="+pid+" ";
   rs1=stmt.executeQuery(str1);
   if(rs.next() && rs1.next())
   {
        cid=rs.getInt("cname");
	    pid=rs.getInt("pid");
		companyid=rs1.getInt("companyid");
		companyname=rs1.getString("companyname");           
	    pname=rs.getString("pname");
		cost=rs1.getInt("cost");
		avail=rs1.getInt("avail");
		
%>

<html>
<head>
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
	#divBrDetails{
		background-color: White;
		display:block;
		width:350px;
		height:95px;	
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
	
.style1 {
	font-size: 36px;
	font-weight: bold;
}
</style>

</head><body>

<form action="StudentModificationData.jsp" method="post"  name="x" onSubmit="return fn()"">
<br>
<TABLE WIDTH=100% BORDER=1 CELLPADDING=0 CELLSPACING=0 align="center" style="border-collapse:collapse" bordercolor="#E4E4E4">
<tr>
<td width="100%" height="84" bgcolor="#F7F7F7"><center>
  <h2><font color="#7F0000">Student Details</font></h2>
</center></td>
</tr>
</TABLE>


<table id="table2" class="textn" style="border-collapse: collapse;" width="100%" border="1" bordercolor="#e4e4e4" cellpadding="3" cellspacing="1">

<tbody><tr>
	<td align="center" height="268">
    <table id="table2" class="textn" style="border-collapse: collapse;" width="100%" border="1" bordercolor="#ffffff" cellpadding="3" cellspacing="1">
	<tbody><tr id="trOdd">
		<td width="125" height="50"><b>Name of the student</b><span class="txtsuper">&nbsp;*</span></td>		
		<td colspan="3">
			<select name="cname">
			    <option><%=cname%></option>
				<option>academics</option>
				<option>entertainment</option>
                <option>test cds</option>
			</select>&nbsp;&nbsp;<input name="Name" size="70" maxlength="255" type="text" value="<%=name%>">    </td>
	</tr>
    
	<tr id="trOdd">
		<td width="125"><b>Pid</b><span class="txtsuper">&nbsp;*</span></td>
		<td width="335"><input name="pid" size="35" type="text" value="<%=pid%>">&nbsp;</td>
		<td width="141"><b>Productname</b><span class="txtsuper">*</span></td>		
		<td width="306"><textarea cols="40" rows="3" name="pname"><%=pname%></textarea></td>

		<td height="38"><b>companyid</b><span class="txtsuper">&nbsp;*</span></td>		
		<td><input name="companyid" size="35" maxlength="12" type="text" value="<%=companyid%>"></td>
		<td><b>companyname</b><span class="txtsuper">&nbsp;*</span></td>		
		<td><input name="companyname" size="20" maxlength="10" type="text" value="<%=companyname%>"></td>
		<td><b>cost</b><span class="txtsuper">&nbsp;*</span></td>		
		<td><input name="cost" size="20" maxlength="10" type="text" value="<%=cost%>"></td>
		<td><b>avail</b><span class="txtsuper">&nbsp;*</span></td>		
		<td><input name="avail" size="20" maxlength="10" type="text" value="<%=avail%>"></td>
	</tr>
	
</tbody></table>    
</td>
</tr>	
	<tr>
		<td align="center" height="37"><input name="Submit" value="Submit" type="submit"></td>
	</tr>
</tbody></table>

<table style="border-collapse: collapse;" width="100%" align="center" border="0" cellpadding="3" cellspacing="0">
	<tbody><tr class="textn">	
	<td align="center">&nbsp;&nbsp;&nbsp;	</td>
</tr>
</tbody></table>

</form>



	</body></html>
    
    
<% }
   else
   {
    %>
         <jsp:forward page="StudentNo.html"/>
               <% 
   }
%>
