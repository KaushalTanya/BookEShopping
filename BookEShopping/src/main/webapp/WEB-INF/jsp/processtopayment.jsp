<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<font color="green">${message}</font>
<form method="post" action="/order">
	<table>
		<tr>
			<td><input type="text" value="${bookname}" name="bookname"/></td>
		</tr>
		<tr>
			<td><label>CARD NUMBER</label></td>
			<td><input type="text" placeholder="0000-0000-0000"  pattern="[0-9]{4}-[0-9]{4}-[0-9]{4}" name="cardnumber" required="required"/></td>
		</tr>
		<tr>
			<td><label>CVV</label></td>
			<td><input type="password" pattern="[0-9]{4}" name="cvv" required="required"/> </td>
		</tr>
		<tr>
			<td><label>EXPIRY DATE:</label></td>
			<td><input type="date" name="date" required="required"></td>
		</tr>
	</table>
	<input type="submit"/>
</form>
</body>
</html>