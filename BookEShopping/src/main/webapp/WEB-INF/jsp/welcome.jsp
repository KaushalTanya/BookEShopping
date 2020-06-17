<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<div  style="background-color:DodgerBlue;">
<span style="display: inline-block;"><h1><i><b>Book-E-Shopping</b></i></h1></span>
<span style="display: inline-block;margin-top:10px;"><img src="https://www.logolynx.com/images/logolynx/51/518a650b8f036ca07a763ee8337d858c.jpeg" style="width:100px;height:100px;border-radius:50px"></span>


<div style="background-color:DodgerBlue;font-size:20px;float:right;margin-top:80px;margin-right:20px;">
<a href="/login">Login</a>&nbsp&nbsp
<a href="/registeruser">Register as user</a>&nbsp&nbsp
<a href="/registeradmin">Register as admin</a>
</div>
</div>

<div style="margin-top:20px;width:50%;float:left">
<span><img src="http://www.adazing.com/wp-content/uploads/2013/02/4.jpg" alt="Books builds a stareway to your imagination"></span>
</div>
<div style="float:left;width:50%">
	<br><br>
		<form method="POST" action="/login">
		<font color="red">${errorMessage}</font>
		<fieldset>
			
				<fieldset>
					<label>User Id</label> <input type="text" name="userid"
						placeholder="enter your user id" required="required">
				</fieldset>
			
			<br>
			
				<fieldset>
					<label>Password</label> <input type="password" name="pswrd"
						placeholder="enter your password" required="required">
				</fieldset>
			
			<br>
			<input type="submit" value="Login"> 
		</fieldset>	
		</form>
		<br><br>
		
		<br><br>
		<a href="/forgotpassword">FORGOT PASSWORD</a>
		<br><br>
		<a href="/forgotuserid">FORGOT USERID</a>
		
	</div>


<div style=" position: fixed;margin-top:500px;background-color:lightblue;text-align:center;width:100%">&copy;Copyright Cognizant 2020</div>
</body>
</html>