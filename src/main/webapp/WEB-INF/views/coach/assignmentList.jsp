<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Testing Report List</title>
</head>
<body>
	<table>
		<tr>
			<c:forEach var="assignment" items="${assignmentList}">
				<td><c:out value="${assignment.id}" /></td>
				<td><c:out value="${assignment.start_date}" /></td>
				<td><c:out value="${assignment.end_date}" /></td>
				<td><c:out value="${assignment.finished}" /></td>
				<td><c:out value="details" /></td>
			</c:forEach>
		</tr>
	</table>
</body>
</html>