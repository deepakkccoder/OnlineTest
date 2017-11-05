
<%@ include file="/WEB-INF/views/include.jsp"%>
<div class="content">
	<div class="portlet light">
		<h1>${description}</h1>
		<c:if test="${not empty success}">

			<c:out value="${success}" />
			Do you want to add more? <h1>${question.description}</h1>
			<div class="btn-group" role="group" aria-label="...">
				<a href="../dba/addquestion">
					<button type="button" class="btn btn-default">YES</button>
				</a> <a href="http://localhost:8080/onlinetest/">
					<button type="button" class="btn btn-default">NO</button>
				</a>

			</div>
		</c:if>
		<c:if test="${empty success}">
			<form:form modelAttribute="question">
				<h3>Edit Question</h3>
				<p class="hint">Enter Question and its choices below:</p>


				<form:hidden path="category" value="${question.category}"/>
				<form:hidden path="category" value="${question.subcategory.id}"/>

				<div class="form-group">
					<form:label path="description"
						class="control-label visible-ie8 visible-ie9">Question</form:label>
					<form:input path="description" id="description"
						class="form-control placeholder-no-fix" type="text"
						placeholder="Type the Question" />
					<form:errors path="description" cssClass="text-danger" />

				</div>




				<ol type="A">
					<p class="text-right">Correct Answer</p>
					<c:forEach items="${choices}" var="choice" varStatus="i">

						<div class="form-group">
							<div class="row">
								<div class="col-md-1 ">
									<span class="col-md-2 col-md-offset-5"><li></li></span>
								</div>
								<div class="col-md-10">

									<form:label path="choices[${i.index}].description"
										class="control-label visible-ie8 visible-ie9">Question</form:label>
									<form:input path="choices[${i.index}].description"
										class="form-control placeholder-no-fix"
										placeholder="Type the Choice" />


									<form:errors path="choices[${i.index}].description"
										cssClass="text-danger" />

								</div>
								<div class="col-md-1 ">
									<span class="col-md-2 col-md-offset-1">
									<form:checkbox class="icheck" path="choices[${i.index}].answer" /> </span>
								</div>

							</div>
						</div>

					</c:forEach>
				</ol>
	</div>
	<div class="form-actions">
		<button type="submit" class="btn btn-lg btn-success btn-mini"
			class="btn btn-success uppercase pull-right">Submit</button>
	</div>



	</form:form>
	</c:if>
</div>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<!-- <script>
	$(document)
			.ready(
					function() {

						$('#idCategory')
								.change(
										function(event) {

											var producer = $('#idCategory')
													.val();
											// alert(producer);
											/*  var model = $('#model').val();
											 var price = $('#price').val();
											 var json = { "producer" : producer, "model" : model, "price": price}; */
											$
													.getJSON(
															"../../../dba/subcategories",
															{
																catId : producer
															},
															function(data) {

																$(
																		'#idSubCategory')
																		.empty();

																$
																		.each(
																				data,
																				function(
																						i,
																						value) {

																					$(
																							'#idSubCategory')
																							.append(
																									$(
																											"<option />")
																											.val(
																													value[0].id)
																											.text(
																													value[0].name));

																				});
															});

											//  event.preventDefault();
										});

					});
</script>
 -->