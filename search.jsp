<%@ page import="java.sql.*" %>
<%@ include file="Connection1.jsp" %>
<%
String pname="",str,str1,search;
int pid=0;
%>
<% 
 search=request.getParameter("search");
 str="select p.pid,p.pname from products p where p.pname='"+search+"' ";
 ResultSet rs=stmt.executeQuery(str);
 if(rs.next())
 {
 pid=rs.getInt(1);
 pname=rs.getString(2);
 }
 out.print(pid);
 out.print(pname);
%>
