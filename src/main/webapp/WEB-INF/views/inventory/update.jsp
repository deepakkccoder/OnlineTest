	<%@ include file="/WEB-INF/views/include.jsp"%>
	
	<!--<sec:authorize access="hasRole('ROLE_CAN_UPDATE_INVENTORY')">-->
		  
		
		<form:form method="POST" modelAttribute="inventory" >
			
			  
			<div class="form-group">
				<form:label path="id"
					class="control-label visible-ie8 visible-ie9">Id</form:label>
				<form:input path="id" class="form-control placeholder-no-fix"
					type="text" placeholder="Inventory Id" disabled="true" />
				<form:errors path="id" cssClass="text-danger" />
			</div>
			<div class="form-group">
				<form:label path="name"
					class="control-label visible-ie8 visible-ie9">Name</form:label>
				<form:input path="name" class="form-control placeholder-no-fix"
					type="text" placeholder="Inventory Name" />
				<form:errors path="name" cssClass="text-danger" />
			</div>
			<div class="form-group">
				<form:label path="value"
					class="control-label visible-ie8 visible-ie9">Value</form:label>
				<form:input path="value" class="form-control placeholder-no-fix"
					type="text" placeholder="Inventory Value" />
				<form:errors path="value" cssClass="text-danger" />
			</div>
			<div class="form-actions">
				<button type="submit" id="register-submit-btn"
					class="btn btn-success uppercase pull-right">Submit</button>
			</div>
			<br/><br/>
			
			
			
			
		</form:form>
		
		
		
		
	<!--</sec:authorize>-->
	
