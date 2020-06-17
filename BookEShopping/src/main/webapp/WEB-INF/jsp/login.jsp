<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
	<br><br>
		<form method="POST" action="/login">
		<font color="red">${errorMessage}</font>
			<div>
				<fieldset>
					<label>User Id</label> <input type="text" name="userid"
						placeholder="enter your user id" required="required">
				</fieldset>
			</div>
			<br>
			<div>
				<fieldset>
					<label>Password</label> <input type="password" name="pswrd"
						placeholder="enter your password" required="required">
				</fieldset>
			</div>
			<br>
			<input type="submit" value="Login"> 
			
		</form>
		<br><br>
		
		<br><br>
		<a href="/forgotpassword">FORGOT PASSWORD</a>
		<br><br>
		<a href="/forgotuserid">FORGOT USERID</a>
		
	</div>
</body>
</html>