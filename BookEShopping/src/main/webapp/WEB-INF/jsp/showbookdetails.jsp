<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<title>Resoure List</title>
</head>
<body>
<h2>Resoure List</h2>
<%
try {

String connectionURL = "jdbc:mysql://localhost:3306/bookshopping";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root", "root");
statement = connection.createStatement();
String QueryString = "SELECT * from bookdetails";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">
<TR>
<TH>Book Name</TH>
<TH>Book Code</TH>
<TH>Book Description</TH>
<TH>Author</TH>
<TH>Category</TH>
<TH>Type</TH>
<TH>Option</TH>
<TH>Rate</TH>
<TH>Discount</TH>

</TR>
<%
while (rs.next()) {
%>
<TR>
<TD><%=rs.getString(1)%></TD>
<TD><a href="/showbook?bookcode=<%=rs.getString(2)%>"><%=rs.getString(2)%></a></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getString(6)%></TD>
<TD><%=rs.getString(7)%></TD>
<TD><%=rs.getString(8)%></TD>
<TD><%=rs.getInt(9)%></TD>

</TR>
<% } %>
<%

rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</TABLE>
</body>
</html>