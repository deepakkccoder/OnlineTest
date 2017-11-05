<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include.jsp"%>
<div class="hor-menu ">
	<ul class="nav navbar-nav">
		<li><a href="<c:url value="/admin/register" />">User Register</a></li>
		<li><a href="<c:url value="/admin/users" />">User List</a></li>
		<li><a href="<c:url value="/admin/students" />">Student List</a></li>
		<li><a href="<c:url value="/admin/categories" />">Category</a></li>
		<li><a href="<c:url value="/admin/subCategories" />">Sub Category</a></li>
		<li><a href="<c:url value="/admin/addquestion" />">Add Question</a></li>
		<li><a href="<c:url value="/admin/viewquestions" />">Question List</a></li>
		<li><a href="<c:url value="/admin/importData" />">Import Data</a></li>
		<li><a href="<c:url value="/admin/assignments" />">Assignments</a></li>
		<li><a href="<c:url value="/admin/resultlist" />">Test Results</a></li>
	</ul>
</div>