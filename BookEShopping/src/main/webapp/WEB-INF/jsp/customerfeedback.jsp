<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
</head>
<body>
<div style="background-color: DodgerBlue;">
		<span style="display: inline-block;"><h1>
				<i><b>Book-E-Shopping</b></i>
			</h1></span> <span style="display: inline-block; margin-top: 10px;"><img
			src="https://www.logolynx.com/images/logolynx/51/518a650b8f036ca07a763ee8337d858c.jpeg"
			style="width: 100px; height: 100px; border-radius: 50px"></span>

		<div
			style="background-color: DodgerBlue; font-size: 20px; float: right; margin-top: 80px; margin-right: 20px">
			<a href="/logout">LOGOUT</a>

		</div>
	</div>

<div>
<br><br>
<form method="POST" action="/customerfeedback">
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
<div
		style="position: fixed; margin-top: 10px; background-color: lightblue; text-align: center; width: 100%">&copy;Copyright
		Cognizant 2020</div>

</body>
</html>
