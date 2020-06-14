<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
</head>
<body>
<div>
<br><br>
<form method="POST" action="/customerfeedback">
<!--<font color="red">${errorMessage}</font>  -->
<div>
<fieldset>
<label>User Name</label> <input type="text" name="username"
placeholder="enter your name" required="required">
</fieldset>
</div>
<br>
<div>
<fieldset>
<label>Contact No.</label> <input type="tel" name="contactno"
placeholder="enter your number"  pattern="[7-9]{1}[0-9]{9}" required="required">
</fieldset>
</div>
<br>

<div>
<fieldset>
<label>Reviews/Feedback</label> <input type="text" name="feedback"
placeholder="enter feedback" required="required">
</fieldset>
</div>
<input type="submit" value="CustomerFeedback"> 

</form>


</div>
</body>
</html>




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

<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr>
<td><b>userName</b></td>
<td><b>contactNo</b></td>
<td><b>feedback</b></td>

</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM feedback";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("userName") %></td>
<td><%=resultSet.getString("contactNo") %></td>
<td><%=resultSet.getString("feedback") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>