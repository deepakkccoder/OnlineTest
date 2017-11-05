<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Access Denied</title>
</head>
<body>
	<div class="container">
	    <div class="row">
			<div class="col-md-4 col-md-offset-4">
	    		<div class="panel panel-default">
				  	<div class="panel-heading">
				  		<h1>ACCESS DENIED</h1>
				 	</div>
				  	<div class="panel-body">
	                    <fieldset>
				    	  	<div class="form-group">
				    		    <c:if test="${ not empty errormessage }">
									<h3>${errormessage}</h3>
								</c:if>
				    		</div>
				    	</fieldset>
				    </div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>