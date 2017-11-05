<%@ include file="/WEB-INF/views/include.jsp"%>


<!--  <sec:authorize access="hasRole('ROLE_CAN_SEE_INVENTORY_PAGE')">-->

<table class="table table-bordered table-advance table-hover">
	<thead>
		<tr>
			<th><i class="fa fa-cog"></i> Name</th>
			<th><i class="fa fa-wrench"></i> Value</th>
			<th><i class="fa fa-briefcase"></i> Operation</th>
		</tr>
	</thead>
	<tbody>
				<c:forEach var="inventory" items="${inventories}">
		<tr>
				<td><c:out value="${inventory.name}" /></td>
				<td><c:out value="${inventory.value}" /></td>
				<td>			
				<!--<sec:authorize access="hasRole('ROLE_CAN_DELETE_INVENTORY')">-->
				<a href="inventory/delete?id=${inventory.id}"
					class="btn btn-outline btn-circle btn-sm purple"> 
					<i class="fa fa-delete"> </i> Delete
				</a>
				<!--</sec:authorize>-->
				
				<!--<sec:authorize access="hasRole('ROLE_CAN_UPDATE_INVENTORY')">-->
				<a href="inventory/edit/${inventory.id}"
					class="btn btn-outline btn-circle btn-sm purple"> 
					<i class="fa fa-edit"> </i> Edit
				</a>
				<!--</sec:authorize>-->
				
				</td>

		</tr>
					</c:forEach>
		
	</tbody>
</table>

<!--</sec:authorize>-->



<!--<sec:authorize access="hasRole('ROLE_CAN_ADD_INVENTORY')">-->
	<a href="inventory/add"
		class="btn btn-outline btn-circle btn-sm purple"><i
		class="fa fa-plus"> </i> Add new Inventory </a>
<!--</sec:authorize>-->
