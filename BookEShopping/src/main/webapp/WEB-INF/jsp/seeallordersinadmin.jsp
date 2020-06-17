<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
				<a href="/adminhome">Home</a>
			<a href="/logout">LOGOUT</a>
		</div>
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
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr>
<td><b>BOOK NAME</b></td>
<td><b>BOOK PRICE</b></td>
<td><b>QUANTITY</b></td>
<td><b>RENT/BUY</b></td>
<td><b>DELIVERY ADDRESS</b></td>
<td><b>TRACK STATUS</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="select * from  addtocart ";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("userid") %></td>
<td><%=resultSet.getString("bookName") %></td>
<td><%=resultSet.getString("bookprice") %></td>
<td><%=resultSet.getString("quanity") %></td>
<td><%=resultSet.getString("rentbuy") %></td>
<td><%=resultSet.getString("deliveryAddress") %></td>
<td><%=resultSet.getString("trackstatus") %></td>
<td><a href="/updatestatus?status=<%=resultSet.getString("trackstatus") %>,<%=resultSet.getString("bookName") %>,<%=resultSet.getString("userid") %>">UpdateStatus</a></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

<div style=" position: fixed;margin-top:200px;background-color:lightblue;text-align:center;width:100%">&copy;Copyright Cognizant 2020</div>
	

</body>
</html>