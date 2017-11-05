<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include.jsp"%>
<div class="content">
	<div class="portlet light">
		<div class="alert alert-warning" style="display: none">
			<strong>Warning!</strong> Coach and Student have already connected!
		</div>
		<div class="alert alert-success" style="display: none">
			<strong>Success!</strong> Coach has been assigned.
		</div>
		<h3>Assign Coach</h3>
		<p class="hint">Enter your personal details below:</p>
		<div class="form-group">
			<label class="control-label">Coach</label> <select
				class="select2_category form-control coachId"
				data-placeholder="Choose a Coach" tabindex="1">
				<c:forEach items="${coaches}" var="coach">
					<option value="${coach.userId}">${coach.firstName} ${coach.lastName}</option>
				</c:forEach>
			</select>
			<form:errors cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label class="control-label">Student</label> <select
				class="select2_category form-control studentId" 
				data-placeholder="Choose a Student" tabindex="1">
				<c:forEach items="${students}" var="student">
					<option value="${student.studentId}">${student.firstName} ${student.lastName}</option>
				</c:forEach>
			</select>
			<form:errors cssClass="text-danger" />
		</div>
		<div class="form-actions">
				<button type="button" class="btn btn-success uppercase pull-right btnAssignCoach">Assign</button>
			</div>
		<br /> <br />
	</div>
</div>
 --%>