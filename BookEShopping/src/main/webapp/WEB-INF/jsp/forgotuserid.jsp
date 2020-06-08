<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form method="post" action="/forgotuserid">

		<fieldset>
			<label>Contact Number</label> <input type="tel" name="number" required="required">
		</fieldset>
		<fieldset>
			<label>What is your Pet name?</label> <input name="petname" required="required"/>
		</fieldset>
		<fieldset>
			<label>Who is your favourite childhood teacher?</label> <input
				name="favteachername" required="required"/>
		</fieldset>
		<fieldset>
			<label>What is your School Name?</label> <input name="schoolname" required="required"/>
		</fieldset>
		<fieldset>
			<label>Email</label> <input type="email" name="email" required="required"/>
		</fieldset>
		<input type="submit" />
		USER ID(will be displayed if data submitted is correct) : 
		${id}
	</form>
</body>
</html>