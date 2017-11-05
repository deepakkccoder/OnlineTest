<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<div class="portlet box blue">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-edit"></i>Generate Test For Students
		</div>
	</div>
	<div class="portlet-body">
	
		<table class="table table-striped table-hover table-bordered"
			id="sample_editable_1">
			<thead>
				<tr>
					<th>Student ID</th>
					<th>Full Name</th>
					<th>Email</th>
					<th>Generate Test</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${students}" var="student">
					<tr id="user${student.userId}">
						<td>${student.studentId}</td>
						<td>${student.firstName}${student.lastName}</td>
						<td>${student.email}</td>
						
						<td><a href="<c:url value="/coach/studentAssignmentDetail/${student.userId}" />">Generate Test</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

