
<!DOCTYPE html>
<html>
<head>
<title>ResourceList</title>
</head>
<body>

<div  style="background-color:DodgerBlue;">
<span style="display: inline-block;"><h1><i><b>Book-E-Shopping</b></i></h1></span>
<span style="display: inline-block;margin-top:10px;"><img src="https://www.logolynx.com/images/logolynx/51/518a650b8f036ca07a763ee8337d858c.jpeg" style="width:100px;height:100px;border-radius:50px"></span>

<div style="background-color:DodgerBlue;font-size:20px;float:right;margin-top:80px;margin-right:20px">
	<a href="/logout">LOGOUT</a>
	
</div>
</div>



<br>
<form method="post" action="/categoryResList">
  <label for="books">Category of book:</label>
  <select name="bookscat" id="bookscat">
    <option value="fiction">Fiction</option>
    <option value="sci fi">Sci Fi</option>
    <option value="horror">Horror</option>
    <option value="personality development">Personality Development</option>
    <option value="reference">Reference</option>
    <option value="novels">Novels</option>
    <option value="comic">Comic</option>
    <option value="kids books">Kids Books</option>
    <option value="Etc">Other</option>
  </select>
  
  <input type="submit" name="categoryResList" value=" category resource list"/>
</form>

<br>
<a href="/searchbookform">Basic Search</a><br>
<a href="/advancedSearchBook">Advanced Search</a>



<br>



<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
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
<h2 align="center"><font><strong>BOOK DETAILS</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
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
String sql ="SELECT * FROM bookdetails where archieve = 'no' ";

resultSet = statement.executeQuery(sql);
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
<td><a href="/addtocart?booknameandid=<%=resultSet.getString("bookName") %>,${userid}">ADD TO CART</a></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

<div style=" position: fixed;margin-top:10px;background-color:lightblue;text-align:center;width:100%">&copy;Copyright Cognizant 2020</div>

</body>
</html>
