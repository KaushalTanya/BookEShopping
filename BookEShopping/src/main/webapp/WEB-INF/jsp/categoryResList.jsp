<!DOCTYPE html>
<html>
<head>
<title>ResourceList</title>
</head>
<body>
<form method="post" action="/sortResList">
  <label for="books">Sorting Order:</label>
  <select name="books" id="books">
    
    <option value="sort by title">Sort by Title(A to Z)</option>
    <option value="sort by title">Sort by Title(Z to A)</option>
    <option value="sort by author">Sort by Author(A to Z)</option>
    <option value="sort by author">Sort by Author(Z to A)</option>
    <option value="sort by category">Sort by Category(A to Z)</option>
    <option value="sort by category">Sort by Category(Z to A)</option> 
  </select>
  
  <input type="submit" name="sortResList" value="sort resource list"/>
</form>
</body>
</html>

<br>
<br>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String cat = request.getParameter("bookscat");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "bookshopping";
String userId = "root";
String password = "root";


Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

<td><b>bookName</b></td>
<td><b>bookCode</b></td>
<td><b>bookDesc</b></td>
<td><b>author</b></td>
<td><b>bookcategory</b></td>
<td><b>booktype</b></td>
<td><b>buyingoption</b></td>
<td><b>bookrate</b></td>
<td><b>discount</b></td>
<td><b>noofcopiesavailable</b></td>
<td><b>noofcopiessold</b></td>
<td><b>noofcopiesreturned</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();

resultSet = statement.executeQuery("select * from bookdetails where bookcategory ='"+cat+"'");
while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getString("bookName") %></td>
<td><%=resultSet.getString("bookCode") %></td>
<td><%=resultSet.getString("bookDesc") %></td>
<td><%=resultSet.getString("author") %></td>
<td><%=resultSet.getString("bookcategory") %></td>
<td><%=resultSet.getString("booktype") %></td>
<td><%=resultSet.getString("buyingoption") %></td>
<td><%=resultSet.getString("bookrate") %></td>
<td><%=resultSet.getString("discount") %></td>
<td><%=resultSet.getString("noofcopiesavailable") %></td>
<td><%=resultSet.getString("noofcopiessold") %></td>
<td><%=resultSet.getString("noofcopiesreturned") %></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

