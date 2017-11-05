<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include.jsp"%>
<div class="hor-menu ">
	<ul class="nav navbar-nav">
		<li><a href="<c:url value="/coach/home" />">Home</a></li>
		<li><a href="<c:url value="/coach/assignments" />">Assignments</a></li>
		<li><a href="<c:url value="/coach/resultlist" />">Test Results</a></li>
		<li><a href="<c:url value="/coach/students" />">Student List</a></li>
		<li><a href="<c:url value="/coach/addquestion" />">Add Question</a></li>
		<li><a href="<c:url value="/coach/viewquestions" />">Question List</a></li>
		<li><a href="<c:url value="/coach/importData" />">Import Data</a></li>
		<li><a href="<c:url value="/help" />">Help</a></li>
		<%-- <li><a href="<c:url value="/coach/grading" />">Grading</a></li> --%>
	</ul>
</div>