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
		<form method="POST" action="/login">
		<font color="red">${errorMessage}</font>
			<div>
				<fieldset>
					<label>User Id</label> <input type="text" name="userid"
						placeholder="enter your user id" >
				</fieldset>
			</div>
			<div>
				<fieldset>
					<label>Password</label> <input type="password" name="pswrd"
						placeholder="enter your password">
				</fieldset>
			</div>
			<input type="submit" placeholder="Login"> Click here to
			
		</form>
		Register to create your account: <a href="/registeruser">Register</a>
		<a href="/forgotpassword">FORGOT PASSWORD</a>
		
	</div>
</body>
</html>