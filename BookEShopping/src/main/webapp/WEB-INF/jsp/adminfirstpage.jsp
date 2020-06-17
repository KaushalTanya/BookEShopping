<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
if("${data}"===""){
	alert("stock available");
}else{
	alert("some books are required to be purchased ${data}");
}

</script>
</head>
<body>

<div  style="background-color:DodgerBlue;">
<span style="display: inline-block;"><h1><i><b>Book-E-Shopping</b></i></h1></span>
<span style="display: inline-block;margin-top:10px;"><img src="https://www.logolynx.com/images/logolynx/51/518a650b8f036ca07a763ee8337d858c.jpeg" style="width:100px;height:100px;border-radius:50px"></span>

<div style="background-color:DodgerBlue;font-size:20px;float:right;margin-top:80px;margin-right:20px">
	<a href="/logout">LOGOUT</a>
</div>
</div>

<div style="float:left;width:50%">
<ul style="list-style-type:none;font-size:20px;">
<li><a href="/addresoures">Add Book Details</a></li>
<li><a href="/showbookdetails"> Resources List</a></li>
<li><a href="/seeallordersinadmin">Orders</a></li>
<li><a href="/seefeedback">See Feedback</a></li>
</ul>
</div>
<div style="float:left;width:50%;">
<h3>
	WELCOME ADMIN ${u}
</h3>
</div>

<div style=" position: fixed;margin-top:500px;background-color:lightblue;text-align:center;width:100%">&copy;Copyright Cognizant 2020</div>

</body>
</html>
