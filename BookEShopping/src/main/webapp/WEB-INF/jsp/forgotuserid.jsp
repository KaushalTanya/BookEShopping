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
			style="background-color: DodgerBlue; font-size: 20px; float: right; margin-top: 80px;margin-right:50px;">
			<a href="/login">LOGIN</a>
		</div>
	</div>

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
	<div style=" position: fixed;margin-top:10px;background-color:lightblue;text-align:center;width:100%">&copy;Copyright Cognizant 2020</div>
	
</body>
</html>