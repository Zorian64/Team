<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>Document Manager - viralpatel.net</title>
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
	width: 800px;
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


	<h3>Watch List</h3>
	<c:if test="${!empty watches}">
		<table class="data">
			<tr>
				<th width="2%">Id</th>
				<th width="10%">Brend</th>
				<th width="10%">Model</th>
				<th width="7%">Color</th>
				<th width="5%">Price</th>
				<th width="14%">Photo</th>
				<th width="4%"></th>

			</tr>
			<c:forEach items="${watches}" var="watch">
				<tr>
					<td width="2%">${watch.id}</td>
					<td width="10%">${watch.brend}</td>
					<td width="10%">${watch.model}</td>
					<td width="7%">${watch.color}</td>
					<td width="5%">${watch.price}</td>
					<td width="14%"><c:out value="${watch.fileName}" /></td>

					<td width="4%"><a
						href="${pageContext.request.contextPath}/watch/download/${watch.id}.html"><img
							src="${pageContext.request.contextPath}/img/display-icon.gif"
							border="0" title="Display this watch" /></a> <a
						href="${pageContext.request.contextPath}/watch/delete/${watch.id}.html"
						onclick="return confirm('Are you sure you want to delete this watch?')"><img
							src="${pageContext.request.contextPath}/img/delete_icon.gif"
							border="0" title="Delete this watch" /></a><a
						href="${pageContext.request.contextPath}/watch/edit/${watch.id}.html"><img
							src="${pageContext.request.contextPath}/img/edit-icon.gif"
							border="0" title="Edit this watch" /></a></td>

				</tr>
			</c:forEach>
		</table>
	</c:if>

	<p>
		<a href="${pageContext.request.contextPath}/index.html">Home page</a>
	</p>

</body>
</html>