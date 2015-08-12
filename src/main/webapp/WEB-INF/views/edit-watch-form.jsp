<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Edit watch page</title>
</head>
<body>
	<h1>Edit watch page</h1>
	<p>Here you can edit the existing watch.</p>
	<p>${message}</p>
	<form:form method="post"
		action="${pageContext.request.contextPath}/watch/edit/${watch.id}.html"
		commandName="watch" enctype="multipart/form-data">
		<form:errors path="*" cssClass="error" />
		<table>
			<tr>
				<td><form:label path="brend">Brend</form:label></td>
				<td><form:input path="brend" /></td>
			</tr>
			<tr>
				<td><form:label path="model">Model</form:label></td>
				<td><form:textarea path="model" /></td>
			</tr>
			<tr>
				<td><form:label path="color">Color</form:label></td>
				<td><form:textarea path="color" /></td>
			</tr>
			<tr>
				<td><form:label path="price">Price</form:label></td>
				<td><form:textarea path="price" /></td>
			</tr>
			<tr>
				<td><form:label path="picture">Picture</form:label></td>
				<td><input type="file" name="file" id="watch"></input></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="Edit Watch" /></td>
			</tr>
		</table>
	</form:form>
	<p>
		<a href="${pageContext.request.contextPath}/index.html">Home page</a>
	</p>
</body>
</html>