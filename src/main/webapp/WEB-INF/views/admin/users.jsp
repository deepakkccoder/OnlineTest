<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<div class="portlet box blue">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-edit"></i>User List
		</div>
	</div>
	<div class="portlet-body">

		<table class="table table-striped table-hover table-bordered"
			id="sample_editable_1">
			<thead>
				<tr>
					<th>Username</th>
					<th>Full Name</th>
					<th>Email</th>
					<th>Role</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<c:if test="${user.authorities[0].authority != null}">
						<tr id="user${user.userId}">
							<td>${user.username}</td>
							<td>${user.firstName} ${user.lastName}</td>
							<td>${user.email}</td>
							<td class="center">${user.authorities[0].authority}</td>
							<td><a href="editUser/${user.userId}"> Edit </a></td>
							<td><button value="${user.userId}" type="button"
									class="btnDelUser btn btn-xs btn-default pull-right">Delete</button></td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

