<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<font color="green">${msg}</font>

	<form method="post" action="/updatebookdetails">
	<input name="bookcode" value="${bookcode}"/>
	
		<table>
			<tr>
				<td><label>Rate</label> </td>
				<td><input type="text" name="rate" 
				placeholder="Enter the Rate" required="required" pattern="[0-9]+" title="enter number only" value="${rate}"/></td>
			</tr>
			<tr>
				<td><label>Discount</label> </td>
				<td><input type="text" name="dis"
				placeholder="Enter the Discount (if any) " pattern="[0-9]+" title="enter number only" value="${dis}"/></td>
			</tr>
			<tr>
				<td><label>No. Of Copies Available:</label> </td>
				<td><input type="number" name="available"
				placeholder="Enter the no of copiesavailable" pattern="[0-9]+" title="Enter number only" value="${available}"/></td>
			</tr>
			<tr>
				<td><label>No. Of Copies Returned:</label> </td>
				<td><input type="number" name="returned"
				placeholder="Enter the no of copiesreturned" pattern="[0-9]+" title="enter number only" value="${return}"/></td>
			</tr>
		</table>
		<input type="submit"/>
	</form>
		
</body>
</html>