<%@ page import="java.sql.*" %>
<%@ include file="Connection1.jsp" %>

<% String name,pub;
   double cid,cost;
   String str2;
   
%>

<%  cid=Double.parseDouble(request.getParameter("cid")); 
	name=request.getParameter("name");
   	cost=Double.parseDouble(request.getParameter("cost")); 
   	pub=request.getParameter("pub");
%>

<% 
   str2="delete from cdadd where cid='"+cid+"'";
   stmt.executeQueryupdate(str2);

    stmt.close();
    con.close();
%>
