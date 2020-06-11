<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Welcome ${n}
	<h1>IF YOU ARE TAKING BOOK ON RENT THEN DUE DATE FOR RETURN IS 15 DAYS FROM NOW</h1>
	<form:form method="post" action="/addtocart" modelAttribute="addtocart">
		<table>
		<tr>
			<td><form:hidden value="${userid}" path="userid"/></td>
		</tr>
			<tr>
				<td><form:label path="bookname">BOOK NAME:</form:label></td>
				<td><form:input type="text" value="${n}" path="bookname"/></td>
			</tr>
			<tr>
				<td><form:label path="bookprice">BOOK PRICE:</form:label></td>
				<td><form:input path="bookprice" type="text" value="${p}"/></td>
			</tr>
			<tr>
				<td><form:label path="quanity">QUANTITY:</form:label></td>
				<td><form:input path="quanity" type="number" min="1" max="${m}" value='1'/></td>
			</tr>
			<tr>
				<td><form:label path="rentbuy">RENT/BUY</form:label></td>
				<td><form:select path="rentbuy">
					<option>RENT</option>
					<option>BUY</option>
				</form:select></td>
			</tr>
			<tr>
				<td><form:label path="deliveryAddress">DELIVERY ADDRESS:</form:label></td>
				<td><form:textarea path="deliveryAddress"></form:textarea></td>
			</tr>
		</table>
		<input type="submit" value="PROCEED TO BUY"/>
	</form:form>
</body>
</html>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String bnid=request.getParameter("booknameandid");
String id=(bnid.split(","))[1];
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
String sql ="select * from  addtocart where userid  ="+id;

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("bookName") %></td>
<td><%=resultSet.getString("bookprice") %></td>
<td><%=resultSet.getString("quanity") %></td>
<td><%=resultSet.getString("rentbuy") %></td>
<td><%=resultSet.getString("deliveryAddress") %></td>
<td><%=resultSet.getString("trackstatus") %></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
