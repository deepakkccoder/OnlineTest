<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include.jsp"%>
<div class="content">
	<div class="portlet light">
		<c:if test="${msgType == 'Error'}">		
		</c:if>
		<c:if test="${msgType == 'Succes'}">
		<div class="alert alert-success" >
			<strong>Success!</strong> Successfully added new user!
		</div>
		</c:if>
		<!-- BEGIN REGISTRATION FORM -->
		<form:form method="POST" class="register-form" action="register"
			>
			<h3>Student Feedback</h3>
			<p class="hint">Enter your Comment below:</p>
			<div class="form-group">
				<form:label path="comment"
					class="control-label visible-ie8 visible-ie9">your comment</form:label>
				<form:textarea path="comment" class="form-control placeholder-no-fix"
					type="text" placeholder="your comment " name="comment" />
				<form:errors path="firstName" cssClass="text-danger" />
			</div>
			
			<form:hidden path="enabled" value="TRUE" />
			<div class="form-actions">
				<button type="submit" id="register-submit-btn"
					class="btn btn-success uppercase pull-right">Submit</button>
			</div>
			<br/><br/>
		</form:form>
	</div>
</div>
