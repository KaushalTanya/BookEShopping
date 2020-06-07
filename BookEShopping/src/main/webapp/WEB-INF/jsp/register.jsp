<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	You are registered!!${userId}
	<form:form method="post" modelAttribute="registerclass" action="/welcome">
		<fieldset>
			<form:label path="firstName">First Name</form:label> 
			<form:input type="text"
				placeholder="Enter Your First Name" required="required"
				path="firstName"/>
		</fieldset>
		<fieldset>
			<form:label path="lastName">Last Name</form:label> 
			<form:input type="text" path="lastName"
				placeholder="Enter Your Last Name" required="required"/>
		</fieldset>
		<fieldset>
			<form:label path="dob">Date Of Birth</form:label> 
			<form:input path="dob" type="date" required="required"/>
		</fieldset>
		<fieldset>
			<form:label path="gender">Gender</form:label> 
			<form:select required="required" path="gender">
				<option value="male">Male</option>
				<option value="female">Female</option>
			</form:select>
		</fieldset>
		<fieldset>
			<form:label path="contactNo">Contact Number</form:label> 
			<form:input type="tel" path="contactNo"
				pattern="[7-9]{1}[0-9]{9}"/>
		</fieldset>
		<fieldset>
			<form:label path="email">Email</form:label> 
			<form:input type="email" path="email"/>
		</fieldset>
		<fieldset>
			<form:label path="userCategory">User Category</form:label> 
			<form:select required="required" path="userCategory">
				<option value="customer">Customer</option>
				<option value="admin">Admin</option>
			</form:select>
		</fieldset>
		<fieldset>
			<form:label path="userId">User Id</form:label> 
			<form:input path="userId" type="text" value="${userId}"/>
		</fieldset>
		<fieldset>
			<form:label path="password">Password</form:label> 
			<form:input path="password" type="text"/>
		</fieldset>
		<input type="submit"/>
	</form:form>
</body>
</html>