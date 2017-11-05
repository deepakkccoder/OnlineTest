<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
</head>
<body>
	<section>
	<div class="jumbotron">
		<div class="container">
			<h4>Category List</h4>
		</div>
	</div>
	</section>
	<table>
		<tr>
			<c:forEach var="listValue" items="${categories}">
				<td><c:out value="${listValue.Name}" /></td>
				<td><c:out value="${listValue.Description}" /></td>
			</c:forEach>
		</tr>
	</table>
</body>
</html>