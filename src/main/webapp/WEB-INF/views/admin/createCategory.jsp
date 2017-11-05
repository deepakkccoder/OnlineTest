<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include.jsp"%>
<div class="content">
	<div class="portlet light">
		<c:if test="${not empty success}">
		<div class="alert alert-success" >
			<strong>Success!</strong> Successfully added new Category!
		</div>
		</c:if>
		<!-- BEGIN REGISTRATION FORM -->
		<form:form method="POST" class="register-form"
			action="createCategory" modelAttribute="Category">
			<h3>Create new Category</h3>
			<p class="hint">Enter information below:</p>
			<div class="form-group">
				<form:label path="name"
					class="control-label visible-ie8 visible-ie9">Category Name</form:label>
				<form:input path="name" class="form-control placeholder-no-fix"
					type="text" placeholder="Category Name" name="name" />
				<form:errors path="name" cssClass="text-danger" />
			</div>
			<form:hidden path="enabled" value="TRUE" />
			<div class="form-actions">
				<button type="submit" id="register-submit-btn"
					class="btn btn-success uppercase pull-right">Submit</button>
			</div>
			<br />
			<br />
		</form:form>
	</div>
</div>
