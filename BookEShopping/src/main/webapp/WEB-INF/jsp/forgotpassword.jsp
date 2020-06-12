<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="/forgotpassword">
		
		<fieldset>
					<label>User Id</label> 
					<input type="text" name="userid" required="required"/>
		</fieldset>
		<fieldset>
			<label>What is your Pet name?</label>
			<input name="petname" required="required"/>
		</fieldset>
		<fieldset>
			<label>Who is your favourite childhood teacher?</label>
			<input name="favteachername" required="required"/>
		</fieldset>
		<fieldset>
			<label>What is your School Name?</label>
			<input name="schoolname" required="required"/>
		</fieldset>	
		<fieldset>
			<label>New Password</label>
			<input name="pass" required="required" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"/>
		</fieldset>	
		<input type="submit"/>
	</form>
</body>
</html>