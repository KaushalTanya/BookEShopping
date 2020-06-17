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
			<a href="/logout">LOGOUT</a>

		</div>
	</div>

<font color="green">${message}</font>
<form method="post" action="/order">
<input value="${quan}" name="quan"/>
	<table>
	
		<tr>
			<td><input type="text" value="${userid}" name="userid" readonly="true"/></td>
		</tr>
		<tr>
			<td><input type="text" value="${bookname}" name="bookname"  readonly="true"/></td>
		</tr>
		<tr>
			<td><label>CARD NUMBER</label></td>
			<td><input type="text" placeholder="0000-0000-0000"  pattern="[0-9]{4}-[0-9]{4}-[0-9]{4}" name="cardnumber" required="required"/></td>
		</tr>
		<tr>
			<td><label>CVV</label></td>
			<td><input type="password" pattern="[0-9]{3}" name="cvv" required="required"/> </td>
		</tr>
		<tr>
			<td><label>EXPIRY DATE:</label></td>
			<td><input type="date" name="date" required="required"></td>
		</tr>
	</table>
	<input type="submit"/>
</form>
<div
		style="position: fixed; margin-top: 10px; background-color: lightblue; text-align: center; width: 100%">&copy;Copyright
		Cognizant 2020</div>

</body>
</html>