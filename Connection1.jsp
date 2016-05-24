
<%-- Used to connect to the database --%>



<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   Connection con=DriverManager.getConnection("jdbc:odbc:stores","cdstores","cdstores");
   Statement stmt=con.createStatement();
%>