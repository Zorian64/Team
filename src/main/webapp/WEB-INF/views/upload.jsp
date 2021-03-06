<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
     "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC - Hibernate File Upload to Database Demo</title>
<style type="text/css">
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup,
	tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label,
	legend, table, caption, tbody, tfoot, thead, tr, th, td, input {
	font-size: 100%;
}

body {
	font-family: sans-serif;
	font-size: 12px;
}

.data, .data td {
	border-collapse: collapse;
	width: 550px;
	border: 1px solid #aaa;
	padding: 2px;
}

.data th {
	background-color: #9ECFFF;
	color: black;
	font-weight: bold;
}

h1, h2, h3 {
	font-family: Trebuchet MS, Liberation Sans, DejaVu Sans, sans-serif;
	font-weight: bold;
}

h1 {
	font-size: 170%;
}

h2 {
	font-size: 140%;
}

h3 {
	font-size: 120%;
}
</style>
</head>
<body>
	<div align="center">
		<h1>Watch Manager</h1>
		<h3>Add new watch</h3>
		<form:form method="post"
			action="${pageContext.request.contextPath}/watch/add.html"
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
					<td colspan="3"><input type="submit" value="Add Watch" /></td>
				</tr>
			</table>
		</form:form>
		<p>
			<a href="${pageContext.request.contextPath}/index.html">Home page</a>
		</p>
	</div>
</body>
</html>