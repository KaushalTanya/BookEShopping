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
	WELCOME ADMIN ${u}
	<a href="/addresoures">Add Book Details</a>
	<a href="/showbookdetails"> Resources List</a>
	<a href="/seeallordersinadmin">Orders</a>
	
	<a href="/logout">LOGOUT</a>
</body>
</html>
