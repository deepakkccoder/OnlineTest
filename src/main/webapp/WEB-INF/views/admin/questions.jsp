<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/include.jsp"%>
<%@ page session="false"%>
<div class="portlet box blue">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-edit"></i>Question List
		</div>
	</div>
	<div class="portlet-body">
		<div class="table-toolbar">
			<div class="row">
				<div class="col-md-6">
				</div>
			</div>
		</div>
		<table class="table table-striped table-hover table-bordered"
			id="sample_editable_1">
			<thead>
				<tr>
					<th>ID</th>
					<th>Category</th>
					<th>Description</th>
					<th>Choices</th>
		
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${questions}" var="question">
					<tr>
						<td>${question.id}</td>
						<td>${question.subcategory.name}</td>
						<td>${question.subcategory.name}</td>
						
						   <c:forEach items="${question.choices}" var="choice">
						  
						  
						         
						         <ul>
                                 <li>"${choice.description}"</li>
                                 </ul>
						       
					
	                        </c:forEach>
	                          </td>
						<!-- <td><a class="edit" href="javascript:;"> Edit </a></td> -->
						<td><button value="${question.id}" type="button"
								class="btnDelUser btn btn-xs btn-default pull-right">Delete</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

