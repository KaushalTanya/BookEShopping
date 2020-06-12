<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<font color="green"> ${msg}</font>
	<form action="/updatetrack" method="post">
		<table>
			<tr>
				<td><input value="${userid}" readonly="true" name="userid"/></td>
				
			</tr>
			<tr>
				
				<td><input value="${bookname}" readonly="true" name="name"/></td>
			</tr>
			<tr>
				<td><label>Status</label></td>
				<td><input type="text" pattern="[A-Za-z]+" value="${status}"  name="status"/></td>
			</tr>
		</table>
		<input type="submit"/>
	</form>
</body>
</html>