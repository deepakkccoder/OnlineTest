<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/include.jsp"%>
<div class="portlet light ">
	<div class="portlet-title">
	 <div class="caption">
                    <span class="caption-subject bold uppercase font-dark">Student Result Detail </span>                                                       
                    
                </div>
                <div class="actions">
			<jsp:useBean id="now" class="java.util.Date" />
			Date Time :
			<fmt:formatDate value="${now}" pattern="dd-MM-yyyy HH:mm:ss a z" />
			<button id="export" class="btn btn-circlebtn-icon-only  btn-default">Export
			</button>
			<a class="btn btn-circle btn-icon-only btn-default fullscreen"
				href="#" data-original-title="" title=""></a>
		</div>             
            </div>
		<div class="portlet-body">
			<div class="table-toolbar">
				<div class="row">
					<div class="col-md-6"></div>
				</div>
			</div>
			<br><br>
			
			<div class="row">
  <div class="col-md-8">
  
  <p>Student ID : ${student.studentId }</p>
  <p>Student Name  : ${student.firstName} ${student.lastName}</p>
  <p>Entry  : ${student.entry}</p>
  <p>Score  : ${score}</p>
  <p>Percent:${percent}%</p>
  </div>

</div>
			<br><br>
			
			<table class="table table-striped table-hover table-bordered"
				id="sample_editable_1">
				<thead>
					<tr>
						<th>No</th>
						<th>Question</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach items="${answers}" var="answer" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td> <a data-toggle="collapse" href="#${status.count}">${answer.value ? "&#x2705;" : "&#10060;"}
								${answer.key.question.description}</a>
							
								<div id="${status.count}" class="collapse">
									<ol type="A">
										<c:forEach items="${answer.key.question.choices}" var="choice">



											<li><c:choose>
													<c:when
														test="${choice.id == answer.key.answer and choice.answer==true}">
														<p class="text-success">${choice.description}</p>
													</c:when>
													<c:when
														test="${choice.id == answer.key.answer and choice.answer==false}">
														<p class="text-danger">${choice.description}</p>
													</c:when>
													<c:when
														test="${choice.id != answer.key.answer and choice.answer==true}">
														<p class="text-success">${choice.description}</p>
													</c:when>
													<c:when
														test="${choice.id != answer.key.answer and choice.answer==false}">
														<p>${choice.description}</p>
													</c:when>
													<c:otherwise>
            
         </c:otherwise>
												</c:choose></li>


										</c:forEach>


									</ol>
								</div>

							</td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script src="<c:url value="/metronic/assets/global/plugins/jquery.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/metronic/assets/global/plugins/jquery-migrate.min.js" />" type="text/javascript"></script>
<%-- <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"/>"></script> --%>
<%-- <script  src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"/>"></script> --%>
<script type="text/javascript" src="<c:url value="https://code.jquery.com/ui/1.12.0-beta.1/jquery-ui.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.1.135/jspdf.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="http://cdn.uriit.ru/jsPDF/libs/adler32cs.js/adler32cs.js"/>"></script>
<script type="text/javascript" src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2014-11-29/FileSaver.min.js"/>"></script>
<%-- <script type="text/javascript" src="<c:url value="libs/Blob.js/BlobBuilder.js"/>"></script> --%>
<script type="text/javascript" src="<c:url value="http://cdn.immex1.com/js/jspdf/plugins/jspdf.plugin.addimage.js"/>"></script>
<script type="text/javascript" src="<c:url value="http://cdn.immex1.com/js/jspdf/plugins/jspdf.plugin.standard_fonts_metrics.js"/>"></script>
<script type="text/javascript" src="<c:url value="http://cdn.immex1.com/js/jspdf/plugins/jspdf.plugin.split_text_to_size.js"/>"></script>
<script type="text/javascript" src="<c:url value="http://cdn.immex1.com/js/jspdf/plugins/jspdf.plugin.from_html.js"/>"></script>
<script type="text/javascript" src="<c:url value="/metronic/assets/admin/pages/scripts/jquery.table2excel.js"/>"></script>