<!DOCTYPE html>
<html>
<head>
<title>ResourceList</title>
</head>
<body>
<form>
  <label for="books">Category of book:</label>
  <select name="books" id="books">
    <option value="fiction">Fiction</option>
    <option value="sci fi">Sci Fi</option>
    <option value="horror">Horror</option>
    <option value="personality development">Personality Development</option>
    <option value="reference">Reference</option>
    <option value="novels">Novels</option>
    <option value="comic">Comic</option>
    <option value="kids books">Kids Books</option>
  </select>
  
  
  <label for="books">Sorting Order:</label>
  <select name="books" id="books">
    <option value="sort by year">Sort by Year(Newest First)</option>
    <option value="sort by year">Sort by Year(Oldest First)</option>
    <option value="sort by title">Sort by Title(A to Z)</option>
    <option value="sort by title">Sort by Title(Z to A)</option>
    <option value="sort by author">Sort by Author(A to Z)</option>
    <option value="sort by author">Sort by Author(Z to A)</option>
    <option value="sort by category">Sort by Category(A to Z)</option>
    <option value="sort by category">Sort by Category(Z to A)</option> 
  </select>
  <br><br>
  <input type="submit" value="submit">
</form>
</body>
</html>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "bookshopping";
String userId = "root";
String password = "root";

//try {
// Class.forName(driverName);
//} catch (ClassNotFoundException e) {
//e.printStackTrace();
//}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
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
String sql ="SELECT * FROM bookdetails";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

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
<td><a href="/addtocart?bookname=<%=resultSet.getString("bookName") %>">ADD TO CART</a></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
