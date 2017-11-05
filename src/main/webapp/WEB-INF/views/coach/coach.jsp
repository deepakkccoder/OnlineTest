<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/include.jsp"%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<div class="portlet box blue">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa"></i>Student List
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
					<th>Job Search Status</th>
					<th>Generate Test</th>				
					<th>Test History</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${students}" var="student">
					<tr id="${student.userId}"  >
						<td>${student.studentId}</td>
						<td>${student.firstName} ${student.lastName}</td>
						<td>${student.email}</td>
						<td>
							<a data-toggle="modal" data-target="#myModal">
								<c:choose>
									<c:when test="${student.jobSearchStatus eq true}">
										Active
									</c:when>
							    	<c:otherwise>
						      			 Inactive
						        	</c:otherwise>
						 	 	 </c:choose>
							</a>
							<div class="modal fade" id="myModal" role="dialog">
						    <div class="modal-dialog ">
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">Job Search Status</h4>
						        </div>
						         <div class="modal-body">
						         	
						        		<div class="radio-list">
						        
						        			<label for='active' >
						         				<input type="radio"  id="active" value="active" name="jobSearchStatus"> Active
						        			</label>
						        	
						        			<label  for='inactive'>
						        				<input type="radio" id="inactive" value="InActive" name="jobSearchStatus"> InActive
						       				</label>
						       			</div>
						       		</div>
						        <div class="modal-footer">
						         <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
						        <button type="button" class="btn btn-primary" name="saveJobSearchStatusChange" id="saveJobSearchStatusChange" onclick="saveJobSearchStatusChange(${student.userId})">Save changes</button>
						        </div>
						      </div>
						    </div>
						  </div>
						</td>
						
						<td><a href="<c:url value="studentAssignmentDetail/${student.userId}" />">Generate Test</a>			
						<td><a href="<c:url value="studentAssignmentHistory/${student.userId}" />">Test History</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<script src="<c:url value="/metronic/assets/coach/scripts/assignment.js" />" type="text/javascript"></script>


