<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include.jsp" %>
<div class="container">
    <div class="row">
		<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			  		<c:if test="${ not empty errormessage }">
			    		<h3>${errormessage}</h3>
			  		</c:if>
			 	</div>
			  	<div class="panel-body">
			    	<form action="<c:url value="access"></c:url>" method="post">
                    <fieldset>
			    	  	<div class="form-group">
			    		    <label>Enter Access Code:</label><br/>
							<input type="text" name="access_code"/>
			    		</div>
			    		
			    		<div class="form-group">
			    			<button class="btn btn-lg btn-success btn-mini" type="submit">Submit</button>
			    		</div>
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>