

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<div class="portlet box blue">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-edit"></i>Question Bank
		</div>
	</div>
	<div class="portlet-body">

		<table class="table table-striped table-hover table-bordered"
			id="sample_editable_1">
			<thead>
				<tr>
					<th>Question Id</th>
					<th>Category</th>
						<th>Sub Category</th>
					<th>Question</th>
					<th>Choices</th>
					<!-- 	<th>Category</th>-->
					<!-- <th>Edit</th> -->
					<!-- <th>Delete</th> -->
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${questions}" var="question">
					<c:if test="${question!= null}">
						<tr id="${question.id}">
							<td>${question.id}</td>
							<td>${question.subcategory.category.name}</td>
							<td>${question.subcategory.name}</td>
							<td>${question.description}</td>
							<td><ol type="A">
									<c:forEach items="${question.choices}" var="choice"
										varStatus="i">
										<li><c:choose>
												<c:when test="${choice.answer== true}">
													<p class="text-success">${choice.description}</p>
													<br />
												</c:when>
												<c:otherwise>
													<p>${choice.description}</p>
													<br />
												</c:otherwise>
											</c:choose></li>
									</c:forEach>
								</ol>
								</td>
								<td><a href="<c:url value='/dba/editquestion/${question.id}' />">Edit</a></td>
						 
								
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>


