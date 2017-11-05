<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<div class="portlet box blue">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-edit"></i>Student List
		</div>
	</div>
	<div class="portlet-body">
		<div class="table-toolbar">
			<div class="row">
				<div class="col-md-6">
					<div class="btn-group">
						<a href="registerStudent" class="btn green"> Add New <i
							class="fa fa-plus"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
		<table class="table table-striped table-hover table-bordered"
			id="sample_editable_1">
			<thead>
				<tr>
					<th>Student ID</th>
					<th>Student Full Name</th>
					<th>Coach Full Name</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${studentRecords}" var="studentRecord">
					<tr id="user${studentRecord.id}">
						<td>${studentRecord.student.userId}</td>
						<td>${studentRecord.student.firstName} ${studentRecord.student.lastName}</td>
						<td>${studentRecord.coach.firstName} ${studentRecord.coach.lastName}</td>
						<!-- <td><a class="edit" href="javascript:;"> Edit </a></td> -->
						<td><button value="${studentRecord.id}" type="button"
								class="btnDelStudentRecord btn btn-xs btn-default pull-right">Delete</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

 --%>