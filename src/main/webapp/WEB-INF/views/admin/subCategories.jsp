<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<div class="portlet box blue">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-edit"></i>Sub Category List
		</div>
	</div>
	<div class="portlet-body">
		<div class="table-toolbar">
			<div class="row">
				<div class="col-md-6">
					<div class="btn-group">
						<a href="createSubCategory" class="btn green"> Add New <i
							class="fa fa-plus"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
		<table class="table table-striped table-hover table-bordered"
			id="sample_editable_1">
			<thead>
				<tr>
					<th>Sub Category</th>
					<th>Category</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${subCategories}" var="subCategory">
						<tr id="subCategory${subCategory.id}">
							<td>${subCategory.name}</td>
							<td>${subCategory.category.name}</td>
							<td>
								<button value="${subCategory.id}" type="button"
									class="btnDelSubCat btn btn-xs btn-default pull-right">Delete</button>
							</td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

